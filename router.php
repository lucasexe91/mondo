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
        $controlasesion->mostrarlogin(); //muestra logueo
        break;
      case 'panel':
        $controlasesion->mostrarpanel(); //muestra panel de admin
        break;
      case 'verify':
        $controlasesion->verify(); //verifica datos de logueo
        break;
      case 'producto':
        $controlador->mostrarproducto($urlParts[1]); //muestra un producto por id
        break;
      case 'buscar':
        $controlasesion->buscanombre();  //nombre por POST
        break;
      case 'qr':
        $controlasesion->qr($urlParts[1]);  //genera qr >:c
        break;
      case 'editar':
        $controlador->editar($urlParts[1]);  //llama al tpl editar
        break;
      case 'modificar':
        $controlador->modificar($urlParts[1]); //guarda un producto modificado
        break;
      case 'borrar':
        $controlador->borrar($urlParts[1]);  
        break;
      case 'nuevo':
        $controlador->nuevo(); //muestra el formulario de producto nuevo
        break;
      case 'guardar':
        $controlador->guardar(); //guarda un producto nuevo
        break;
      case 'logout':
        $controlasesion->logout(); //cierra la sesion activa
        break;
      default:
        echo '<h1> Error 404 </h1>';
        break;
  }

?>