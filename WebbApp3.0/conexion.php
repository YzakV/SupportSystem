<?php
error_reporting(E_ALL);
$conexion = new mysqli("localhost","root","","test");

if($conexion){
   echo "";
}else{
   echo "Error de conexion";
}

$num = $_POST['num'];
$calidad = $_POST['cal'];
$atencion = $_POST['atn'];
$nivel = $_POST['prf'];
$tiempo = $_POST['tmp'];

$direccion = "../firmas/firma.".$num.".png";
$firma = $_POST['img'];

// file_put_contents("../firmas/".date('Y-m-d_H_i_s').'.png',base64_decode(explode(',',$firma)[1]));
//guardar ("../DIRECCION/."NOMBRE".'FORMATO',base64_decode(explode(',',IMG_POST[?])); //formato
file_put_contents("../firmas/"."firma.$num".'.png',base64_decode(explode(',',$firma)[1]));

// $sql = "INSERT INTO bocinas (id_bocinas, marca, modelo, serie) VALUES('$solucion','$calificacion', '$direccion','$firma')";
$sql = "UPDATE reporte SET calidad = '$calidad', atencion = '$atencion', nivel = '$nivel', tiempo = '$tiempo', Firma = '$direccion' WHERE id_reporte =('$num')";

$resultado = $conexion->query($sql);
if($resultado){
    echo "Listo";
}else {
    echo "No se guardo".$conexion->error;
}
// echo "<hr>";
// echo $_POST ['resolvio'];
// echo "<hr>";
// echo $_POST ['calificacion'];

?>
