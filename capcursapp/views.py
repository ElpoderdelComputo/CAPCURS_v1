from django.contrib.auth import authenticate, login
import os
from django.http import JsonResponse, HttpResponseBadRequest
from capcursapp.forms import CapcursForm, ImpareguForm
from capcursapp.models import Academic, Coordinaciones, Capcurs, Catacurs, Imparegu, Imparegubda
from django.shortcuts import render, redirect, get_object_or_404
from django.contrib import messages
import json
from django.views.decorators.csrf import ensure_csrf_cookie, csrf_exempt
COMMASPACE = ', '
from email.mime.application import MIMEApplication
from email.mime.multipart import MIMEMultipart
from email.mime.text import MIMEText
from email.mime.base import MIMEBase
from email import encoders
import smtplib
import tempfile
from django.http import HttpResponse
from django.template.loader import get_template
from weasyprint import HTML, CSS
from io import BytesIO
from django.forms.models import model_to_dict
from django.contrib.auth import logout

def iniciar_sesion(request):
    # Cerrar sesión (antes de redireccionar)
    return render(request, 'iniciosesion.html')

def logout_view(request):
    logout(request)
    return redirect('iniciar_sesion')


def verificar_credenciales(request):
    if request.method == 'POST':
        username = request.POST.get('username')
        password = request.POST.get('password')
        user = authenticate(request, username=username, password=password)

        if user is not None:
            # Las credenciales son válidas
            login(request, user)
            request.session['usuario_id'] = user.id  # Almacena el ID del usuario en la sesión
            return redirect('mostrar_cursos')
        else:
            # Las credenciales son inválidas
            messages.error(request, 'Usuario o contraseña incorrectos.')
            return render(request, 'iniciosesion.html')
    else:
        return render(request, 'iniciosesion.html')


def cursos_guardados(request):
    print('LLego a la funcion')
    usuario = request.user
    coordinacion = Coordinaciones.objects.filter(username=usuario.username).first()
    cursos_posgra = Capcurs.objects.filter(cve_program=coordinacion.cve_program)
    print('Se enviaron los datos de:', usuario )
    return render(request, 'cursos_guardados.html', {'coordinacion': coordinacion, 'cursos_posgra': cursos_posgra})


def mostrar_cursos(request):
    usuario_id = request.session.get('usuario_id')

    if not usuario_id:
        return redirect('iniciar_sesion')
    try:
        coordinacion = Coordinaciones.objects.get(id=usuario_id)
        #print('Inicio sesion: ', coordinacion)
        coordinacion.incrementar_cont_veces()  # Incrementa el valor de cont_veces en 1
        #print('Valor de: ', coordinacion.cont_final)

        if coordinacion.cont_final >= 1:
            # El usuario ya ha generado el PDF, mostrar los datos registrados o el PDF
            #print('# El usuario ya ha generado el PDF, mostrar los datos registrados o el PDF')
            return redirect('cursos_guardados')
        usuario = Coordinaciones.objects.get(id=usuario_id)
        miscursospersonal = Capcurs.objects.filter(cve_program=usuario.cve_program)
    except Coordinaciones.DoesNotExist:
        messages.error(request, 'El usuario no existe.')
        return redirect('iniciar_sesion')
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

            if cve_academic == 'A00000':
                print('Se agrego Investigación')
                messages.success(request, '¡Curso Registrado exitosamente!')
            else:
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
    #programas = ['AEC', 'BOT', 'COA', 'DES', 'ECO', 'EDA', 'ENT', 'EST', 'FIS', 'FIT', 'FOR', 'FRU', 'GAN', 'GEN', 'HID', 'SEM']
    clave = ['AEC', 'BOT', 'COA', 'DES', 'ECO', 'EDA', 'ENT', 'EST', 'FIS', 'FIT', 'FOR', 'FRU', 'GAN', 'GEN', 'HID', 'SEM', '']
    valor = ['AGROECOLOGÍA Y SUSTENTABILIDAD', 'BOTANICA', 'CÓMPUTO APLICADO', 'DESARROLLO RURAL', 'ECONOMÍA',
             'EDAFOLOGÍA', 'ENTOMOLOGÍA Y ACAROLOGIA', 'ESTADISTICA', 'FISIOLOGIA VEGETAL', 'FITOPATOLOGIA',
             'CIENCIAS FORESTALES', 'FRUTICULTURA', 'GANADERIA', 'GENETICA', 'HIDROCIENCIAS', 'PRODUCCIÓN DE SEMILLAS', 'PROFESORES DEL POSGRADO']

    programas = dict(zip(clave, valor))
    #programas = [[k, v] for k, v in diccionario.items()]
    return render(request, 'agrega_curso.html', {'loscursos': loscursos, 'academicos': academicos, 'usuario': usuario, 'programas': programas})

