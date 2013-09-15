<!--
To change this template, choose Tools | Templates
and open the template in the editor.
-->
<!DOCTYPE html>
<html>
    <head>        
        <title>SIRENE - Administraci&oacute;n</title>
        <script type="text/javascript" src="../resources/js/jquery.js"></script>
        <script type="text/javascript" src="../resources/js/jquery-ui.js"></script>
        <script type="text/javascript" src="../resources/js/primeui-0.9.6.js"></script>
        <script type="text/javascript" src="../plantillas/js/Admin.js"></script>

        <link rel="stylesheet" href="../resources/css/primeui-0.9.6.css" />  
        <link rel="stylesheet" href="../resources/css/jquery-ui.css" />  
        <link rel="stylesheet" href="../resources/css/jquery-ui-1.10.3.custom.min.css" />
        <link rel="stylesheet" href="../resources/css/jquery-ui-1.10.3.custom.css" />
        <link rel="stylesheet" href="../resources/css/defecto.css" />
        <link rel="stylesheet" href="../resources/css/admin.css" />

    </head>
    <body>

        <div id="pnlPrinAdmin" class="completo_div" >            
            <div id="contenedor">
                <div id="cabecera">
                    <img src="../resources/images/03799331630580127.png" width="80%" height="80%" 
                         alt="SIRENE" />
                </div>
                <div id="menu">
                    <div id="pnlmenu" title="Menu">

                        <ul id="tm1">  
                            <li> <a data-icon="ui-icon-home">Inicio</a>  
                                <ul>   
                                    <li><a>New</a>  
                                        <ul>  
                                            <li><a>Project</a></li>  
                                            <li><a>Other</a></li>  
                                        </ul>  
                                    </li>   

                                </ul> 
                            <li><a data-icon="ui-icon-person">Docente</a></li>   
                            <li><a data-icon="ui-icon-pencil">Estudiante</a></li> 
                            <li><a data-icon="ui-icon-note">Materias</a></li> 
                            <li><a data-icon="ui-icon-check">Notas</a></li> 
                            <li><a data-icon="ui-icon-script">Calificaci&oacute;n</a></li> 
                            <li><a data-icon="ui-icon-unlocked">Acceso</a></li> 
                            <li><a data-icon="ui-icon-wrench">Configuraci&oacute;n</a></li> 
                            <li><a data-icon="ui-icon ui-icon-arrowreturnthick-1-w">Quit</a></li> 



                            </li>  



                    </div>

                </div>			
                <div id="principal"> 
                    <div id="scroll">
                        <div id="pnlcontenidoadmin" >
                            <?php
                            for ($i = 0; $i < 100; $i++) {
                                echo "perrita <br />";
                            }
                            ?>
                        </div>
                    </div>
                </div>
                <div id="pie">pie</div>
            </div>          
        </div> 

    </body>
</html>
