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

    function nuevo(){
        $this->visor->nuevo();
    }

    function guardar(){
        $nombre = $_POST['nombre'];
        $modo = $_POST['modo'];
        $composicion = $_POST['composicion'];
        $descripcion = $_POST['descripcion'];

        if($_FILES['imagen']['type'] == "image/jpg" || $_FILES['imagen']['type'] == "image/jpeg" || $_FILES['imagen']['type'] == "image/png"){
            $this->modelador->nuevo($nombre,$modo,$composicion,$descripcion,  $_FILES['imagen']['tmp_name']);
            header("Location: " . BASE_URL . 'panel');
        } else {
            $this->modelador->nuevo($nombre,$modo,$composicion,$descripcion);
        header("Location: " . BASE_URL . 'panel');}
    }

}


?>