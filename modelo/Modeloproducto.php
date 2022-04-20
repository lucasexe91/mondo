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
        $texto = "%".$nombre."%";
        $query = $this-> getDb()->prepare('SELECT * FROM productos WHERE nombre LIKE ?');
        $query->execute([$texto]);
        return $query->fetchAll(PDO::FETCH_OBJ);
    }

    //crea un producto nuevo
    function nuevo($nombre,$modo,$composicion,$descripcion,$advertencias,$caducidad,$image = NULL){
        $pathImg = null;
        if ($image)
            $pathImg = $this->uploadImage($image);

        $query = $this->getDb()->prepare( 'INSERT INTO productos (nombre, mododeuso, composicion, descripcion, advertencias, caducidad, imagen) VALUES(?,?,?,?,?,?,?)');
        $query->execute([$nombre,$modo,$composicion,$descripcion,$advertencias,$caducidad,$pathImg]);
    }

    //guarda un producto por id
    function guardarmodificado($id,$nombre,$modo,$composicion,$descripcion,$advertencias,$caducidad,$image = NULL){
        $pathImg = null;
        if ($image)
            $pathImg = $this->uploadImage($image);
        if ($pathImg == NULL){
            $query = $this->getDb()->prepare('UPDATE productos SET nombre = ?, mododeuso = ?, composicion = ?, descripcion = ?, advertencias=?, caducidad=? WHERE id = ?');
            $query->execute([$nombre,$modo,$composicion,$descripcion,$advertencias,$caducidad,$id]);
        }else{
            $query = $this->getDb()->prepare('UPDATE productos SET nombre = ?, mododeuso = ?, composicion = ?, descripcion = ?, advertencias=?, caducidad=?, imagen = ? WHERE id = ?');
            $query->execute([$nombre,$modo,$composicion,$descripcion,$advertencias,$caducidad,$pathImg,$id]);
        }
    }

    //carga imagen al servidor y retorna su URL
    function uploadImage($image) {
        $target = 'images/' . uniqid() . '.jpg';
        move_uploaded_file($image, $target);
        return $target;
    }

    //borra un producto por id
    function borrar($id){
        $query = $this->getDb()->prepare('DELETE FROM productos WHERE id = ?');
        $query->execute([$id]);
    }

}
?>