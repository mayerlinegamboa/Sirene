<?php

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
require("../../common/datasource/Datasource.php");
require("../business/dao/Usuario/Usuario.php");
require("../business/dao/Usuario/UsuarioDao.php");




$opcion=$_POST['accion'];

switch ($opcion){
    
    case "iniciar":
        
        $login=$_POST['loginn'];
        $pass=$_POST['passs'];
        iniciarSesion($login, $pass);
        break;
    
}

function iniciarSesion($login,$pass){
   
    	$connection = new Datasource("localhost", "sirene", "root", "root");
	$usuarioDAO = new UsuarioDao();     
        
	// get all customers ordered by Name.
	$usuarioLogueado = $usuarioDAO->getObjectPassyLogin($connection, $login, $pass);        
        echo json_encode($usuarioLogueado);
        
    
            
}


?>