# vista que busca al curso seleccionado y devuelve el objeto
def buscar_elemento(request):
    elemento_seleccionado = request.GET.get('elemento')
    tipo_elemento = request.GET.get('tipo_elemento')
    cve_program = request.GET.get('cve_program')  # Obtener la clave del programa seleccionada

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

        elif tipo_elemento == 'programa':
            elprofesor = Academic.objects.all(cve_program=cve_program)
            if elprofesor is not None:
                data = {
                    'nombres': elprofesor.nombres,
                    'apellidos': elprofesor.apellidos,
                    'correo': elprofesor.email,
                }
                return JsonResponse(data)
            else:
                return JsonResponse({'error': 'No se encontró el profesor seleccionado'})


        elif tipo_elemento == 'profesor':
            elprofesor = Academic.objects.filter(cve_academic=elemento_seleccionado, cve_program=cve_program).first()
            if elprofesor is not None:
                data = {
                    'nombres': elprofesor.nombres,
                    'apellidos': elprofesor.apellidos,
                    'correo': elprofesor.email,
                }
                return JsonResponse(data)
            else:
                return JsonResponse({'error': 'No se encontró el profesor seleccionado'})
        else:
            return JsonResponse({'error': 'Tipo de elemento no válido'})
    except Exception as e:
        #print(str(e))
        return JsonResponse({'error': str(e)})

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
    #print('Si se esta ejecutando')
    #print('id_curso:', id_curso)
    curso = get_object_or_404(Capcurs, pk=id_curso)
    form = CapcursForm(request.POST, instance=curso)
    formIMpa = ImpareguForm(request.POST, instance=curso.cve_curso)
    #print('curso.cve_curso_id:', curso.cve_curso_id)
    if request.method == 'POST' and form.is_valid() and formIMpa.is_valid():
        form.save()
        formIMpa.save()
        messages.success(request, 'El curso se ha actualizado correctamente.')
        #print('Los cambios se han guardado en la base de datos.')
        return redirect('mostrar_cursos')
    else:
        errors = form.errors.as_json()
        #print('Errores de validación:', errors)
        return JsonResponse({'success': False, 'error': errors})


@ensure_csrf_cookie
def elimina_colaborador(request):
    #print('Se esta ejecutando')
    if request.method == 'POST':
        #print('Si es post')
        #print(request.POST)
        cve_academic = request.POST.get('cve_academic')
        cve_curso = request.POST.get('cve_curso')
        #print('profe y curso ', cve_academic, cve_curso )
        colabo = Imparegu.objects.filter(cve_curso=cve_curso, cve_academic=cve_academic, participa='Colaborador').first()
        #print('Se va este man: ', colabo)
        colabo.delete()
        messages.success(request, 'El colaborador ha sido eliminado correctamente.')
        #print(' Ya fue')
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
        response_data = {'message': 'Curso eliminado satisfactoriamente'}
        return HttpResponse(json.dumps(response_data))
    else:
        # Si se accede a la función mediante un método HTTP distinto de POST
        return render(request, 'eliminarcurso.html', {'curso': curso})


def agregar_colab(request, cve_curso):
    #curso = Catacurs.objects.get(cve_curso=cve_curso)
    curso = Catacurs.objects.filter(cve_curso=cve_curso).first()
    academicos = Academic.objects.all().order_by('cve_academic')
    return render(request, 'agrega_colab.html', {'curso': curso, 'academicos': academicos})

def agregar_colab_edit(request, cve_curso):
    #curso = Capcurs.objects.get(cve_curso=cve_curso)
    curso = Capcurs.objects.filter(cve_curso=cve_curso).first()
    #print('EL capcurs: ',curso.cve_curso_id)
    academicos = Academic.objects.all().order_by('cve_academic')
    return render(request, 'agrega_colab_edit.html', {'curso': curso, 'academicos': academicos})

