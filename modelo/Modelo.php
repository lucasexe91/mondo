<?php

class Modelo {

    private $db;

    function __construct()
    {
        $this->db = $this->create_connection();
    }

    public function create_connection() {
        $host = 'localhost';
        $userName = 'root';
        $password = '';
        $database = 'mondo';

        try {
            $db = new PDO("mysql:host=$host;dbname=$database;charset=utf8", $userName, $password);
            $db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_WARNING);
        } catch (Exception $e) {
            echo "error al conectarse a la base de datos D:";
        }

        return $db;
    }

    public function getDb() {
        return $this->db;
    }
}