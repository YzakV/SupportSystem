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
  <script src="fn/consequip.js" charset="utf-8"></script>
  <link rel="stylesheet" href="css/master.css">
  <title>Prubeas bases</title>
</head>
<body>
  <?php include "./header.php" ?>
    <?php include "./ul.php" ?>
  <section>

<div class="index">
    <div id="crear" class="create">
        <h2>Crear reporte</h2>
    </div>
    <div id="equipos" class="equipos">
      <h2>Ver Equipos</h2>
    </div>
    <div id="lorem" class="lorem">
      <h2>lorem</h2>
    </div>
</div>
<div class="crear">
  <form action='fn/crear.php' method='post' class='edicion'>
    <fieldset class='datosr'>
      <legend>Datos del Reporte</legend>
      <span>Persona que Reporta: </span><input name='nombre'>
      <span>Asunto: </span><input name='asunto'>
      <span>Descripcion: </span><input name='descripcion'>
      <span>Tipo de Reporte: </span><input name='treporte'></input>
      <span>Tipo de Servicio: </span><input name='tservicio'></input>
    </fieldset>
    <fieldset class='datosu'>
      <legend>Datos del Usuario</legend>
      <span>Provedor del Servicio: </span><input name='provedor'></input>
      <span>Area: </span><input name='area'>
      <span>Usuario: </span><input name='usuario'>
      <span>Responsable: </span><input name='encargado'>
    </fieldset>
    <fieldset class='de'>
      <legend>Datos del Equipo</legend>
      <span>Marca: </span>
      <span>Modelo: </span>
      <span>Serie: </span>
      <span>ID inventario: </span>
    </fieldset>
    <fieldset class='ac'>
      <legend>Actividades</legend>
      <span>Solucion?: <select name='solucion'><option value='si'>Si</option><option value='no'>No</option></select></span>
      <span>Actividad: </span><textarea type='textarea' name='actividad' rows='10' cols='50'></textarea>
    </fieldset>
    <fieldset class='cs'>
      <legend>Calificacion del Servicio</legend>
      <span>calidad: </span>
      <span>Atencion: </span>
      <span>Profesional: </span>
      <span>Tiempo Respuesta: </span>
    </fieldset>
    <fieldset class='fm'>
    <legend>Firma </legend>
    </fieldset>
    <fieldset>
      <span>Status: </span>
      <select name='status'>
        <option value='pendiente'>pendiente</option>
        <option value='completo'>completo</option>
      </select>
    </fieldset>
    <button type='submit'>Guardar: </button>
  </form>
</div>
<div class="verequipos">
  <div id="viewport" class="">
    <div>
              <label for="buscador">Busqueda por factura:</label>
              <input type="text"  id="buscarh" name="buscador" placeholder="####">
              <button id="verhist" name="" value="buscar">Buscar</button>
    </div>
    <div id="historial" class="historial">
    </div>
  </div>
</div>

<div class="loremcnt">
  <h2>lorem</h2>
</div>
</body>
</html>



<?php
    if(isset($_SESSION["msg"])){
    $mensaje = $_SESSION["msg"];
?>
  <script>
    var mensaje = "<?php echo $mensaje; ?>"
    alert(mensaje);
  </script>
<?php } unset($_SESSION["msg"]); ?>
