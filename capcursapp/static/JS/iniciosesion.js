// Espera a que el documento esté completamente cargado antes de ejecutar cualquier código
$(document).ready(function() {
  // Asegúrate de que el formulario tenga el ID "login-form"
  var form = $('#formulario');

  // Maneja la presentación del formulario de inicio de sesión
  form.on('submit', function(event) {
    event.preventDefault(); // Previene el envío automático del formulario

    // Obtiene los valores de usuario y contraseña
    var username = $('#username').val();
    var password = $('#password').val();


    // Envía los datos del usuario al servidor utilizando AJAX
    $.ajax({
      type: 'POST',
      url: $(this).attr('action'),
      data: {
        'csrfmiddlewaretoken': $('input[name=csrfmiddlewaretoken]').val(),
        'username': username,
        'password': password
      },
      headers: {
        'X-CSRFToken': $('input[name=csrfmiddlewaretoken]').val() // Incluye el token CSRF en los encabezados
      },
      success: function(response) {
        // Si la autenticación es exitosa, redirige al usuario a otra página
        window.location.href = '/mostrar_cursos/';
      },
      error: function(response) {
        // Si hay un error en la autenticación, muestra un mensaje de error
        $('#error-message').text('Nombre de usuario o contraseña incorrectos.');
      }
    });
  });
});
