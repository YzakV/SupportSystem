<?php

  //conectar con servidor formato 'host', 'usuario', 'contraseña', 'base de datos'
  $conectar=mysqli_connect('localhost', 'root', '', 'test');
//verificar conexion
  if (!$conectar){
    echo"no se pudo conectar con el servidor";
  }
  //OBTENEMOS LOS DATOS DE LA DB Y AGREGAMOS EL FILTRO DE BUSQUEDA
  $salida="";
  $query="SELECT * FROM usuario ORDER By inventario"; //LENGTH(inventario),
  if (isset($_POST['user'])) {
  $q = $conectar->real_escape_string($_POST['user']);
  $query = "SELECT * FROM usuario
  WHERE  id_area = '$q'";
}//

//--MOSTRAR LA TABLA CON EL CONTENIDO DE LA DB--///
  $resultado = $conectar->query($query);

//SI EL RESULTADO ENCUENTRA DATOS SE ARMARA UNA CABECERA DE TABLA
if ($resultado->num_rows> 0){
 $salida.="<table class='table table-responsive'>
   <thead>
    <tr>
    <td>Usuario</td>
    <td>Equipo</td>
     <td>Area</td>
   </tr>
   </thead>
   <tbody id='cont'>";
//MIENTRAS ESOS DATOS COINCIDAN, SE ARMARA LA TABLA RESPONDIENDO A LOS DATOS
while ($fila= $resultado->fetch_assoc()) {
 $salida.="<tr>
 <td>".$fila['usuario']."</td>
 <td>".$fila['inventario']."</td>
 <td>".$fila['id_area']."</td>

 </tr>";
}
//SIN DATOS QUE COMPARAR SE MOSTRARA LA TABLA COMPLETA
 $salida.="</tbody></table>";
}
else {
//DE NO COINCIDIR SE PEDIRA REVISION
  $salida.="revisar datos ingresados";
}
echo utf8_encode($salida);
$conectar->close();
?>
