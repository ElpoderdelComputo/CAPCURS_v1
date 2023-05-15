from django.http import JsonResponse, HttpResponseBadRequest
from capcursapp.forms import CapcursForm, ImpareguForm, CapcursFormEditar
from capcursapp.models import Academic, Coordinaciones, Capcurs, Catacurs, Imparegu, Imparegubda
from django.shortcuts import render, redirect, get_object_or_404
from django.contrib import messages
import json
from django.views.decorators.csrf import ensure_csrf_cookie
from django.views.generic import ListView, View
from SINSCRIP.utils import render_to_pdf
from django.http import HttpResponse
from io import BytesIO
import requests
from reportlab.pdfgen import canvas
import smtplib
from email.mime.multipart import MIMEMultipart
from email.mime.text import MIMEText
from email.mime.application import MIMEApplication


def inicioSesionView(request):
    return render(request, 'iniciosesion.html')

def verificar_credenciales(request):
    if request.method == 'POST':
        username = request.POST.get('username')
        password = request.POST.get('password')
        try:
            # Verificar si el usuario existe en la tabla coordinaciones
            usuario = Coordinaciones.objects.get(username=username, password=password)
            # Guardar el objeto del usuario en la sesión
            request.session['usuario_id'] = usuario.id
            return redirect('mostrar_cursos')
        except Coordinaciones.DoesNotExist as e:
            messages.success(request, 'Usuario o contraseña incorrectos.')
            return render(request, 'iniciosesion.html')
    else:
        return render(request, 'iniciosesion.html')

def mostrar_cursos(request):
    usuario_id = request.session.get('usuario_id')
    if not usuario_id:
        return redirect('inicio_sesion')
    try:
        usuario = Coordinaciones.objects.get(id=usuario_id)
        miscursospersonal = Capcurs.objects.filter(cve_program=usuario.cve_program)
    except Coordinaciones.DoesNotExist:
        messages.error(request, 'El usuario no existe.')
        return redirect('inicio_sesion')
    return render(request, 'mostrarcursos.html', {'miscursospersonal': miscursospersonal, 'usuario': usuario})


def generar_capcurs(request, cve_curso, periodo, tiene_colab, tiene_practicas, cve_academic, lunes_ini, lunes_fin,
                     martes_ini, martes_fin, miercoles_ini, miercoles_fin, jueves_ini, jueves_fin, viernes_ini, viernes_fin, aula):
    # Acceder al objeto "loscursos" de la variable "cursos_unicos"
    cursos_unicos = agregar_curso(request)
    cursos = cursos_unicos.get(cve_curso, [])

    if not cursos:
        return JsonResponse({'status': 'error', 'message': 'No se encontró un curso con el cve_curso especificado.'})

    # Obtener las propiedades del curso
    curso = cursos[0]
    cve_program = curso.cve_program
    nom_curso = curso.nom_curso
    creditos = curso.credima
    agno = curso.agno

    try:
        academic = Academic.objects.get(id=cve_academic)
    except Academic.DoesNotExist:
        return JsonResponse({'status': 'error', 'message': 'No se encontró un Academic con el ID especificado.'})

    nom_academic = academic.nombres
    apellidos = academic.apellidos

    capcurs = Capcurs(cve_curso=cve_curso, periodo=periodo, agno=agno, tiene_colab=tiene_colab,
                      tiene_practicas=tiene_practicas, cve_program=cve_program, nom_curso=nom_curso,
                      cve_academic=academic, nom_academic=nom_academic, apellidos=apellidos, creditos=creditos,
                      lunes_ini=lunes_ini, lunes_fin=lunes_fin, martes_ini=martes_ini, martes_fin=martes_fin,
                      miercoles_ini=miercoles_ini, miercoles_fin=miercoles_fin, jueves_ini=jueves_ini,
                      jueves_fin=jueves_fin, viernes_ini=viernes_ini, viernes_fin=viernes_fin, aula=aula)
    capcurs.save()
    # Devolver una respuesta de éxito
    return JsonResponse({'status': 'success'})


