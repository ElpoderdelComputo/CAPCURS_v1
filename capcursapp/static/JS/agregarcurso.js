/*
const form = document.querySelector('form');
const cve_curso = document.querySelector('#cve_curso');
const creditos = document.querySelector('#creditos');
const nom_curso = document.querySelector('#nom_curso');
const cve_academic = document.querySelector('#cve_academic');
const apellidos = document.querySelector('#apellidos');
const nom_academic = document.querySelector('#nom_academic');
const participacion = document.querySelector('#participacion');
const lunes_ini = document.querySelector('#lunes_ini');
const lunes_fin = document.querySelector('#lunes_fin');
const martes_ini = document.querySelector('#martes_ini');
const martes_fin = document.querySelector('#martes_fin');
const miercoles_ini = document.querySelector('#miercoles_ini');
const miercoles_fin = document.querySelector('#miercoles_fin');
const jueves_ini = document.querySelector('#jueves_ini');
const jueves_fin = document.querySelector('#jueves_fin');
const viernes_ini = document.querySelector('#viernes_ini');
const viernes_fin = document.querySelector('#viernes_fin');
const aula = document.querySelector('#aula');
const observaciones = document.querySelector('#observaciones');

form.addEventListener('submit', (event) => {
    event.preventDefault();
    let errors = [];

    if (cve_curso.value.trim() === '') {
        errors.push('Debe seleccionar un curso');
    }
    if (nom_curso.value.trim() === '') {
        errors.push('Debe ingresar el nombre del curso');
    }
    if (creditos.textContent.trim() === '') {
        errors.push('Debe ingresar los créditos del curso');
    }
    if (cve_academic.value.trim() === '') {
        errors.push('Debe seleccionar un académico');
    }
    if (nom_academic.value.trim() === '') {
        errors.push('Debe ingresar el nombre del académico');
    }
    if (apellidos.textContent.trim() === '') {
        errors.push('Debe ingresar los apellidos del académico');
    }
    if (participacion.value.trim() === '') {
        errors.push('Debe ingresar la participación del académico');
    }
    if (lunes_ini.value.trim() === '') {
        errors.push('Debe ingresar la hora de inicio de los lunes');
    }
    if (lunes_fin.value.trim() === '') {
        errors.push('Debe ingresar la hora de fin de los lunes');
    }
    if (martes_ini.value.trim() === '') {
        errors.push('Debe ingresar la hora de inicio de los martes');
    }
    if (martes_fin.value.trim() === '') {
        errors.push('Debe ingresar la hora de fin de los martes');
    }
    if (miercoles_ini.value.trim() === '') {
        errors.push('Debe ingresar la hora de inicio de los miércoles');
    }
    if (miercoles_fin.value.trim() === '') {
        errors.push('Debe ingresar la hora de fin de los miércoles');
    }
    if (jueves_ini.value.trim() === '') {
        errors.push('Debe ingresar la hora de inicio de los jueves');
    }
    if (jueves_fin.value.trim() === '') {
        errors.push('Debe ingresar la hora de fin de los jueves');
    }
    if (viernes_ini.value.trim() === '') {
        errors.push('Debe ingresar la hora de inicio de los viernes');
    }
    if (viernes_fin.value.trim() === '') {
        errors.push('Debe ingresar la hora de fin de los viernes');
    }
    if (aula.value.trim() === '') {
        alert('Por favor, ingrese el número de aula.');
        aula.focus();
        return false;
    }

    if (observaciones.value.trim() === '') {
        alert('Por favor, ingrese las observaciones.');
        observaciones.focus();
        return false;
    }

    return true;
})

function verificarCursoProfesor() {
    // Obtenemos los valores de cve_curso y cve_academic
    var cve_curso = document.getElementById('cve_curso').value;
    var cve_academic = document.getElementById('cve_academic').value;

    // Hacemos una petición AJAX al servidor para verificar si la combinación ya existe
    $.ajax({
        url: '/verificar_curso_existente/',
        type: 'GET',
        data: { cve_curso: cve_curso, cve_academic: cve_academic },
        dataType: 'json',
        success: function(response) {
            if (response.existe) {
                // Si la combinación ya existe, mostramos un mensaje de error
                document.getElementById('error-cve-curso-profesor').style.display = 'block';
            } else {
                // Si la combinación no existe, ocultamos el mensaje de error
                document.getElementById('error-cve-curso-profesor').style.display = 'none';
            }
        },
        error: function() {
            // Si hay un error en la petición AJAX
            alert("Ha ocurrido un error.");
        }
    });
}
*/
