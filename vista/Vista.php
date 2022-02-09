<?php

require_once('libs/Smarty.class.php');

class Visor  {

    private $smarty;

    public function __construct() {
        $this->smarty = new Smarty();
        $this->smarty->assign('base_url', BASE_URL);
    }    

    public function getSmarty() {
        return $this->smarty;        
    }
}
?>