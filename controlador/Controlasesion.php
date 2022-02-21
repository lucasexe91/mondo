<?php
    include_once 'vista/vistaadmin.php';
    include_once 'modelo/modelosesion.php';
    include_once 'modelo/Modeloproducto.php';

    class controlsesion{

        public function __construct(){
            $this->modelosesion = new modelosesion();
            $this->vistaadmin = new vistaadmin();
            $this->modeloproducto = new modeloproducto();
        }

        public function mostrarlogin(){
            $this->vistaadmin->showlogin();
        }

        public function mostrarpanel(){
            if (!isset($_SESSION['USERNAME'])){
                $this->vistaadmin->showlogin();
            }else{
                $productos = $this->modeloproducto->getAll();
                $this->vistaadmin->showpanel($productos);
            }      
        }

        public function logout(){
            AuthHelper::logout();
            header("Location: " . BASE_URL . 'home');
        }


        public function verify() {
            if(!empty($_POST['username']) && !empty($_POST['password'])) {
                $user = $_POST['username'];
                $pass = $_POST['password'];
                $userDb = $this->modelosesion->getUserByUsername($user);
    
                if (!empty($userDb) && password_verify($pass, $userDb->pass)) {
                    AuthHelper::login($userDb);
                    header('Location: ' . BASE_URL . "panel");
                } else 
                    $this->vistaadmin->showlogin("Login incorrecto, password o usuario incorrecto");
            } else {
                $this->vistaadmin->showlogin("Login incompleto");
            }
        }

    }
    
?>