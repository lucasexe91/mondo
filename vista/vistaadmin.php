<?php
require_once('Vista.php');
include_once('helper/auth.helper.php');

class vistaadmin extends Visor{

    public function __construct(){
        parent::__construct();
        $authHelper = new AuthHelper();
        $username = $authHelper->getLoggedUserName();
        $this->getSmarty()->assign('username', $username);
    }

    function showlogin($error=null){
        $this->getSmarty()->assign('error', $error);
        $this->getSmarty()->display('templates/login.tpl');
    }

    function showpanel($productos){
        $this->getSmarty()->assign('productos', $productos);
        $this->getSmarty()->display('templates/panel.tpl');
    }
    function nosencontro(){
        $this->getSmarty()->display('templates/404.tpl');
    }
}
?>