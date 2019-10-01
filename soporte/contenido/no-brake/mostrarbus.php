<?php

  //conectar con servidor formato 'host', 'usuario', 'contraseña', 'base de datos'
  $conectar=mysqli_connect('localhost', 'root', '', 'test');
//verificar conexion
  if (!$conectar){
    echo"no se pudo conectar con el servidor";
  }
  //OBTENEMOS LOS DATOS DE LA DB Y AGREGAMOS EL FILTRO DE BUSQUEDA
  $salida="";
  $query="SELECT * FROM no_brake ORDER By id_no_brake";
  if (isset($_POST['consulta'])) {
  $q = $conectar->real_escape_string($_POST['consulta']);
  $query = "SELECT id_no_brake, marca, modelo, serie FROM no_brake
  WHERE id_no_brake LIKE '%".$q."%' OR marca LIKE '%".$q."%' OR modelo LIKE '%".$q."%' OR serie LIKE '%".$q."%'";
}//

//--MOSTRAR LA TABLA CON EL CONTENIDO DE LA DB--///
  $resultado = $conectar->query($query);

//SI EL RESULTADO ENCUENTRA DATOS SE ARMARA UNA CABECERA DE TABLA
if ($resultado->num_rows> 0){
 $salida.="<table>
   <thead>
    <tr>
     <td>id</td>
     <td>marca</td>
     <td>modelo</td>
     <td>serie</td>
   </tr>
   </thead>
   <tbody id='cont'>";
//MIENTRAS ESOS DATOS COINCIDAN, SE ARMARA LA TABLA RESPONDIENDO A LOS DATOS
while ($fila= $resultado->fetch_assoc()) {
 $salida.="<tr>
 <td>".$fila['id_no_brake']."</td>
 <td>".$fila['marca']."</td>
 <td>".$fila['modelo']."</td>
 <td>".$fila['serie']."</td>
 </tr>";
}

//<select><option>".$fila['nombre']."</option></select>
//SIN DATOS QUE COMPARAR SE MOSTRARA LA TABLA COMPLETA
 $salida.="</tbody></table>";
}
else {
//DE NO COINCIDIR SE PEDIRA REVISION
  $salida.="";
}
echo utf8_encode($salida);
$conectar->close();
?>