def crear_capcurs(request):
    if request.method == 'POST':
        form_capcurs = CapcursForm(request.POST)
        form_imparegu = ImpareguForm(request.POST)

        if form_capcurs.is_valid() and form_imparegu.is_valid():
            #print('Si es valido')
            # Obtener datos del formulario Capcurs
            cve_curso = request.POST.get('cve_curso', None)
            cve_academic = request.POST.get('cve_academic', None)

            catacurs = Catacurs.objects.filter(cve_curso=cve_curso).first()
            academic = Academic.objects.filter(cve_academic=cve_academic).first()
            imparegubda = Imparegubda.objects.filter(cve_academic=cve_academic).first()
            if not catacurs:
                return JsonResponse(
                    {'status': 'error', 'message': 'No se encontró un curso con el cve_curso especificado.'})
            if not academic:
                return JsonResponse({'status': 'error', 'message': 'No se encontró un Academic con el ID especificado.'})

            # Crear registro Capcurs curso nuevo
            capcurs = form_capcurs.save(commit=False)
            capcurs.nombre = catacurs.nombre
            capcurs.cve_program = catacurs.cve_program
            capcurs.creditos = catacurs.credima
            capcurs.periodo = 'Primavera'  # por defecto
            capcurs.agno = 2023
            capcurs.nom_academic = academic.nombres
            capcurs.apellidos = academic.apellidos
            capcurs.participacion = 'Titular'
            capcurs.save()
            #print('Se guardo segun')

            # Crear registros Imparegu de Tilular
            imparegu = Imparegu()
            imparegu.cve_curso = cve_curso
            imparegu.cve_academic = cve_academic
            imparegu.agno = 2023
            #El resto de información se obtien de imparegubda existente
            imparegu.num_emplea = imparegubda.num_emplea
            imparegu.periodo = 'Primavera'
            imparegu.registro = imparegubda.registro
            imparegu.per_vi_cur = imparegubda.per_vi_cur
            imparegu.ano_vi_cur = imparegubda.ano_vi_cur
            imparegu.participa = 'Titular'
            imparegu.dis_cre = imparegubda.dis_cre
            imparegu.save()
            messages.success(request, '¡Curso Registrado exitosamente!')
        else:
            return render(request, 'mostrarcursos.html', {'form_capcurs': form_capcurs,
                                                          'form_imparegu': form_imparegu, })
    else:
        form_capcurs = CapcursForm()
        form_imparegu = ImpareguForm()
    return JsonResponse({'success': True})



#envia informacion del objeto usuario, loscursos y academicos
def agregar_curso(request):
    global loscursos, academicos
    usuario_id = request.session.get('usuario_id')
    usuario = Coordinaciones.objects.get(id=usuario_id)
    try:
        # Obtener todos los registros de la tabla Catacurs que tienen la misma cve_program que el usuario
        todos_los_cursos = Catacurs.objects.filter(cve_program=usuario.cve_program)
        loscursos = todos_los_cursos.order_by('cve_curso')
        # Crear un diccionario para almacenar los cursos únicos
        academicos1 = Academic.objects.all()
        academicos = academicos1.order_by('cve_academic')
    except Academic.DoesNotExist:
        messages.error(request, 'Lo siento, elemento no encntrado en la base de datos')
    return render(request, 'agrega_curso.html', {'loscursos': loscursos, 'academicos': academicos, 'usuario': usuario})


# vista que busca al curso seleccionado y devuelve el objeto
def buscar_elemento(request):
    elemento_seleccionado = request.GET.get('elemento')
    tipo_elemento = request.GET.get('tipo_elemento')
    try:
        if tipo_elemento == 'curso':
            elcurso = Catacurs.objects.filter(cve_curso=elemento_seleccionado).first()
            if elcurso is not None:
                data = {
                    'cve_curso': elcurso.cve_curso,
                    'creditos': elcurso.credima
                }
                return JsonResponse(data)
            else:
                return JsonResponse({'error': 'No se encontró el curso seleccionado'})
        elif tipo_elemento == 'profesor':
            elprofesor = Academic.objects.filter(cve_academic=elemento_seleccionado).first()
            if elprofesor is not None:
                data = {
                    'nom_academic': elprofesor.nombres,
                    'apellidos': elprofesor.apellidos,
                    'correo': elprofesor.email,
                }
                return JsonResponse(data)
            else:
                return JsonResponse({'error': 'No se encontró el profesor seleccionado'})
        else:
            return JsonResponse({'error': 'Tipo de elemento no válido'})
    except Exception as e:
        print(str(e))
        return JsonResponse({'error': str(e)})



from django.forms.models import model_to_dict

