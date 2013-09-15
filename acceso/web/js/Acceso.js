$(document).ready(function() {
    // Handler for .ready() called.


    $('#txtpass').puipassword({
        promptLabel: 'Ingrese Su Contraseña',
        weakLabel: 'Seguridad: Baja',
        mediumLabel: 'Seguridad: Media',
        strongLabel: 'Seguridad: Alta'
    });
    $('#txtlogin').puiinputtext();
    $('#pnliniciarsesion').puipanel();
    $('#hojadoblada').puipanel();
    $('#pnlPrincipal').puipanel();
    $('#pnlcreditos').puipanel();
    $('#btniniciar').puibutton();


});


