<?php
$conectar=mysqli_connect('localhost', 'root', '', 'test');
  if (!$conectar){
    echo"no se pudo conectar con el servidor";
  }
  $salida="";
  $query = "SELECT area FROM area ORDER BY area";
  $resultado = $conectar->query($query);
  if ($resultado->num_rows> 0){
  while ($fila= $resultado->fetch_assoc()) {
    $salida.="<option>".$fila['area']."</option>";
    }
  }
  echo utf8_encode($salida);
  $conectar->close();
  ?>