def editar_curso(request, id_curso):
    usuario_id = request.session.get('usuario_id')
    usuario = Coordinaciones.objects.get(id=usuario_id)
    curso = Capcurs.objects.get(id=id_curso)
    form = CapcursForm(instance=curso)
    datos_curso = model_to_dict(curso)
    academicos1 = Academic.objects.all()
    academicos = academicos1.order_by('cve_academic')
    return render(request, 'editarcurso.html', {'form': form,
                                                'curso': curso,
                                                'datos_curso': datos_curso,
                                                'academicos': academicos,
                                                'usuario':usuario})


def actualizar_curso(request, id_curso):
    print('Si se esta ejecutando')
    print('id_curso:', id_curso)
    curso = get_object_or_404(Capcurs, pk=id_curso)
    form = CapcursForm(request.POST, instance=curso)
    formIMpa = ImpareguForm(request.POST, instance=curso.cve_curso)
    print('curso.cve_curso_id:', curso.cve_curso_id)
    if request.method == 'POST' and form.is_valid() and formIMpa.is_valid():
        form.save()
        formIMpa.save()
        messages.success(request, 'El curso se ha actualizado correctamente.')
        print('Los cambios se han guardado en la base de datos.')
        return redirect('mostrar_cursos')
    else:
        errors = form.errors.as_json()
        print('Errores de validación:', errors)
        return JsonResponse({'success': False, 'error': errors})




@ensure_csrf_cookie
def elimina_colaborador(request):
    print('Se esta ejecutando')
    if request.method == 'POST':
        print('Si es post')
        print(request.POST)
        cve_academic = request.POST.get('cve_academic')
        cve_curso = request.POST.get('cve_curso')
        print('profe y curso ', cve_academic, cve_curso )
        colabo = Imparegu.objects.filter(cve_curso=cve_curso, cve_academic=cve_academic, participa='Colaborador').first()
        print('Se va este man: ', colabo)
        colabo.delete()
        messages.success(request, 'El colaborador ha sido eliminado correctamente.')
        print(' Ya fue')
        return JsonResponse({'success': True})
    else:
        return JsonResponse({'success': False})


def eliminar_curso(request, id_curso):

    curso = Capcurs.objects.get(pk=id_curso)
    clave = curso.cve_curso_id
    impare_list = Imparegu.objects.filter(cve_curso=str(clave)) #clave que viene de url debo tratarlo como str
    if request.method == 'POST':
        # Si se confirma la eliminación del curso mediante un formulario POST
        curso.delete()  # Elimina el registro de la tabla Capcurs
        impare_list.delete()  # Elimina todos los registros de la tabla Imparegu

        return redirect('mostrar_cursos')  # Redirige a la vista mostrarcursos.html
    else:
        # Si se accede a la función mediante un método HTTP distinto de POST
        return render(request, 'eliminarcurso.html', {'curso': curso})


'''
def agregar_colab(request, cve_curso):
    global academicos
    curso = Catacurs.objects.filter(cve_curso=cve_curso).first()
    clave_curso = curso.cve_curso
    elcapcurs = Capcurs.objects.filter(cve_curso=clave_curso).first()
    print('fn agrega_colab: ', curso)
    try:
        academicos1 = Academic.objects.all()
        academicos = academicos1.order_by('cve_academic')

    except Academic.DoesNotExist:
        messages.error(request, 'Lo siento, no se encuentran los académicos en Academic')
    return render(request, 'agrega_colab.html', {'curso': curso, 'academicos': academicos, 'elcapcurs':elcapcurs})
'''
from django.core.exceptions import ObjectDoesNotExist

def agregar_colab(request, cve_curso):
    #curso = Catacurs.objects.get(cve_curso=cve_curso)
    curso = Catacurs.objects.filter(cve_curso=cve_curso).first()
    academicos = Academic.objects.all().order_by('cve_academic')
    return render(request, 'agrega_colab.html', {'curso': curso, 'academicos': academicos})

def agregar_colab_edit(request, cve_curso):
    #curso = Capcurs.objects.get(cve_curso=cve_curso)
    curso = Capcurs.objects.filter(cve_curso=cve_curso).first()
    print('EL capcurs: ',curso.cve_curso)
    academicos = Academic.objects.all().order_by('cve_academic')
    return render(request, 'agrega_colab_edit.html', {'curso': curso, 'academicos': academicos})

