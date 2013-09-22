<?php

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of ManejadorBD
 *
 * @author david
 */
include './Datasource.php';

class ManejadorBD {
    //put your code here
    
    public $datasource;
    public $conn;
    
    function conectar() {
        $con = mysql_connect("localhost", "root", "root");
        if ($con) {
            print "Me conecte";
            $sel = mysql_select_db("sirene", $con);

            if ($sel == false) {
                print "Error seleccionando la base de datos.";
                exit();
            }
        } else {
            print "Error conectando la base de datos.";
            exit();
        }
        
        return $con;
    }
    
    public function getDatasource() {
        return $this->datasource;
    }

    public function setDatasource($datasource) {
        $this->datasource = $datasource;
    }
    
    public function getConn() {
        return $this->conn;
    }

    public function setConn($conn) {
        $this->conn = $conn;
    }




    
    
    
    
}

?>
