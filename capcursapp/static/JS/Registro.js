/*
Selecciona el elemento con ID "nombre-usuario" y lo guarda en una variable llamada "nombreUsuario".
Pide al usuario su nombre usando la función "prompt" y actualiza el contenido del elemento "nombre-usuario"
con el texto "Bienvenido, " seguido del nombre ingresado por el usuario.
Inicializa la tabla de datos usando el plugin DataTables y le da el orden por defecto por la primera columna
de manera ascendente. También establece el idioma en español.
 */

// Selecciona el elemento con ID "nombre-usuario"
let nombreUsuario = document.querySelector("#nombre-usuario");
/*
// Pide al usuario su nombre y actualiza el contenido del elemento "nombre-usuario"
let nombre = prompt("Ingresa tu nombre:");
nombreUsuario.textContent = `Bienvenido, ${nombre}`;
 */

// Inicializa la tabla de datos usando el plugin DataTables
$(document).ready(function() {
    $('#registrodecursos').DataTable({
        "order": [[ 0, "asc" ]],
        "language": {
            "url": "https://cdn.datatables.net/plug-ins/1.11.3/i18n/es_es.json"
        }
    });
});



