<?php

  //conectar con servidor formato 'host', 'usuario', 'contraseña', 'base de datos'
  $conectar=mysqli_connect('localhost', 'root', '', 'test');
//verificar conexion
  if (!$conectar){
    echo"no se pudo conectar con el servidor";
  }
  //OBTENEMOS LOS DATOS DE LA DB Y AGREGAMOS EL FILTRO DE BUSQUEDA
  $salida="";
  $query="SELECT * FROM equipos ORDER By id_equipo";
  if (isset($_POST['consulta'])) {
  $q = $conectar->real_escape_string($_POST['consulta']);
  $query = "SELECT id_equipo, id_cargador, id_mouse, id_monitor FROM equipos
  WHERE id_monitor LIKE '%".$q."%' ";
}//

//--MOSTRAR LA TABLA CON EL CONTENIDO DE LA DB--///
  $resultado = $conectar->query($query);

//SI EL RESULTADO ENCUENTRA DATOS SE ARMARA UNA CABECERA DE TABLA
if ($resultado->num_rows> 0){
 $salida.="<table>
   <thead>
    <tr>
     <td>id cargador</td>
     <td>id mouse</td>
     <td>id teclado</td>
     <td>id monitor</td>
   </tr>
   </thead>
   <tbody id='cont'>";
//MIENTRAS ESOS DATOS COINCIDAN, SE ARMARA LA TABLA RESPONDIENDO A LOS DATOS
while ($fila= $resultado->fetch_assoc()) {
 $salida.="<tr>
 <td>".$fila['id_monitor']."</td>
 <td>".$fila['id_cargador']."</td>
 <td>".$fila['id_mouse']."</td>
 <td>".$fila['id_equipo']."</td>
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
