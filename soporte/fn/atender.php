<?php

  //conectar con servidor formato 'host', 'usuario', 'contraseña', 'base de datos'
  $conectar=mysqli_connect('localhost', 'root', '', 'test');
//verificar conexion
  if (!$conectar){
    echo"no se pudo conectar con el servidor";
  }
  //OBTENEMOS LOS DATOS DE LA DB Y AGREGAMOS EL FILTRO DE BUSQUEDA
  $salida="";
  if (isset($_POST['consulta'])) {
  $q = $conectar->real_escape_string($_POST['consulta']);
  $query = "SELECT * FROM reporte WHERE id_reporte LIKE '$q' ";
  $resultado = $conectar->query($query);
if ($resultado->num_rows> 0){
 $salida.="";
 while ($fila= $resultado->fetch_assoc()) {
   $salida.="<form action='fn/edit.php' method='post' class='edicion'>
   <fieldset class='datosr'>
   <legend>Datos del Reporte</legend>
   <span>ID Reporte: <input name='id' value=".$fila['id_reporte']." readonly></input></span>
   <span>Fecha: </span>".$fila['fecha']."
   <span>Hora: </span>".$fila['Hora']."
   <span>Persona que Reporta: </span>".$fila['nombre']."
   <span>Asunto: </span>".$fila['asunto']."
   <span>Descripcion: </span>".$fila['descripcion']."
   <span>Tipo de Reporte: </span><input name='treporte' value=".$fila['treporte'].">
   <span>Tipo de Servicio: </span><input name='tservicio' value=".$fila['tservicio'].">
   </fieldset>

   <fieldset class='datosu'>
   <legend>Datos del Usuario</legend>
   <span>Provedor del Servicio: </span><input name='provedor' value=".$fila['provedor']."></input>
   <span>Usuario: </span>".$fila['usuario']."
   <span>Area: </span>".$fila['area']."
   <span>Responsable: </span>".$fila['encargado_area']."
   </fieldset>

   <fieldset class='de'>
   <legend>Datos del Equipo</legend>
   <span>Marca: </span>".$fila['marca']."
   <span>Modelo: </span>".$fila['modelo']."
   <span>Serie: </span>".$fila['serie']."
   <span>ID inventario: </span>".$fila['id_equipo']."
   </fieldset>

   <fieldset class='ac'>
   <legend>Actividades</legend>
   <span>Actividad: </span><textarea type='textarea' name='actividad' rows='10' cols='50'>".$fila['actividad']."</textarea>
   </fieldset>

   <fieldset class='fm'>
   <legend>Firma:</legend>
   <img src='".$fila['Firma']."'  alt='No se ha recibido la firma'></img>
   </fieldset>


   <fieldset class='cs'>
   <legend>Calificacion del Servicio</legend>
   <span>calidad: </span>".$fila['calidad']."
   <span>Atencion: </span>".$fila['atencion']."
   <span>Profesional: </span>".$fila['nivel']."
   <span>Tiempo Respuesta: </span>".$fila['tiempo']."
   </fieldset>

   <fieldset class='st'>
   <Legend>Status: </Legend>
   <span>".$fila['status']."</span>
  </fieldset>
   <button id='download' type='submit'>Guardar: </button>
  </form>
  ";
    }
  }else {
      echo "No Hay Reportes con ese ID";
  }

}


echo utf8_encode($salida);
$conectar->close();
?>
