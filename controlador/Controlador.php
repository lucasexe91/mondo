<?php

include_once 'modelo/Modeloproducto.php';
include_once 'vista/vistaproducto.php';

class Control {
    private $modelador;
    private $visor;

    //crea nuevas instancias de modelos y vistas
    function __construct(){
        $this->visor = new vistaproducto();
        $this->modelador = new modeloproducto();
    }
    
    //mostrar producto
    function mostrarproducto($id){
        $producto= $this->modelador->get($id);
        $this->visor->show($producto);
    }

    //muestra el panel de edicion (admin only)
    function mostrarpanel(){
        //para hacer
    }

    //muestra pantalla de logueo
    function mostrarlogin(){
        //para hacer
    }

}


?>