def guardar_colaboradores(request):
    print('si, aqui si paso')
    if request.method == 'POST':
        cve_curso = request.POST.get('cve_curso')
        print('Este es el cve_curso que tiene + 6 :', cve_curso)

        form = ImpareguForm(request.POST)
        print('si es post')
        if form.is_valid():
            print('si es valido')
            # Obtener datos del formulario
            cve_curso = request.POST.get('cve_curso')
            if not request.POST.get('profesores_seleccionados'):
                # Si el campo está vacío, devolver un error de solicitud incorrecta
                return HttpResponseBadRequest('El campo "profesores_seleccionados" no puede estar vacío.')

            # Obtener lista de profesores seleccionados del formulario
            profesores_seleccionados = request.POST.get('profesores_seleccionados')

            # Convertir la lista de profesores seleccionados de una cadena JSON a una lista de Python

            profesores_seleccionados = json.loads(profesores_seleccionados)
            print('Profes selec:', profesores_seleccionados)

            # Iterar sobre la lista de profesores y crear un registro por cada combinación
            for cve_academic_sel in profesores_seleccionados:
                # Obtener datos de Imparegubda
                academic_imp = Imparegubda.objects.filter(cve_academic=cve_academic_sel).first()
                imparegu = Imparegu()
                imparegu.cve_curso = cve_curso
                imparegu.cve_academic = cve_academic_sel
                imparegu.agno = 2023
                imparegu.num_emplea = academic_imp.num_emplea
                imparegu.periodo = 'Primavera'
                imparegu.registro = academic_imp.registro
                imparegu.per_vi_cur = academic_imp.per_vi_cur
                imparegu.ano_vi_cur = academic_imp.ano_vi_cur
                imparegu.participa = 'Colaborador'
                imparegu.dis_cre = academic_imp.dis_cre
                imparegu.save()
                messages.success(request, '¡Colaboradores agregados exitosamente!')
                print(
                    'El colaborador con cve_academic {} se guardó correctamente para el curso con cve_curso {}.'.format(
                        cve_academic_sel, cve_curso))
            return JsonResponse({'status': 'success'})
        else:
            print('no, mano. No es valido esta m...')
            print(form.errors)
    else:
        print('no es post')
        form = ImpareguForm()
    return render(request, 'agrega_colab.html', {'form': form})


def vista_previa(request, nom_program ):
    usuario = Coordinaciones.objects.get(nom_program =nom_program)
    cursos_posgra = Capcurs.objects.filter(cve_program=usuario.cve_program)

    return render(request, 'vista_previa.html', {'usuario': usuario, 'cursos_posgra': cursos_posgra})

def hay_colabs(request, cve_curso):
    colaboradores = Imparegu.objects.filter(cve_curso=cve_curso, participa='Colaborador')
    data = []
    for colab in colaboradores:
        profesor = Academic.objects.filter(cve_academic=colab.cve_academic).first()
        data.append({
            'clave': profesor.cve_academic,
            'nombre': profesor.nombres,
            'apellido': profesor.apellidos,
        })
    return JsonResponse({'data': data}) # Devolver un objeto JSON con el campo 'data'




#verificar si un curso ya existe
def verificar_curso_existente(request):
    cve_curso = request.GET.get('cve_curso')
    cve_academic = request.GET.get('cve_academic')

    cursos = Capcurs.objects.filter(cve_curso=cve_curso, cve_academic=cve_academic)

    if cursos.exists():
        print('Si existe')
        return JsonResponse({'existe': True})
    else:
        print('No bro, existe')
        return JsonResponse({'existe': False})


def guardar_enviar(request, nom_program):
    usuario = Coordinaciones.objects.get(nom_program =nom_program)
    cursos_posgra = Capcurs.objects.filter(cve_program=usuario.cve_program)

    return render(request, 'guardar_enviar.html', {'usuario': usuario, 'cursos_posgra': cursos_posgra})


class Report_view(ListView):
    model = Capcurs
    template_name ='guardar_enviar.html'
    context_object_name = 'cursos_posgra' #los objetos que voy a guardar en el html