def guardar_colaboradores1(request):
    #print('si, aqui si paso')
    if request.method == 'POST':
        cve_curso = request.POST.get('cve_curso')
        #print('Este es el cve_curso que tiene + 6 :', cve_curso)
        form = ImpareguForm(request.POST)
        #print('profesores_seleccionados', request.POST.get('profesores_seleccionados'))
        #print('si es post')
        if form.is_valid():
            #print('si es valido')
            # Obtener datos del formulario
            cve_curso = request.POST.get('cve_curso')
            if not request.POST.get('profesores_seleccionados'):
                # Si el campo está vacío, devolver un error de solicitud incorrecta
                return HttpResponseBadRequest('El campo "profesores_seleccionados" no puede estar vacío.')

            # Obtener lista de profesores seleccionados del formulario
            profesores_seleccionados = request.POST.get('profesores_seleccionados')

            # Convertir la lista de profesores seleccionados de una cadena JSON a una lista de Python

            profesores_seleccionados = json.loads(profesores_seleccionados)
            #print('Profes selec:', profesores_seleccionados)

            # Iterar sobre la lista de profesores y crear un registro por cada combinación
            for cve_academic_sel in profesores_seleccionados:
                if cve_academic_sel =='A00000':
                    #print('No existe ese man bro')
                    return JsonResponse({'status': 'success'})
                else:
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
                    #print(
                        #'El colaborador con cve_academic {} se guardó correctamente para el curso con cve_curso {}.'.format(
                         #   cve_academic_sel, cve_curso))
            return JsonResponse({'status': 'success'})
        else:
            #print('no, mano. No es valido esta m...')
            print(form.errors)
            return JsonResponse({'status': 'errors'})
    else:
        #print('no es post')
        form = ImpareguForm()
    return render(request, 'agrega_colab.html', {'form': form})


def guardar_colaboradores(request):
    if request.method == 'POST':
        cve_curso = request.POST.get('cve_curso')
        form = ImpareguForm(request.POST)

        if form.is_valid():
            profesores_seleccionados = request.POST.get('profesores_seleccionados')

            if not profesores_seleccionados:
                return HttpResponseBadRequest('El campo "profesores_seleccionados" no puede estar vacío.')

            profesores_seleccionados = json.loads(profesores_seleccionados)

            for cve_academic_sel in profesores_seleccionados:
                if cve_academic_sel == 'A00000':
                    return JsonResponse({'status': 'success'})
                else:
                    academic_imp = Imparegubda.objects.filter(cve_academic=cve_academic_sel).first()
                    imparegu = Imparegu.objects.create(
                        cve_curso=cve_curso,
                        cve_academic=cve_academic_sel,
                        agno=2023,
                        num_emplea=academic_imp.num_emplea,
                        periodo='Primavera',
                        registro=academic_imp.registro,
                        per_vi_cur=academic_imp.per_vi_cur,
                        ano_vi_cur=academic_imp.ano_vi_cur,
                        participa='Colaborador',
                        dis_cre=academic_imp.dis_cre
                    )
                    messages.success(request, '¡Colaboradores agregados exitosamente!')

            return JsonResponse({'status': 'success'})
        else:
            return JsonResponse({'status': 'errors'})
    else:
        form = ImpareguForm()
    return render(request, 'agrega_colab.html', {'form': form})

def vista_previa(request, nom_program ):
    usuario = Coordinaciones.objects.get(nom_program =nom_program)
    cursos_posgra = Capcurs.objects.filter(cve_program=usuario.cve_program)
    colaboradores = Imparegu.objects.filter(participa='Colaborador')
    print(colaboradores[1])
    return render(request, 'vista_previa.html', {'usuario': usuario, 'cursos_posgra': cursos_posgra, 'colaboradores': colaboradores})

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
        return JsonResponse({'existe': True})
    else:
        return JsonResponse({'existe': False})


def guardar_enviar(request, nom_program):
    usuario = Coordinaciones.objects.get(nom_program=nom_program)
    cursos_posgra = Capcurs.objects.filter(cve_program=usuario.cve_program)
    return render(request, 'guardar_enviar.html', {'usuario': usuario, 'cursos_posgra': cursos_posgra})



# IMplementacion de envio de pdf
def envia_email(destinatario, asunto, mensaje, archivo_adjunto):
    # Configura los detalles del correo electrónico
    smtp_server = 'smtp.gmail.com'
    smtp_port = 587
    smtp_usuario = 'rodriguez.rosales.jose91@gmail.com'
    smtp_password = 'brzrvigtfzqckepa'

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

    # Envía el correo electrónico
    with smtplib.SMTP(smtp_server, smtp_port) as server:
        print('Enviando mail pdf')
        server.ehlo()
        server.starttls()
        server.login(smtp_usuario, smtp_password)
        server.sendmail(smtp_usuario, destinatario, msg.as_string())

from email.mime.image import MIMEImage

