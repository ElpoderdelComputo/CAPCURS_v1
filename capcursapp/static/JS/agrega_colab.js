<!-- script para buscar curso selecionado-->

$(document).ready(function() {
    $('#cve_curso').change(function() {
        var selectedValue = $(this).val();
        $.ajax({
            url: '/buscar_elemento/',
            type: 'GET',
            data: {
                'elemento': selectedValue,
                'tipo_elemento': 'curso'
            },
            dataType: 'json',
            success: function(data) {
                $('#cve_program').val(data['cve_program']);
                $('#nombre').val(data['nombre']);
                $('#creditos').val(data['creditos']);
                $('#cve_curso').val(data['cve_curso']);
                $('#gpo_670').val(data['gpo_670']);
                $('#per_vi_cur').val(data['per_vi_cur']);
                $('#ano_vi_cur').val(data['ano_vi_cur']);
            },
            error: function() {
                alert('Hubo un error al buscar el curso seleccionado');
            }
        });
    });

    $('#cve_academic').change(function() {
        var selectedValue = $(this).val();
        $.ajax({
            url: '/buscar_elemento/',
            type: 'GET',
            data: {
                'elemento': selectedValue,
                'tipo_elemento': 'profesor'
            },
            dataType: 'json',
            success: function(data) {
                $('#nom_academic').val(data['nom_academic']);
                $('#apellidos').val(data['apellidos']);
                $('#correo').val(data['correo']);
            },
            error: function() {
                alert('Hubo un error al buscar el profesor seleccionado');
            }
        });
    });
});


<!--
escuchar el evento "click" del botón "Agregar" y luego de obtener los valores seleccionados del menú desplegable,
crea una nueva fila en la tabla con esos datos. También agrega un botón de "Eliminar" a la nueva fila, y escucha los
eventos "click" de los botones "Eliminar" para eliminar la fila correspondiente de la tabla.
-->

$(document).ready(function() {
    // obtiene el botón Agregar
    var agregarBtn = document.getElementById("agregar");
    // agrega el evento clic solo si el botón existe en el DOM
    if (agregarBtn) {
        agregarBtn.addEventListener('click', function(e) {
            e.preventDefault(); // previene el comportamiento predeterminado del botón
            // obtiene el valor seleccionado del menú desplegable
            var select = document.getElementById("cve_academic");
            var cve_academic = select.value;
            var nombre_apellido = select.options[select.selectedIndex].text.split(':');
            var nombre = (nombre_apellido.length > 1) ? nombre_apellido[1].trim() : '';
            var apellido = (nombre_apellido.length > 2) ? nombre_apellido[2].trim() : '';
            // crea una nueva fila en la tabla con los datos seleccionados
            var tabla = $('#tabla-profesores tbody');
            var row = tabla[0].insertRow();
            var cve_cell = row.insertCell(0);
            var nombre_cell = row.insertCell(1);
            var apellido_cell = row.insertCell(2);
            var eliminar_cell = row.insertCell(3);
            cve_cell.innerHTML = cve_academic;
            nombre_cell.innerHTML = nombre;
            apellido_cell.innerHTML = apellido;
            eliminar_cell.innerHTML = '<button type="button" class="btn btn-danger eliminar" aria-label="Eliminar">Eliminar</button>';
            // cuando se hace clic en el botón Eliminar
            $(document).on('click', '.eliminar', function() {
                $(this).closest('tr').remove();
            });
        });
    }
});

function guardarColaboradores() {
    var cve_academic = document.getElementById('id_cve_academic').value;
    var cve_profesores = document.querySelectorAll('input[name="profesores"]:checked');
    var profesores_seleccionados = [];

    if (cve_profesores.length > 0) {
        for (var i = 0; i < cve_profesores.length; i++) {
            profesores_seleccionados.push({
                cve_academic: cve_profesores[i].value,
                nombre: cve_profesores[i].dataset.nombre,
                apellido: cve_profesores[i].dataset.apellido
            });
        }
    }

    // Aquí creamos un objeto con los profesores seleccionados
    var data = {
        profesores_seleccionados: profesores_seleccionados
    };

    // Aquí enviamos la solicitud POST a la vista de Django
    fetch('/guardar_colaboradores/', {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json'
        },
        body: JSON.stringify(data)
    })
        .then(response => {
            // hacer algo con la respuesta
        })
        .catch(error => {
            // manejar el error
        });
}
