<?php

require_once('Modelo.php');

class modeloproducto extends Modelo {
    function getAll(){
        $query = $this-> getDb()->prepare('SELECT * FROM productos');
        $query->execute();
        return $query->fetchAll(PDO::FETCH_OBJ);
    }

    //recupera el libro por id
    function get($id){
        $query = $this-> getDb()->prepare('SELECT * FROM productos WHERE id = ?');
        $query->execute([$id]);
        return $query->fetch(PDO::FETCH_OBJ);
    }
}
?>