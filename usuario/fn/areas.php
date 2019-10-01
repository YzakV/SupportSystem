<?php
$conectar=mysqli_connect('localhost', 'root', '', 'test');
  if (!$conectar){
    echo"no se pudo conectar con el servidor";
  }
  $salida="";

  if (isset($_POST['responsable'])) {
  // $q = $conectar->real_escape_string($_POST['responsable']);
  $q = utf8_decode($_POST['responsable']);

  $query = "SELECT responsable, id_area FROM area WHERE area LIKE '%".$q."%'";

  $resultado = $conectar->query($query);
  if ($resultado->num_rows> 0){
  while ($fila= $resultado->fetch_assoc()) {
    $salida.=$fila['responsable']."-".$fila['id_area'];
    }
  }
  else {
    $salida.="El area ingresada es incorrecta";
  }
}
/*here closes if*/
else {
  $salida.="El Area ingresada es incorrecta";
}

echo utf8_encode($salida);

$conectar->close();
?>
