from io import BytesIO
from django.template.loader import get_template
from xhtml2pdf import pisa
from django.http import HttpResponse
from sys import path_hooks


def render_to_pdf(template_src, context_dict={}, orientation='Landscape'):
    template = get_template(template_src)
    html = template.render(context_dict)
    pdf_file = BytesIO()
    # Set the PDF orientation to the value of the 'orientation' argument
    result = pisa.pisaDocument(BytesIO(html.encode('ISO-8859-1')), pdf_file, encoding='UTF-8',
                               show_error_as_pdf=True, default_css=None, debug=False,
                               pdf_options={'orientation': orientation})
    if not result.err:
        pdf = pdf_file.getvalue()
        pdf_file.close()
        return HttpResponse(pdf, content_type='application/pdf')
    pdf_file.close()
    return None

# ENviar pdf

import smtplib
from email.mime.text import MIMEText
from email.mime.multipart import MIMEMultipart
from email.mime.application import MIMEApplication

def envia_email():
    # Configura los detalles del correo electrónico
    destinatario = 'rodriguez.rosales@colpos.mx'
    #destinatario = 'rodriguez.rosales.jose91@gmail.com'
    asunto = 'Reporte_pdf'
    mensaje = 'Se adjunta el reporte PDF'

    # Crea el objeto mensaje
    msg = MIMEMultipart()
    msg['From'] = 'rodriguez.rosales.jose91@gmail.com'
    msg['To'] = destinatario
    msg['Subject'] = asunto

    # Agrega el cuerpo del mensaje
    msg.attach(MIMEText(mensaje))

    # Abre el archivo PDF en modo binario
    with open('reporte.pdf', 'rb') as f:
        archivo_pdf = f.read()

    # Adjunta el archivo PDF al mensaje
    pdf_adjunto = MIMEApplication(archivo_pdf, _subtype='pdf')
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