class Report_viewPdf(View):
    def get(self, request, *args, **kwargs):
        cursos_posgra = Capcurs.objects.all()
        data = {
            'cursos_posgra': cursos_posgra,
        }
        pdf = render_to_pdf('guardar_enviar.html', data, orientation='Landscape')
        response = HttpResponse(pdf, content_type='application/pdf')
        response['Content-Disposition'] = 'filename="report.pdf"'
        response['Content-Transfer-Encoding'] = 'binary'
        response['Content-Orientation'] = 'landscape'
        pdf_bytes = response.content
        response['Content-Length'] = len(pdf_bytes)
        return response


# IMplementacion de envio de pdf
'''
def generarPDF():
    # Genera el PDF con ReportLab
    buffer = BytesIO()
    p = canvas.Canvas(buffer)
    p.drawString(100, 100, "¡Hola, mundo!")
    p.save()
    pdf = buffer.getvalue()
    buffer.close()
    return pdf

def envia_email(destinatario, pdf):
    # Configura los detalles del correo electrónico
    asunto = 'Reporte_pdf'
    mensaje = 'Se adjunta el reporte PDF'

    # Crea el objeto mensaje
    msg = MIMEMultipart()
    msg['From'] = 'rodriguez.rosales.jose91@gmail.com'
    msg['To'] = destinatario
    msg['Subject'] = asunto

    # Agrega el cuerpo del mensaje
    msg.attach(MIMEText(mensaje))

    # Adjunta el archivo PDF al mensaje
    pdf_adjunto = MIMEApplication(pdf, _subtype='pdf')
    pdf_adjunto.add_header('Content-Disposition', 'attachment', filename='reporte.pdf')
    msg.attach(pdf_adjunto)

    # Configura el servidor SMTP y envía el correo electrónico
    smtp_server = 'smtp.gmail.com'
    smtp_port = 587
    smtp_usuario = 'rodriguez.rosales.jose91@gmail.com'
    smtp_password = 'Charal2306'

    with smtplib.SMTP(smtp_server, smtp_port) as server:
        server.starttls()
        server.login(smtp_usuario, smtp_password)
        server.sendmail(smtp_usuario, destinatario, msg.as_string())
'''

import smtplib
from email.mime.multipart import MIMEMultipart
from email.mime.base import MIMEBase
from email.mime.text import MIMEText
COMMASPACE = ', '
from email import encoders


def envia_email(destinatario, asunto, mensaje, archivo_adjunto):
    # Configura los detalles del correo electrónico
    print('Ejecutando envia_email')
    smtp_server = 'smtp.gmail.com'
    smtp_port = 587
    smtp_usuario = 'rodriguez.rosales.jose91@gmail.com'
    smtp_password = 'Charal2306'

    # Crea el mensaje
    msg = MIMEMultipart()
    msg['From'] = smtp_usuario
    msg['To'] = COMMASPACE.join(destinatario)
    msg['Subject'] = asunto
    msg.attach(MIMEText(mensaje))

    # Adjunta el archivo
    with open(archivo_adjunto, 'rb') as f:
        adjunto = MIMEBase('application', 'octet-stream')
        adjunto.set_payload(f.read())
        encoders.encode_base64(adjunto)
        adjunto.add_header('Content-Disposition', f'attachment; filename="{archivo_adjunto}"')
        msg.attach(adjunto)
        print('Adjuntando pdf')

    # Envía el correo electrónico
    with smtplib.SMTP(smtp_server, smtp_port) as server:
        print('Enviando mail pdf')
        server.ehlo()
        server.starttls()
        server.login(smtp_usuario, smtp_password)
        server.sendmail(smtp_usuario, destinatario, msg.as_string())



def generarPDF(request):
    print('se esta generando correo')
    # Genera el PDF con ReportLab
    buffer = BytesIO()
    p = canvas.Canvas(buffer)
    p.drawString(100, 100, "¡Hola, mundo!")
    p.save()
    pdf = buffer.getvalue()
    buffer.close()

    # Guarda el archivo PDF
    with open('reporte.pdf', 'wb') as f:
        f.write(pdf)

    # Envía el correo electrónico
    destinatario = ['rodriguez.rosales@colpos.mx']
    asunto = 'Reporte PDF'
    mensaje = 'Se adjunta el reporte PDF'
    archivo_adjunto = 'reporte.pdf'
    envia_email(destinatario, asunto, mensaje, archivo_adjunto)

    # Devuelve el archivo PDF como respuesta
    response = HttpResponse(pdf, content_type='application/pdf')
    response['Content-Disposition'] = 'attachment; filename="reporte.pdf"'
    return response


# brzrvigtfzqckepa
