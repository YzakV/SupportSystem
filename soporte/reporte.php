<?php
    @session_start();
    if(!isset($_SESSION["usuario"])) header("location: login.php");
?>
<html lang="en" dir="ltr">
<head>
  <meta charset="utf-8">
  <script src="https://code.jquery.com/jquery-3.4.0.js"integrity="sha256-DYZMCC8HTC+QDr5QNaIcfR7VSPtcISykd+6eSmBW5qo="crossorigin="anonymous"></script>
  <link rel="stylesheet" href="css/master.css">
  <script src="consulta.js" charset="utf-8"></script>
  <title>Pruebas bases</title>
</head>
<body>
  <?php include "./header.php" ?>
  <?php include "./ul.php" ?>
  <section>
  <h2>Reportes Pendientes</h2>
  <div id=mostrar class="mostrar">
  </div>
</section>
</body>
</html>
