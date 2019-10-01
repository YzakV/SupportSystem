<?php
$conectar=mysqli_connect('localhost', 'root', '', 'test');
  if (!$conectar){
    echo"no se pudo conectar con el servidor";
  }
  $salida="";
  $query="SELECT * FROM reporte WHERE status like 'pendiente' ORDER By id_reporte DESC  ";
  $resultado = $conectar->query($query);

if ($resultado->num_rows> 0){
 $salida.="";
while ($fila= $resultado->fetch_assoc()) {
 $salida.="
 <div id='reporte' class='reporte'>
  <div class='show'>
  <div><span>Asunto: </span>".$fila['asunto']."</div>
  <div><span>Fecha: </span>".$fila['fecha']."</div>
  <div><span>Hora: </span>".$fila['Hora']."</div>
  <div><span>ID Reporte: </span>".$fila['id_reporte']."</div>
  <div><span>Area: </span>".$fila['area']."</div>
  <div><span>Usuario: </span>".$fila['nombre']."</div>
  <div><span>Descripcion: </span>".$fila['descripcion']."</div>
  <div><span>Status: </span>".$fila['status']."</div>
  <a href='atender.php'>Atender</a>
  </div>
  </div>";
  }
}

else {
  $salida.="";
}
echo utf8_encode($salida);
$conectar->close();
?>
