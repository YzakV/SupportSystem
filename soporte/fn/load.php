<?php
  //conectar con servidor formato 'host', 'usuario', 'contraseña', 'base de datos'
  $conectar=mysqli_connect('localhost', 'root', '', 'test');
  mysqli_set_charset($conectar, "utf8");
//verificar conexion
  if (!$conectar){
    echo"no se pudo conectar con el servidor";
  }
if (!empty($_POST)){
  $user = $_POST["usuario"];
  $pass = $_POST["contraseña"];
  $res = mysqli_query($conectar, "SELECT * FROM login WHERE usuario = '$user' AND contraseña = '$pass'");
    if ($res->num_rows>0){
      while ($row = mysqli_fetch_array($res)) {
        @session_start();
        $_SESSION["usuario"]=$row["usuario"];
        $_SESSION["id"]=$row["id"];
        header('Location: ../index.php');
        }
      }else{
        echo "datos invalidos";
    }
    
      echo "datos invalidos";
  }
 ?>
