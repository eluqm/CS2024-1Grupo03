document.addEventListener('DOMContentLoaded', function() {
    var formularioLogin = document.getElementById('formulario-login');

    formularioLogin.addEventListener('submit', function(event) {
        event.preventDefault();
        window.location.href = './opciones/cursos.html'; 
    });
});
