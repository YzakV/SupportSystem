<?php
    @session_start();
    if(!isset($_SESSION["usuario"])) header("location: login.php");
?>
<html lang="en" dir="ltr">
<head>
  <meta name="viewport" content="width=device-width, user-scalable=no">
  <meta charset="utf-8">
  <script src="https://code.jquery.com/jquery-3.4.0.js"
integrity="sha256-DYZMCC8HTC+QDr5QNaIcfR7VSPtcISykd+6eSmBW5qo="
crossorigin="anonymous"></script>
  <script src="consulta.js">
  </script>
  <script src="fn/signature.js"></script>
  <link rel="stylesheet" href="css/master.css">
  <title>Prubeas bases</title>
</head>
<body>
  <?php include "./header.php" ?>
 <?php include "./ul.php" ?>
  <section>

<div class="">
<!--Addons-->
  <div class="calificacion">
  <label for="numr">Numero de Reporte</label>
  <input type="text" name="numr" value="">
  <h3>La calidad del servicio otorgado por el departamento de Soporte tecnico fue:</h3>
          <label for="Excelente">Excelente</label>
          <input type="radio" name="calidad" id="calidad" value="excelente">
          <label for="Bueno">Bueno</label>
          <input type="radio" name="calidad" id="calidad" value="bueno">
          <label for="Regular">Regular</label>
          <input type="radio" name="calidad" id="calidad" value="regular">
          <label for="Malo">Malo</label>
          <input type="radio" name="calidad" id="calidad" value="malo">
        <h3>El nivel de atencion otorgado por el departamento de Soporte tecnico fue:</h3>
          <label for="Excelente">Excelente</label>
          <input type="radio" name="atencion" id="atencion" value="excelente">
          <label for="Bueno">Bueno</label>
          <input type="radio" name="atencion" id="atencion" value="bueno">
          <label for="Regular">Regular</label>
          <input type="radio" name="atencion" id="atencion" value="regular">
          <label for="Malo">Malo</label>
          <input type="radio" name="atencion" id="atencion" value="malo">
        <h3>El nivel profesional para que el departamento solucionara el problema fue: </h3>
          <label for="Excelente">Excelente</label>
          <input type="radio" name="profesion" id="profesion" value="excelente">
          <label for="Bueno">Bueno</label>
          <input type="radio" name="profesion" id="profesion" value="bueno">
          <label for="Regular">Regular</label>
          <input type="radio" name="profesion" id="profesion" value="regular">
          <label for="Malo">Malo</label>
          <input type="radio" name="profesion" id="profesion" value="malo">
        <h3>El tiempo de respuesta en que el el departamento de soporte tecnico los atendio fue: </h3>
          <label for="Excelente">Excelente</label>
          <input type="radio" name="tiempo" id="tiempo" value="excelente">
          <label for="Bueno">Bueno</label>
          <input type="radio" name="tiempo" id="tiempo" value="bueno">
          <label for="Regular">Regular</label>
          <input type="radio" name="tiempo" id="tiempo" value="regular">
          <label for="Malo">Malo</label>
          <input type="radio" name="tiempo" id="tiempo" value="malo">
        </div>

        <span>Solucion?: <select name='solucion'><option value='si'>Si</option><option value='no'>No</option></select></span>

<!--Ads-->
<!--Canvas-->
  <canvas id="canvas">Su navegador no soporta canvas :( </canvas>
  <div class="buttons">
    <button id="limpiar">limpiar canvas</button>
    <button id="download" type="button" >Guardar Firma</button>
  </div>
                  <!-- <canvas id="pizarra">Su navegador no soporta canvas :( </canvas>
                  <button id="limpiar">limpiar canvas</button> -->
<!--Canvas-->
</div>

</body>
</html>
