
<?php


 /**
  * Departamento Value Object.
  * This class is value object representing database table tbldepartamento
  * This class is intented to be used together with associated Dao object.
  */

 /**
  * This sourcecode has been generated by FREE DaoGen generator version 2.4.1.
  * The usage of generated code is restricted to OpenSource software projects
  * only. DaoGen is available in http://titaniclinux.net/daogen/
  * It has been programmed by Tuomo Lukka, Tuomo.Lukka@iki.fi
  *
  * DaoGen license: The following DaoGen generated source code is licensed
  * under the terms of GNU GPL license. The full text for license is available
  * in GNU project's pages: http://www.gnu.org/copyleft/gpl.html
  *
  * If you wish to use the DaoGen generator to produce code for closed-source
  * commercial applications, you must pay the lisence fee. The price is
  * 5 USD or 5 Eur for each database table, you are generating code for.
  * (That includes unlimited amount of iterations with all supported languages
  * for each database table you are paying for.) Send mail to
  * "Tuomo.Lukka@iki.fi" for more information. Thank you!
  */




class Departamento {

    /** 
     * Persistent Instance variables. This data is directly 
     * mapped to the columns of database table.
     */
    var $idDepartamento;
    var $nombre_departamento;
    var $secpais;
    var $longitud;
    var $latitud;



    /** 
     * Constructors. DaoGen generates two constructors by default.
     * The first one takes no arguments and provides the most simple
     * way to create object instance. The another one takes one
     * argument, which is the primary key of the corresponding table.
     */

    function Departamento () {

    }

    /* function Departamento ($idDepartamentoIn) {

          $this->idDepartamento = $idDepartamentoIn;

    } */


    /** 
     * Get- and Set-methods for persistent variables. The default
     * behaviour does not make any checks against malformed data,
     * so these might require some manual additions.
     */

    function getIdDepartamento() {
          return $this->idDepartamento;
    }
    function setIdDepartamento($idDepartamentoIn) {
          $this->idDepartamento = $idDepartamentoIn;
    }

    function getNombre_departamento() {
          return $this->nombre_departamento;
    }
    function setNombre_departamento($nombre_departamentoIn) {
          $this->nombre_departamento = $nombre_departamentoIn;
    }

    function getSecpais() {
          return $this->secpais;
    }
    function setSecpais($secpaisIn) {
          $this->secpais = $secpaisIn;
    }

    function getLongitud() {
          return $this->longitud;
    }
    function setLongitud($longitudIn) {
          $this->longitud = $longitudIn;
    }

    function getLatitud() {
          return $this->latitud;
    }
    function setLatitud($latitudIn) {
          $this->latitud = $latitudIn;
    }



    /** 
     * setAll allows to set all persistent variables in one method call.
     * This is useful, when all data is available and it is needed to 
     * set the initial state of this object. Note that this method will
     * directly modify instance variales, without going trough the 
     * individual set-methods.
     */

    function setAll($idDepartamentoIn,
          $nombre_departamentoIn,
          $secpaisIn,
          $longitudIn,
          $latitudIn) {
          $this->idDepartamento = $idDepartamentoIn;
          $this->nombre_departamento = $nombre_departamentoIn;
          $this->secpais = $secpaisIn;
          $this->longitud = $longitudIn;
          $this->latitud = $latitudIn;
    }


    /** 
     * hasEqualMapping-method will compare two Departamento instances
     * and return true if they contain same values in all persistent instance 
     * variables. If hasEqualMapping returns true, it does not mean the objects
     * are the same instance. However it does mean that in that moment, they 
     * are mapped to the same row in database.
     */
    function hasEqualMapping($valueObject) {

          if ($valueObject->getIdDepartamento() != $this->idDepartamento) {
                    return(false);
          }
          if ($valueObject->getNombre_departamento() != $this->nombre_departamento) {
                    return(false);
          }
          if ($valueObject->getSecpais() != $this->secpais) {
                    return(false);
          }
          if ($valueObject->getLongitud() != $this->longitud) {
                    return(false);
          }
          if ($valueObject->getLatitud() != $this->latitud) {
                    return(false);
          }

          return true;
    }



    /**
     * toString will return String object representing the state of this 
     * valueObject. This is useful during application development, and 
     * possibly when application is writing object states in textlog.
     */
    function toString() {
        $out = $this->getDaogenVersion();
        $out = $out."\nclass Departamento, mapping to table tbldepartamento\n";
        $out = $out."Persistent attributes: \n"; 
        $out = $out."idDepartamento = ".$this->idDepartamento."\n"; 
        $out = $out."nombre_departamento = ".$this->nombre_departamento."\n"; 
        $out = $out."secpais = ".$this->secpais."\n"; 
        $out = $out."longitud = ".$this->longitud."\n"; 
        $out = $out."latitud = ".$this->latitud."\n"; 
        return $out;
    }


    /**
     * Clone will return identical deep copy of this valueObject.
     * Note, that this method is different than the clone() which
     * is defined in java.lang.Object. Here, the retuned cloned object
     * will also have all its attributes cloned.
     */
    function clonar() {
        $cloned = new Departamento();

        $cloned->setIdDepartamento($this->idDepartamento); 
        $cloned->setNombre_departamento($this->nombre_departamento); 
        $cloned->setSecpais($this->secpais); 
        $cloned->setLongitud($this->longitud); 
        $cloned->setLatitud($this->latitud); 

        return $cloned;
    }



    /** 
     * getDaogenVersion will return information about
     * generator which created these sources.
     */
    function getDaogenVersion() {
        return "DaoGen version 2.4.1";
    }

}

?>