  $(document).on('click', '#verhist', function(){
    var valor =$("#buscarh").val();
    historial(valor);
  function historial(consulta) {
    $.ajax({
      url: 'fn/consequip.php',
      type: 'POST',
      dataType: 'html',
      data: {consulta: consulta},
    })
    .done(function(respuesta) {
      $("#historial").html(respuesta);
    })
    .fail(function(){
        console.log("error")
    })
  }
  });
