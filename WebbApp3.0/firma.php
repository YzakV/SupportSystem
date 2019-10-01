<?php
$_POST['data']=explode('data:image/png;base64,',$_POST['data'])[1];
print_r($_POST);die();
echo $_POST['data'];die();

$sql_img=mysqli_query($conexion,"SELECT * FROM proyecto_soporte WHERE id='1'");
$img=mysqli_fetch_assoc($sql_img);
echo "<img src='data: image/jpeg; base64, $img[testblob]'>";
?>