def generarPDF_1(request):
    if request.method == 'POST':
        nom_program = request.POST.get('nom_program')
        #img = request.FILES.get('imagen')  # Obtener la imagen adjunta del formulario
        img = 'capcursapp/static/imagenes/SubDirImg.png'
        usuario = Coordinaciones.objects.get(nom_program=nom_program)
        cursos_posgra = Capcurs.objects.filter(cve_program=usuario.cve_program)

        # Obtener la plantilla HTML
        template = get_template('guardar_enviar.html')
        context = {'img': img, 'cursos_posgra': cursos_posgra, 'usuario': usuario, 'generar_pdf': True}

        # Utilizar RequestContext al renderizar la plantilla
        rendered_template = template.render(context)

        css_file = "capcursapp/static/CSS/guardar_enviar.css"

        # Agregar la declaración de estilo de página para la orientación horizontal
        html_with_style = f'<style>@page {{ size: letter landscape; }}</style>{rendered_template}'

        # Crear un objeto de BytesIO para almacenar el PDF resultante
        result = BytesIO()

        # Convertir el HTML a PDF utilizando WeasyPrint con orientación horizontal
        HTML(string=html_with_style).write_pdf(result, stylesheets=[CSS(filename=css_file)])

        # Establecer las cabeceras adecuadas para descargar el PDF
        response = HttpResponse(content_type='application/pdf')
        response['Content-Disposition'] = 'attachment; filename="reporte.pdf"'

        # Copiar el contenido del BytesIO al objeto de respuesta
        result.seek(0)
        response.write(result.getvalue())

        # Crear un archivo temporal para almacenar el PDF
        temp_file = tempfile.NamedTemporaryFile(delete=False)
        temp_file.write(result.getvalue())
        temp_file.close()

        # Envía el correo electrónico
        destinatario = ['rodriguez.rosales@colpos.mx']
        asunto = 'Cursos Programados' + ' ' + usuario.cve_posgrad + '-' + usuario.nom_program
        periodo = 'Primavera 2023 '
        mensaje = ' C O L E G I O   D E   P O S T G R AD U A D O S\n'
        mensaje += '         C A M P U S   M O N T E C I L L O\n\n'
        mensaje += 'Se adjunta documento PDF de los cursos programados para el periodo de ' + periodo + usuario.cve_posgrad + '-' + usuario.nom_program
        mensaje += '\n\n         ATENTAMENTE\n\n'
        mensaje += 'SUBDIRECCION ACADEMICA'

        # Crea el objeto MIME del correo electrónico
        msg = MIMEMultipart()
        msg['Subject'] = asunto
        msg['From'] = 'tudireccion@correo.com'
        msg['To'] = ', '.join(destinatario)

        #construir nombre del documento
        filename = 'Cursos-' + usuario.cve_posgrad + '-' + usuario.cve_program
         # Adjunta el PDF al correo electrónico
        with open(temp_file.name, 'rb') as f:
            attach = MIMEApplication(f.read(), _subtype="pdf")
            attach.add_header('Content-Disposition', 'attachment', filename=filename + ".pdf")
            msg.attach(attach)

        # Agrega el cuerpo del mensaje
        msg.attach(MIMEText(mensaje, 'plain'))
        # Adjunta la imagen incrustada en el contenido HTML del correo electrónico
        with open(img, 'rb') as f:
            image_data = f.read()
            image_mime = MIMEImage(image_data)
            image_mime.add_header('Content-ID', '<image>')
            msg.attach(image_mime)

        # Envía el correo electrónico utilizando SMTP
        try:
            smtp_server = 'smtp.gmail.com'
            smtp_port = 587
            smtp_usuario = 'rodriguez.rosales.jose91@gmail.com'
            smtp_password = 'brzrvigtfzqckepa' #esconder esto despsues
            smtp = smtplib.SMTP(smtp_server, smtp_port)
            smtp.ehlo()
            smtp.starttls()
            smtp.login(smtp_usuario, smtp_password)
            smtp.sendmail(smtp_usuario, destinatario, msg.as_string())
            smtp.quit()

            # Borra el archivo temporal
            os.unlink(temp_file.name)

            return HttpResponse('Correo electrónico enviado correctamente.')
        except Exception as e:
            # Borra el archivo temporal
            os.unlink(temp_file.name)

            return HttpResponse(f'Error al enviar el correo electrónico: {str(e)}')

    return HttpResponse('Error al generar el PDF')




