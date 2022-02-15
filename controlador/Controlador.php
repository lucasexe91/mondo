<?php

include_once 'modelo/Modeloproducto.php';
include_once 'vista/vistaproducto.php';
include_once 'vista/vistaadmin.php';

class Control {
    private $modelador;
    private $visor;
    private $visoradmin;

    //crea nuevas instancias de modelos y vistas
    function __construct(){
        $this->visor = new vistaproducto();
        $this->modelador = new modeloproducto();
        $this->visoradmin = new vistaadmin();
    }
    
    //mostrar producto
    function mostrarproducto($id){
        $producto= $this->modelador->get($id);
        $this->visor->show($producto);
    }

}


?>