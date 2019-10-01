
<html lang="en" dir="ltr">
<head>
  <meta charset="utf-8">
  <script src="https://code.jquery.com/jquery-3.4.0.js"
  integrity="sha256-DYZMCC8HTC+QDr5QNaIcfR7VSPtcISykd+6eSmBW5qo="
  crossorigin="anonymous"></script>

  <link rel="stylesheet" href="css/master.css">
  <title>Prubeas bases</title>
</head>
<body>
  <header>
    <h2 align="center">Sistema de Atencion de Reportes de Imjuve</h2>
  </header>
    <form action="fn/load.php" method="post" class="login">
      <label for="usuario">Usuario</label>
      <input type="text" class="intro" id="usuario" name="usuario" required>
      <label for="contraseña">Contraseña</label>
      <input type="password" class="intro" id="contraseña" name="contraseña" required>
      <label for="registrate">No te has registrado?</label>
      <input type="submit" class="submit" value="entrar">
      <a href="registro.html">Registrar</a>
    </form>
  <br>
</body>
</html>
