<!--
To change this template, choose Tools | Templates
and open the template in the editor.
-->
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Datos-Docentes</title>
        <script type="text/javascript" src="resources/js/jquery.js"></script>
        <script type="text/javascript" src="resources/js/jquery-ui.js"></script>
        <script type="text/javascript" src="resources/js/primeui-0.9.6.js"></script>
        <script type="text/javascript" src="docente/js/docente.js"></script>

        <link rel="stylesheet" href="resources/css/primeui-0.9.6.css" />  
        <link rel="stylesheet" href="resources/css/jquery-ui.css" />  
        <link rel="stylesheet" href="resources/css/jquery-ui-1.10.3.custom.min.css" />
        <link rel="stylesheet" href="resources/css/jquery-ui-1.10.3.custom.css" />
        <link rel="stylesheet" href="resources/css/defecto.css" />
    </head>
    <body>
        <?php
        // put your code here
        ?>
         <div id="pnlPrindocente" class="completo_div" >
            
            <div id="acordiondocente">  
    <h3>Datos Personales Docente</h3>  
    <div>  
     
      <div class="centraTabla" >

                                <table style="text-align: center" colspan="10" scope="colgroup"  CELLPADDING="1" WIDTH="100%">
                                       <tbody>
                               <tr>
                                    <td style="text-align: right">Primer Nombre: *</td>  <td><input id="txtprimernombre"  type="text"/></td>
                                     <td style="text-align: right">Segundo Nombre:</td>     <td><input id="txtsegundonombre"  type="text"/></td>
                                     <td style="text-align: right">Primer Apellido: *</td>  <td><input id="txtprimerapellido"  type="text"/></td>
                                     <td style="text-align: right">Segundo Apellido:</td>   <td><input id="txtsegundoapellido"  type="text" /></td> 
                               </tr>
                                   
                                             
                                <tr>
                                    <td style="text-align: right">Sexo: *</td>  <td><select name="sexo"> 
                                                                                <option>Seleccionar Tipo Sexo</option>
                                                                                <option>Masculino</option>
                                                                                <option>Femenino</option>
                                                                                <option>Otro</option>
                                                                                </select></td>
                                     <td style="text-align: right">Tipo Identificación *</td>     <td> <select name="documento">
                                                                                                 <option>Seleccionar Documento</option>
                                                                                                 <option>Cedula Ciudadania</option>
                                                                                                 <option>Tarjeta de Identidad</option>
                                                                                                 <option>Cedula Extranjera</option>
                                                                                                 </select></td>
                                     <td style="text-align: right">N°.Identificacion: *</td>   <td><input id="txtidenficacion"  type="text"/></td>
                                     <td style="text-align: right">Fecha Nacimiento: *</td>   <td><input id="txtfechanacimiento"  type="text"/></td>
                                  </tr>            
                                                                                                                  
                                                                             
                                    </tbody>                                
                                </table>
                            </div>
    </div>    
       
   
  
    <h3>Datos De Contacto Docente</h3>  
    <div>  
       <div class="centraTabla" >

                                <table style="text-align: center" colspan="6" scope="colgroup"  CELLPADDING="1" WIDTH="70%">
                                  
                                       <tbody>
                                        
                                      <tr>
                                     <td style="text-align: right">Telefono: *</td>   <td><input id="txttelefono"  type="text" /></td>
                                     <td style="text-align: right">Movil: *</td>     <td><input id="txtmovil"  type="text" /></td>
                                     <td style="text-align: right">Email *</td>       <td><input id="txtemail"  type="text"/></td>
                              </tr>
                                        
                                    </tbody>                                
                                </table>
                            </div>
    </div>    
  
    <h3>Domicilio Docente</h3>  
    <div>
       <div class="centraTabla" >
           
           
            <table style="text-align: center" colspan="10" scope="colgroup"  CELLPADDING="1" WIDTH="80%">
                                       <tbody>
                                                      
                                           
                                <tr>
                                     <td style="text-align: right">País: *</td>  <td><select name="pais">
                         <option>seleccionar País</option>
                         <option>Colombia</option>
                         <option>Ecuador</option>
                         <option>Peru</option>
                         </select></td>
                                     <td style="text-align: right">Ciudad: *</td>     <td><select name="ciudad">
                         <option>seleccionar Ciudad</option>
                         <option>Popayan</option>
                         <option>Cali</option>
                         <option>Pasto</option>
                         </select></td>
                                     <td style="text-align: right">Barrio: *</td>    <td><input id="txtbarrio"  type="text" /></td>
                                     <td style="text-align: right">Dirección *</td>    <td><input id="txtdireccion"  type="text" /></td>
                                  </tr>            
                                        
                                                                       
                                    </tbody> 
                                                                        
                            
                                </table>
           
           
                            </div>         
     
    </div>    
</div> 
     
             
 </div> 
        <br>
        <br>
        <br>
        <table style="text-align: center">
            
            <tr>
              <td colspan="2" style="text-align: left">
              <button id="btnguardar" type="button">Guardar</button>
              <button id="btneliminar" type="button">Eliminar</button>
              <button id="btnsalir" type="button">Salir</button>
              </td>
              </tr>   
              </table>
        
      
                
                                                                         
         
    </body>
</html>
