<?php
  define('BASE_URL', '//'.$_SERVER['SERVER_NAME'] . ':' . $_SERVER['SERVER_PORT'] . dirname($_SERVER['PHP_SELF']).'/');

  require_once('controlador/Controlador.php');
  
  if($_GET['action']=='')
    $_GET['action']= 'home';
  
  $urlParts = explode('/',$_GET['action']);
  $controlador = new Control();

  switch($urlParts[0]){
      case 'home':
        $controlador->mostrarlogin();
        break;
      case 'panel':
        $controlador->mostrarpanel();
        break;
      case 'producto':
        $controlador->mostrarproducto($urlParts[1]);
        break;
      default:
        echo '<h1> Error 404 :´c </h1>';
        break;
  }

?>