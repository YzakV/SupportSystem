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
  <script src="consulta.js">
  </script>
  <link rel="stylesheet" href="css/master.css">
  <title>Prubeas bases</title>
</head>
<body>
  <?php include "./header.php" ?>

    <?php include "./ul.php" ?>

  <section>

<div class="index">
    <div class="">
      <h2>Cambiar tema</h2>
        <button id="theme" type="button" name="button">Theme1</button>
        <button id="theme2" type="button" name="button">theme2</button>
    </div>
    <div class="">
      <h2>lorem</h2>
    </div>
</div>


</body>
</html>
