<?php
    @session_start();
    if(!isset($_SESSION["usuario"])) header("location: index.php");
?>
<html lang="en" dir="ltr">
<head>
  <meta charset="utf-8">
  <script src="https://code.jquery.com/jquery-3.4.0.js"
integrity="sha256-DYZMCC8HTC+QDr5QNaIcfR7VSPtcISykd+6eSmBW5qo="
crossorigin="anonymous"></script>
  <script src="consulta.js">

  </script>
  <link rel="stylesheet" href="../css/master.css">

  <title>Prubeas bases</title>
</head>
<body>
  <div class="beside">
    <nav>
      <ul>
        <li> <a href="cargador.php">cargador</a></li>
        <li> <a href="../mouse/mouse.php">mouse</a></li>
        <li> <a href="../monitor/monitor.php">monitor</a></li>
        <li> <a href="../teclado/teclado.php">teclado</a></li>
        <li> <a href="../bocinas/bocinas.php">bocinas</a></li>
        <li> <a href="../no-brake/no-brake.php">no-brake</a></li>
      </ul>
    </nav>
  </div>
  <section>

  <nav>
    <li> <? echo $_SESSION["usuario"]; ?>  </li>
    <li> <a href="close.php">Cerrar Sesion</a> </li>
  </nav>
  <form class="" action="master.php" method="post">
    <div class="equipo">
    <label for="id-cargador">ID Cargador</label>
    <input class="" type="text" id="id-c" name="id-c" >

    <label for="marca">Marca</label>
    <input class="" type="text" id="marca-c" name="marca-c" >

    <label for="modelo">Modelo</label>
    <input class="" type="text" id="modelo-c" name="modelo-c" >

    <label for="serie">Serie</label>
    <input class="" type="text" id="serie-c" name="serie-c" >
    <input type="submit" name="guardar" value="Guardar"><!--guardar-->

    <label for="id-cargador">ID a Borrar</label>
    <input class="form-control" type="text" id="id-c" name="id-c" >
    <input type="submit" name="borrar" value="Borrar"><!--borrar-->
  </div>
  </form>


  <!-- <div class="busqueda">
    <input type="text" name="" value="" id="buscador" placeholder="busqueda">
  </div>
  <div class="mostrar"  id="mostrar">
  </div> -->


  </section>

</body>
</html>
