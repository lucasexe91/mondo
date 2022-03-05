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

    //busca producto por nombre
    function buscanombre(){
        $nombre = $_POST[''];  //falta tpl (?)
        $producto = $this->modeloproducto->getproducto($nombre);
        $this->vistaproducto->show($producto);
    }

    function nuevo(){
        $this->visor->nuevo();
    }
    
    //guarda un nuevo producto
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

    // Desde aca faltan tpls :v (de nada (?))

    //borra un productos por id
    function borrar($id){
        $query = $this->getDb()->prepare('DELETE FROM productos WHERE id = ?');
        $query->execute([$id]);
    }

    //modifica un producto
    function modificar($id,$nombre,$modo,$composicion,$descripcion,$image = NULL){
        $pathImg = null;
        if ($image)
            $pathImg = $this->uploadImage($image);

        $query = $this-> getDb()->prepare('UPDATE productos SET nombre = ?, modo = ?, composicion = ?, descripcion = ?, imagen = ? WHERE id = ?');
        $query->execute([$nombre,$modo,$composicion,$descripcion,$pathImg,$id]);
    }

}


?>