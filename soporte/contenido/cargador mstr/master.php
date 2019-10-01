<?php
//conexion
$conectar = mysqli_connect('localhost','root','','test');
if (!$conectar){
  echo"no se pudo conectar con el servidor";
}
$id=$_POST["id-c"];
$marca=$_POST["marca-c"];
$modelo=$_POST["modelo-c"];
$serie=$_POST["serie-c"];
// Insert
if(isset($_POST['guardar']))
{
    $guardar="INSERT INTO cargador VALUES('$id', '$marca', '$modelo', '$serie')";
  try{
        $insert_Result = mysqli_query($conectar, $guardar);
        if($insert_Result)
        {
            if(mysqli_affected_rows($conectar) >0)
            {
                echo 'Data Inserted';
            }else{
                echo 'Data Not Inserted';
            }
        }
    } catch (Exception $ex) {
        echo 'Error Insert '.$ex->getMessage();
    }
}
// $ejecutar=mysqli_query($conectar, $guardar);
//verficar ejecucion
 if(!$guardar){
         echo"hubo algun error";
   }
header('Location: cargador.php');
?>
