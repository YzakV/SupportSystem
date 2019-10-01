<?php

  //conectar con servidor formato 'host', 'usuario', 'contraseña', 'base de datos'
  $conectar=mysqli_connect('localhost', 'root', '', 'facturacion');
//verificar conexion
  if (!$conectar){
    echo"no se pudo conectar con el servidor";
  }
  //OBTENEMOS LOS DATOS DE LA DB Y AGREGAMOS EL FILTRO DE BUSQUEDA
  $salida="";
  if (isset($_POST['consulta'])) {
  $q = $conectar->real_escape_string($_POST['consulta']);
  // $query = "SELECT * FROM detallefactura    inner join factura inner join producto   WHERE id LIKE '$q' ";
  $query = "SELECT * FROM detallefactura inner join factura ON detallefactura.nofactura = factura.nofactura
                                         inner join producto ON detallefactura.codproducto = producto.codigoproducto WHERE id LIKE '$q'";
  $resultado = $conectar->query($query);
if ($resultado->num_rows> 0){
 $salida.="";
 while ($fila= $resultado->fetch_assoc()) {
   $salida.="<div action='fn/edit.php' method='post' class='edicion'>
   <fieldset class='datosr'>
   <legend>Detalle Factura</legend>
   <span>ID fact: ".$fila['id']."</span>
   <span>Num Factura: ".$fila['nofactura']."</span>
   <span>Cod Producto: ".$fila['codproducto']."</span>
   <span>cantidadpedida: ".$fila['cantidadpedida']."</span>
   <span>Precio Total: ".$fila['preciototal']."</span>
   </fieldset>

  <fieldset class='datosu'>
  <legend>Factura</legend>
  <span>Num de Factura: ".$fila['nofactura']."</span>
  <span>Fecha: ".$fila['fecha']."</span>
  <span>Cod Cliente: ".$fila['codcliente']."</span>
  <span>Total Factura: ".$fila['totalfactura']."</span>
  </fieldset>

  <fieldset class='de'>
  <legend>Producto</legend>
  <span>codigoproducto: ".$fila['codigoproducto']."</span>
  <span>Descripcion: ".$fila['descripcion']."</span>
  <span>Proveedor: ".$fila['proveedor']."</span>
  <span>Preciocosto: ".$fila['preciocosto']."</span>
  <span>Preciocosto: ".$fila['precioventa']."</span>
  </fieldset>

  </div>
  ";
    }
  }else {
      echo "No Hay Reportes con ese ID";
  }

}


echo utf8_encode($salida);
$conectar->close();
?>
