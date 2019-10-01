<?php
$conectar=mysqli_connect('localhost', 'root', '', 'test');
  if (!$conectar){
    echo"no se pudo conectar con el servidor";
  }
  $salida="";

  if (isset($_POST['equip'])) {
  $q = $conectar->real_escape_string($_POST['equip']);
  $query = "SELECT * FROM usuario WHERE usuario = '$q' ORDER BY marca";

  $resultado = $conectar->query($query);
  if ($resultado->num_rows> 0){
  while ($fila= $resultado->fetch_assoc()) {
    $salida.=$fila['marca']."/".$fila['modelo']."/".$fila['no_serie']."/".$fila['inventario'];
    }
  }
}
/*here closes if*/
else {
  $salida.="autollenado";
}

echo utf8_encode($salida);

$conectar->close();
?>
