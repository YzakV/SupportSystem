<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <script src="js/jquery-3.4.1.js"></script>
    <script src="js/sign.js"></script>
    <script src="js/main.js"></script>
    <title>Reporte</title>
    <link href="https://www.jqueryscript.net/css/jquerysctipttop.css" rel="stylesheet" type="text/css">
    <link rel="shortcut icon" type="image/png" href="img/Logo.png">
    <link rel="stylesheet" href="css/normalize.css">
    <link rel="stylesheet" href="css/main.css">

</head>
<body>

    <div class="menu">
        <ul>
            <li>
                <a href="index.html">Inicio</a>
            </li>
        </ul>
    </div>

    <section id="experiencia">
        <h2>Por favor, ayudanos calificando la experiencia de tu servicio.</h2>
        <form action="conexion.php" method="POST">
          <label for="numrep">Numero de Reporte</label>
          <input type="text" name="numr" id="numr">

            <h3>¿Se resolvio tu problema?</h3>
                <div class="contenedor form-check-inline">
                    <label for="si">Si</label>
                    <input type="radio" name="resolvio" id="resolvio" value="Si">
                    <label for="no">No</label>
                    <input type="radio" name="resolvio" id="resolvio" value="No">
                </div>
                <h3>Califica como fue tu servicio en Calidad</h3>
                <div class="todo">
                    <div class="contenedor form-check-inline">
                        <label for="Excelente">Excelente</label>
                        <input type="radio" name="calidad" id="calidad" value="excelente">
                        <label for="Bueno">Bueno</label>
                        <input type="radio" name="calidad" id="calidad" value="bueno">
                        <label for="Regular">Regular</label>
                        <input type="radio" name="calidad" id="calidad" value="regular">
                        <label for="Malo">Malo</label>
                        <input type="radio" name="calidad" id="calidad" value="malo">
                    </div>

                    <div class="contenedor form-check-inline">
                      <h3>Califica como fue tu servicio en Atencion</h3>
                        <label for="Excelente">Excelente</label>
                        <input type="radio" name="atencion" id="atencion" value="excelente">
                        <label for="Bueno">Bueno</label>
                        <input type="radio" name="atencion" id="atencion" value="bueno">
                        <label for="Regular">Regular</label>
                        <input type="radio" name="atencion" id="atencion" value="regular">
                        <label for="Malo">Malo</label>
                        <input type="radio" name="atencion" id="atencion" value="malo">
                    </div>
                    <div class="contenedor form-check-inline">
                      <h3>Califica como fue tu servicio en Profesionalismo</h3>
                        <label for="Excelente">Excelente</label>
                        <input type="radio" name="profesion" id="profesion" value="excelente">
                        <label for="Bueno">Bueno</label>
                        <input type="radio" name="profesion" id="profesion" value="bueno">
                        <label for="Regular">Regular</label>
                        <input type="radio" name="profesion" id="profesion" value="regular">
                        <label for="Malo">Malo</label>
                        <input type="radio" name="profesion" id="profesion" value="malo">
                    </div>
                    <div class="contenedor form-check-inline">
                      <h3>Califica como fue tu servicio en Tiempo de respueesta</h3>
                        <label for="Excelente">Excelente</label>
                        <input type="radio" name="tiempo" id="tiempo" value="excelente">
                        <label for="Bueno">Bueno</label>
                        <input type="radio" name="tiempo" id="tiempo" value="bueno">
                        <label for="Regular">Regular</label>
                        <input type="radio" name="tiempo" id="tiempo" value="regular">
                        <label for="Malo">Malo</label>
                        <input type="radio" name="tiempo" id="tiempo" value="malo">
                    </div>


                     <h3>Firma de conformidad del usuario</h3>
                    <div data-role="popup" id="divPopUpSignContract" class="contenedor">
                        <div data-role="header" data-theme="b">
                            <a data-role="button" data-rel="back" data-transition="slide" class="ui-btn-right" onclick="closePopUp()"></a>
                            <p class="popupHeader">Sign Pad</p>
                        </div>
                        <div class="ui-content popUpHeight">
                            <div id="div_signcontract" class="signcontract">
                                <canvas name="firma" id="canvas">Canvas is not supported</canvas>
                                <div>
                                    <input id="btnSubmitSign" type="button" data-inline="true" data-mini="true" data-theme="b" value="Guardar firma"/>
                                    <input id="btnClearSign" type="button" data-inline="true" data-mini="true" data-theme="b" value="Resetear" onclick="init_Sign_Canvas()"/>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="enviar">
                    <input type="submit" value="Enviar" src="#" class="button">
                </div>
            </form>



    </section>

    <footer class="site-footer">
        <div class="contenedor">
            <h3>Aclaraciones</h3>
            <p>Si tienes dudas sobre tu reporte comunicate con el departamento de soporte tecnico, a la ext: 1465</p>
        </div>
    </footer>

</body>
</html>
