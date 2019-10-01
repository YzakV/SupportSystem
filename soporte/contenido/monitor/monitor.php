
<html lang="en" dir="ltr">
<head>
  <meta charset="utf-8">
  <script src="https://code.jquery.com/jquery-3.4.0.js"
integrity="sha256-DYZMCC8HTC+QDr5QNaIcfR7VSPtcISykd+6eSmBW5qo="
crossorigin="anonymous"></script>
  <script src="consulta.js">

  </script>
  <link rel="stylesheet" href="../../css/master.css">

  <title>Prubeas bases</title>
</head>
<body>
  <header>
    <h1>Monitores</h1>
  </header>
  <div class="beside">
    <nav>
      <ul>
        <li> <a href="../../index.html">Inicio</a></li>
        <li class="inv">
           <a  href="reporte.html">Reportes</a>
           <ul>
             <li class="hide"><a href="../../reporte.html">Pendientes</a> </li>
             <li class="hide"><a href="../rep/comp.html">Completos</a> </li>
             <li class="hide"><a href="../rep/todos.html">Todos</a> </li>
           </ul>
        </li>        <li class="inv">
           <a  href="#">Inventarios</a>
           <ul>
             <li class="hide"><a href="contenido/cargador/cargador.php">Cargadores</a> </li>
             <li class="hide"><a href="contenido/bocinas/bocinas.php">Bocinas</a> </li>
             <li class="hide"><a href="contenido/monitor/monitor.php">Monitores</a> </li>
             <li class="hide"><a href="contenido/mouse/mouse.php">Mouse</a> </li>
             <li class="hide"><a href="contenido/no-brake/no-brake.php">No-Brake</a> </li>
             <li class="hide"><a href="contenido/teclado/teclado.php">Teclado</a> </li>
           </ul>
        </li>
        <li> <a href="usuarios.html">Usuarios</a></li>
        <li> <a href="#">Configuraciones</a></li>
      </ul>
    </nav>
  </div>
  <section>

  <nav>
    <li> <? echo $_SESSION["usuario"]; ?>  </li>
    <li> <a href="close.php">Cerrar Sesion</a> </li>
  </nav>
  <form class="" action="save.php" method="post">
    <div class="equipo">
    <label for="id-cargador">ID monitor</label>
    <input class="" type="text" id="id-cargador-c" name="id-mn" >

    <label for="marca">Marca</label>
    <input class="" type="text" id="marca-c" name="marca-mn" >

    <label for="modelo">Modelo</label>
    <input class="" type="text" id="modelo-c" name="modelo-mn" >

    <label for="serie">Serie</label>
    <input class="" type="text" id="serie-c" name="serie-mn" ><!--Cargador-->
    <input type="submit" name="" value="Guardar">
  </div>
  </form>


  <div class="busqueda">
    <input type="text" name="" value="" id="buscador" placeholder="busqueda">
  </div>

  <div class="mostrar"  id="mostrar">
  </div>


  <form class="" action="del.php" method="post">
    <div class="equipo">
      <label for="id-cargador">ID a Borrar</label>
      <input class="form-control" type="text" id="id-cargador-c" name="id-mn" >
      <input type="submit" name="" value="Borrar">
    </form>
  </section>

</body>
</html>
