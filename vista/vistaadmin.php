<?php
require_once('Vista.php');
include_once('helper/auth.helper.php');

class vistaadmin extends Visor{

    public function __construct(){
        parent::__construct();
    }

    //muestra un libro especifico
    function showlogin($error=null){
        $this->getSmarty()->assign('error', $error);
        $this->getSmarty()->display('templates/login.tpl');
    }

    function showpanel(){
        $this->getSmarty()->display('templates/panel.tpl');
    }
}
?>