$(buscar_datos());
function buscar_datos(consulta) {
  $.ajax({
    url: 'mostrarbus.php',
    type: 'POST',
    dataType: 'html',
    data: {consulta: consulta},
  })
  .done(function(respuesta) {
    $("#mostrar").html(respuesta);
  })
  .fail(function(){
      console.log("error")
  })
}
/*HASTA aqui se muestra la consulra de la DB con AJAx*/
$(document).on('keyup', '#buscador', function(){
    var valor =$(this).val();
    if (valor != ""){
      buscar_datos(valor);
    }
    else {
      buscar_datos();
    }
});
