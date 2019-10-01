
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <link rel="stylesheet" href="css/master.css">
    <script src="https://code.jquery.com/jquery-3.4.0.js"
  integrity="sha256-DYZMCC8HTC+QDr5QNaIcfR7VSPtcISykd+6eSmBW5qo="
  crossorigin="anonymous"></script>
    <script src="fn/main.js"></script>
    <title>Prestamo de Equipos</title>
  </head>
  <body>
    <header>
    </header>
    <main>
      <div class="contenedor">
        <h1>Formulario para reporte de fallos</h1>
        <form class="" action="save.php" method="post">
          <div class="row">
            <div class="center">
              <label for="nombre">Persona que reporta</label>
              <input type="text" id="nombre" name="nombre" placeholder="ingresa aqui tu nombre">
            </div>
            <div class="center">
              <label for="area">Area</label>
              <input list="opt" type="text" id="area" name="area" placeholder="ingresa aqui tu area">
                <datalist id="opt">

                </datalist>
            </div>
            <div class="center">
              <label for="encargado">Encargado de area</label>
              <input type="text" id="encargado" name="encargado" readonly placeholder="Autollenado">
            </div>

            <div class="center hide">
              <label for="id_area">id_area pc</label>
              <input type="text" placeholder="id area" id="id_area" name="">
              <input type="text" placeholder="marca" id="marca" name="marca">
              <input type="text" placeholder="modelo" id="modelo" name="modelo">
              <input type="text" placeholder="serie" id="no_serie" name="serie">
              <input type="text" placeholder="oc" id="inventario" name="inventario">

            </div>

            <div class="center">
              <label for="nombre">Usuario</label>
              <select type="text" id="usuario" name="usuario" >
                <option value="" selected disabled>Selecciona tu usuario</option>
              </select>
            </div>
            <div class="center">
              <label for="equipo">Asunto</label>
              <input type="text" id="equipo" name="asunto" placeholder="cual es tu problema">
            </div>
          </div>
          <div class="center">
            <label for="textarea">Descripcion del problema</label>
            <textarea name="descripcion" ></textarea>
          </div>

        <div class="center">
          <input type="submit" name="" onClientClick="" value="Reportar">
        </div>
          </form>
        </div><!--contenedor-->
      </main>
  </body>
</html>
<!--https://www.youtube.com/watch?v=UwzQPW94r5M-->
