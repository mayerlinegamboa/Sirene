$(document).ready(function() {
    // Handler for .ready() called.

    $(document).puitooltip();
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
    $('#msgerror').puigrowl(); 
    $("#btniniciar").click(function() {        
        validar();        
    });
    addMessage = function(msg) {  
            $('#msgerror').puigrowl('show', msg);  
        }

});

function validar() {
    var login = $("#txtlogin").val();
    var pass = $("#txtpass").val();
    if (login === "") {
        $("#txtlogin").addClass("error");
        addMessage([{severity: 'error', summary: 'SIRENE', detail: 'Login requerido.', life: 4000}]);
    } else {
        $("#txtlogin").removeClass("error");
        if (pass === "") {
            $("#txtpass").addClass("error");
            addMessage([{severity: 'error', summary: 'SIRENE', detail: 'Password requerido.', life: 4000}]);
        } else {
            $("#txtpass").removeClass("error");
            iniciarSesion(login,pass);

        }
    }
}

function iniciarSesion(login,pass){
    console.log("el login y el pass antes de llamado ajax es-->"+login+"y "+pass);
     $.ajax({
        type: "POST",
        url: "/Sirene/acceso/business/FuncionesAcceso.php",
        data: {
            accion: 'iniciar',
            loginn: login,
            passs: pass
        },
        dataType: 'json',
        aysnc: false,
        beforeSend:function(x) {
            
        },
        success: function(data)
        {
            if (data.secusuario === null) {
                addMessage([{severity: 'error', summary: 'SIRENE', detail: 'Login y Password Incorrectos.', life: 4000}]);
            } else {
                var rol = data.secrol;
                location.href="plantillas/PlantillaAdministrador.php";
            }
            
                
                //console.log("el rol del usuario es el siguietn-->"+rol);
            
        },
        complete:function(){
            
        }
    });
}




