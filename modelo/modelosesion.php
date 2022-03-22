<?php
require_once('libs/phpqrcode.php');
require_once('Modelo.php');

class modelosesion extends Modelo {
    //recupera todos los usuarios por medio de la variable $username
    public function getUserByUsername($username) {
        $query = $this->getDb()->prepare('SELECT * FROM usuarios WHERE usuario = ?');
        $query->execute([$username]);
        return $query->fetch(PDO::FETCH_OBJ);
    }

    //retorna id de un nombre de user
    public function getiduserbyusername($username){
        $query = $this->getDb()->prepare('SELECT id FROM usuarios WHERE usuario = ?');
        $query->execute([$username]);
        return $query->fetch(PDO::FETCH_OBJ);
    }

    //hasheo de contraseña y creacion de usuario en base de datos
    public function add($user, $pass) {

        $passEnc = password_hash($pass, PASSWORD_DEFAULT);

        $query = $this->getDb()->prepare('INSERT INTO usuarios (pass, usuario) 
                                            VALUES (?, ?)');
        $query->execute([$passEnc, $user]);

    }

    public function generarQr($id){
        QRcode::png("localhost/mondo/producto".$id);
    }
}