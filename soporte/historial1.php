<?php
    @session_start();
    if(!isset($_SESSION["usuario"])) header("location: login.php");
?><html lang="en" dir="ltr">
<head>
  <meta charset="utf-8">
  <script src="https://code.jquery.com/jquery-3.4.0.js"
integrity="sha256-DYZMCC8HTC+QDr5QNaIcfR7VSPtcISykd+6eSmBW5qo="
crossorigin="anonymous"></script>
  <link rel="stylesheet" href="css/master.css">
  <script src="consulta.js" charset="utf-8"></script>
  <script src="fn/historial.js" charset="utf-8"></script>
  <title>Prubeas bases</title>
</head>
<body>
  <?php include "./header.php" ?>

  <?php include "./ul.php" ?>
  <section>
  <h2>Historial de Reportes</h2>
  <div>
            <label for="buscador">Buscar en el historial por ID de Reporte:</label>
            <input type="text"  id="buscarh" name="buscador" placeholder="####">
            <input type="button" id="verhist" name="" value="buscar">
  </div>
  <div id="historial" class="historial">

  </div>

</section>

</body>
</html>
