<?php
  define('BASE_URL', '//'.$_SERVER['SERVER_NAME'] . ':' . $_SERVER['SERVER_PORT'] . dirname($_SERVER['PHP_SELF']).'/');

  require_once('controlador/Controlador.php');
  require_once('controlador/Controlasesion.php');
  
  if($_GET['action']=='')
    $_GET['action']= 'home';
  
  $urlParts = explode('/',$_GET['action']);
  $controlador = new Control();
  $controlasesion = new controlsesion();

  switch($urlParts[0]){
      case 'home':
        $controlasesion->mostrarlogin();
        break;
      case 'panel':
        $controlasesion->mostrarpanel();
        break;
      case 'verify':
        $controlasesion->verify();
        break;
      case 'producto':
        $controlador->mostrarproducto($urlParts[1]);
        break;
      case 'buscar':
        $controlador->buscanombre();  //nombre por POST
        break;
      case 'editar':
        $controlador->modificar($urlParts[1]);  //nuevo falta tpl
        break;
      case 'borrar':
        $controlador->borrar($urlParts[1]);  //nuevo falta tpl
        break;
      case 'nuevo':
        $controlador->nuevo();
        break;
      case 'guardar':
        $controlador->guardar();
        break;
      case 'logout':
        $controlasesion->logout();
        break;
      default:
        echo '<h1> Error 404 </h1>';
        break;
  }

?>