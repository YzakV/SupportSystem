<?php
@session_start();
if(!isset($_SESSION["usuario"])) header("location: login.php");
?>
<html lang="en" dir="ltr">
<head>
  <meta name="viewport" content="width=device-width, user-scalable=yes">
  <meta charset="utf-8">
  <script src="https://code.jquery.com/jquery-3.4.0.js"
  integrity="sha256-DYZMCC8HTC+QDr5QNaIcfR7VSPtcISykd+6eSmBW5qo="
  crossorigin="anonymous"></script>
  <script src="consulta.js"></script>
  <script src="fn/users.js"></script>
  <link rel="stylesheet" href="css/master.css">
  <title>Prubeas bases</title>
</head>
<body>
  <?php include "./header.php" ?>
  <?php include "./ul.php" ?>
  <section>

    <div class="index">
      <div id="view" class="">
        <h2>Ver lista de usuarios</h2>
      </div>
      <div id="add" class="">
        <h2>Agregar usuario</h2>
      </div>
      <div id="edit" class="">
        <h2>Editar Usuarios</h2>
      </div>
      <div id="del" class="">
        <h2>Eliminar Usuarios</h2>
      </div>
    </div>
    <div class="vw">
    <label for="user">Area</label>
    <input id="user" type="text" value="">
    <div id="ver" class="reporte">
    </div>
    </div>
    <div class="ad hide">
      <h2>add</h2>
    </div>
    <div class="ed hide">
      <h2>ed</h2>
    </div>
    <div class="del hide">
      <h2>de</h2>
    </div>
  </body>
  </html>
