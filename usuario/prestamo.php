<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <link rel="stylesheet" href="css/master.css">
    <title>Prestamo de Equipos</title>
  </head>
  <body>
    <header>
    </header>
    <main>
      <div class="contenedor">
        <h1>Formulario para prestamos de equipo</h1>
        <form  action="index.html" method="post">


          <div class="row">
            <div class="center">

              <label for="nombre">Nombre</label>
              <input class="form-control" type="text" id="nombre" name="nombre" ><!--data error y required trabajan con validator-->
            </div>
            <div class="center">

              <label for="area">Area</label>
              <input class="form-control" type="text" id="area" name="area" >

            </div>

            <div class="center">

              <label for="equipo">Equipo</label>
              <input class="form-control" type="text" id="equipo" name="equipo" >
            </div>
          </div><!--row-->
          <div class="center">
            <label for="textarea">Motivo de prestamo</label>
            <textarea name="name" ></textarea>
          </div>
          <div class="center">
            <input type="submit" name="" value="Reportar">
          </div>
          </form>

        </div><!--contenedor-->
      </main>
  </body>
</html>
