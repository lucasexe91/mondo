<?php
require_once('Vista.php');

class vistaproducto extends Visor{

    public function __construct(){
        parent::__construct();
    }

    //muestra un libro especifico
    function show($producto){
        $this->getSmarty()->assign('producto', $producto);
        $this->getSmarty()->display('templates/producto.tpl');
    }

    function nuevo(){
        $this->getSmarty()->display('templates/nuevo.tpl');
    }
    function showeditar($producto){
        $this->getSmarty()->assign('producto', $producto);
        $this->getSmarty()->display('templates/editar.tpl');
    }
}
?>