def generarPDF(request):
    if request.method == 'POST':
        nom_program = request.POST.get('nom_program')
        img_path = 'capcursapp/static/imagenes/SubDirImg.png'  # Reemplaza con la ruta absoluta de la imagen
        usuario = Coordinaciones.objects.get(nom_program=nom_program)
        cursos_posgra = Capcurs.objects.filter(cve_program=usuario.cve_program)

        # Obtener la plantilla HTML
        template = get_template('guardar_enviar.html')
        context = {'img': img_path, 'cursos_posgra': cursos_posgra, 'usuario': usuario, 'generar_pdf': True}

        # Utilizar RequestContext al renderizar la plantilla
        rendered_template = template.render(context)

        css_file = "capcursapp/static/CSS/guardar_enviar.css"

        # Agregar la declaración de estilo de página para la orientación horizontal
        html_with_style = f'<style>@page {{ size: letter landscape; }}</style>{rendered_template}'

        # Crear un objeto de BytesIO para almacenar el PDF resultante
        result = BytesIO()

        # Convertir el HTML a PDF utilizando WeasyPrint con orientación horizontal
        HTML(string=html_with_style).write_pdf(result, stylesheets=[CSS(filename=css_file)], presentational_hints=True)

        # Establecer las cabeceras adecuadas para descargar el PDF
        response = HttpResponse(content_type='application/pdf')
        response['Content-Disposition'] = 'attachment; filename="reporte.pdf"'

        # Copiar el contenido del BytesIO al objeto de respuesta
        result.seek(0)
        response.write(result.getvalue())

        # Crear un archivo temporal para almacenar el PDF
        temp_file = tempfile.NamedTemporaryFile(delete=False)
        temp_file.write(result.getvalue())
        temp_file.close()

        # Envía el correo electrónico
        destinatario = ['rodriguez.rosales@colpos.mx']
        asunto = 'Cursos Programados' + ' ' + usuario.cve_posgrad + '-' + usuario.nom_program
        periodo = 'Primavera 2023 '
        mensaje = ' C O L E G I O   D E   P O S T G R AD U A D O S\n'
        mensaje += '         C A M P U S   M O N T E C I L L O\n\n'
        mensaje += 'Se adjunta documento PDF de los cursos programados para el periodo de ' + periodo + usuario.cve_posgrad + '-' + usuario.nom_program
        mensaje += '\n\n         ATENTAMENTE\n\n'
        mensaje += 'SUBDIRECCION ACADEMICA'

        # Crea el objeto MIME del correo electrónico
        msg = MIMEMultipart()
        msg['Subject'] = asunto
        msg['From'] = 'tudireccion@correo.com'
        msg['To'] = ', '.join(destinatario)

        # Adjunta el PDF al correo electrónico
        with open(temp_file.name, 'rb') as f:
            attach = MIMEApplication(f.read(), _subtype="pdf")
            attach.add_header('Content-Disposition', 'attachment', filename="reporte.pdf")
            msg.attach(attach)

        # Agrega el cuerpo del mensaje
        msg.attach(MIMEText(mensaje, 'plain'))

        # Adjunta la imagen incrustada en el contenido HTML del correo electrónico
        with open(img_path, 'rb') as f:
            image_data = f.read()
            image_mime = MIMEImage(image_data)
            image_mime.add_header('Content-ID', '<image>')
            msg.attach(image_mime)

        # Envía el correo electrónico utilizando SMTP
        try:
            smtp_server = 'smtp.gmail.com'
            smtp_port = 587
            smtp_usuario = 'rodriguez.rosales.jose91@gmail.com'
            smtp_password = 'brzrvigtfzqckepa'  # Esconde esto después
            smtp = smtplib.SMTP(smtp_server, smtp_port)
            smtp.ehlo()
            smtp.starttls()
            smtp.login(smtp_usuario, smtp_password)
            smtp.sendmail(smtp_usuario, destinatario, msg.as_string())
            smtp.quit()

            # Borra el archivo temporal
            os.unlink(temp_file.name)

            coordinacion = Coordinaciones.objects.get(id=usuario.id)  # Obtén la instancia de Coordinaciones adecuada
            coordinacion.incrementar_cont_final()  # Incrementa el valor de cont_final en 1
            print('Ya es uno', coordinacion)

            return HttpResponse('Correo electrónico enviado correctamente.')
        except Exception as e:
            # Borra el archivo temporal
            os.unlink(temp_file.name)

            return HttpResponse(f'Error al enviar el correo electrónico: {str(e)}')

    return HttpResponse('Error al generar el PDF')


