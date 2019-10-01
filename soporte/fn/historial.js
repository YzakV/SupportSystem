if ($("div #hist")) {
  console.log("aqui es hist")
  $(document).on('click', '#verhist', function(){
    var valor =$("#buscarh").val();
    historial(valor);
  function historial(consulta) {
    $.ajax({
      url: 'fn/historial2.php',
      type: 'POST',
      dataType: 'html',
      data: {consulta: consulta},
    })
    .done(function(respuesta) {
      $("#historial").html(respuesta);
      /*status index*/
        if($(".status").text().indexOf('pendiente')>=0){
          $(".status").css("background-color","yellow")
        }
        if ($(".status").text().indexOf('completo')>=0) {
          $(".status").css("background-color","green")
        }
    })
    .fail(function(){
        console.log("error")
    })
  }
  });
}
