<?php

require_once('Modelo.php');

class modeloproducto extends Modelo {

    //toma todos los productos
    function getAll(){
        $query = $this-> getDb()->prepare('SELECT * FROM productos');
        $query->execute();
        return $query->fetchAll(PDO::FETCH_OBJ);
    }

    //recupera el producto por id
    function get($id){
        $query = $this-> getDb()->prepare('SELECT * FROM productos WHERE id = ?');
        $query->execute([$id]);
        return $query->fetch(PDO::FETCH_OBJ);
    }

    //recupera el producto por nombre
    function getproducto($nombre){
        $query = $this-> getDb()->prepare('SELECT * FROM productos WHERE nombre = ?');
        $query->execute([$nombre]);
        return $query->fetch(PDO::FETCH_OBJ);
    }


    //crea un producto nuevo
    function nuevo($nombre,$modo,$composicion,$descripcion,$image = NULL){
        $pathImg = null;
        if ($image)
            $pathImg = $this->uploadImage($image);

        $query = $this->getDb()->prepare( 'INSERT INTO productos (nombre, mododeuso, composicion, descripcion, imagen) VALUES(?,?,?,?,?)');
        $query->execute([$nombre,$modo,$composicion,$descripcion,$pathImg]);
    }

    function guardarmodificado($id,$nombre,$modo,$composicion,$descripcion,$image = NULL){
        $pathImg = null;
        if ($image)
            $pathImg = $this->uploadImage($image);

        $query = $this->getDb()->prepare('UPDATE productos SET nombre = ?, mododeuso = ?, composicion = ?, descripcion = ?, imagen = ? WHERE id = ?');
        $query->execute([$nombre,$modo,$composicion,$descripcion,$pathImg,$id]);
    }

    //carga imagen al servidor y retorna su URL
    function uploadImage($image) {
        $target = 'images/' . uniqid() . '.jpg';
        move_uploaded_file($image, $target);
        return $target;
    }

    function borrar($id){
        $query = $this->getDb()->prepare('DELETE FROM productos WHERE id = ?');
        $query->execute([$id]);
    }

}
?>