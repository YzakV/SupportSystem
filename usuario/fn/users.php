<?php
$conectar=mysqli_connect('localhost', 'root', '', 'test');
  if (!$conectar){
    echo"no se pudo conectar con el servidor";
  }
  $salida="";

  if (isset($_POST['consulta'])) {
  $q = $conectar->real_escape_string($_POST['consulta']);
  $query = "SELECT * FROM usuario WHERE id_area = '$q' ORDER BY usuario";

  $resultado = $conectar->query($query);
  if ($resultado->num_rows> 0){
  while ($fila= $resultado->fetch_assoc()) {
    $salida.="<option>".$fila['usuario']."</option>";
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
