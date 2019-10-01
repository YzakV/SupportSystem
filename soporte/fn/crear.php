<?php
  //conectar con servidor formato 'host', 'usuario', 'contraseña', 'base de datos'
  $conectar=mysqli_connect('localhost', 'root', '', 'test');
  mysqli_set_charset($conectar, "utf8");
//verificar conexion
  if (!$conectar){
    echo"no se pudo conectar con el servidor";
  }
  //recepcion de datos y almacenar en variables
// date("Y/m/d")
date_default_timezone_set("America/Mexico_City");
//Datos del reporte
$id= "";                                            //id reporte
$date=date("Y-m-d");                                //fecha
$time=date("H:i:s");                                //hora
$nombre = $_POST["nombre"];                         //persona que repora
//Status General
$asunto = $_POST["asunto"];                         //asunto
$descripcion = $_POST["descripcion"];               //descripcion
$trep = $_POST["treporte"];                         //tipo reporte
$tser = $_POST["tservicio"];                        //tipo servicio
//Datos del Usuario
$prov = $_POST["provedor"];                         //proveedor servicio
$usuario = $_POST["usuario"];                                      //usuario
$area = $_POST["area"];                             //area
$encargado = $_POST["encargado"];                   //encargado
//Caracteristicas Equipo
$marca = "";                                         //marca equipo
$modelo = "";                                        //modelo equipo
$serie = "";                                         //serie equipo
$equipo="";                                          //inventario = id equipo
//actividades
$solucion= $_POST["solucion"];
$actividad= $_POST["actividad"];
//Evaluacion
$calidad = "";                                        //calidad
$atencion = "";                                       //atencion
$nivel = "";                                         //nivel
$tiempo="";                                          //tiempo
//
$firma="";                                          //tiempo
$status= $_POST["status"];                          //status


//hacemos la sentencia de sql, es decir, especificar que se hara con los datos
$sql="INSERT INTO reporte VALUES('$id',
                                '$date',
                                '$time',
                                '$nombre',
                                '$encargado',
                                '$area',
                                '$asunto',
                                '$descripcion',
                                '$trep',
                                '$tser',
                                '$prov',
                                '$usuario',
                                '$marca',
                                '$modelo',
                                '$serie',
                                '$equipo',
                                '$solucion',
                                '$actividad',
                                '$calidad',
                                '$atencion',
                                '$nivel',
                                '$tiempo',
                                '$firma',
                                '$status')";
//ejecutar guardado, especificas La coneccion, y la funcion de escribir(guardar datos),
$ejecutar=mysqli_query($conectar, $sql);
//verficar ejecucion
if(!$ejecutar){
        echo"hubo algun error";
  }else

  session_start();
  $_SESSION['msg'] = 'Reporte Agregado con Exito';
  header("location: ../index.php");
  exit();

 ?>
