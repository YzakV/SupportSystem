$( document ).ready(function() {
/*UL*/
$(".inv").click(function(){
  $("li .hide").toggle();

  })
/*crear reportes-index*/
  $("#crear").click(function(){
    $(".crear form").toggle();
    $(".verequipos").hide();
    $(".loremcnt").hide();
  })
  $("#equipos").click(function(){
    $(".verequipos").toggle();
    $(".crear form").hide();
    $(".loremcnt").hide();
  })
  $("#lorem").click(function(){
    $(".loremcnt").toggle();
    $(".verequipos").hide();
    $(".crear form").hide();
  })
/**/
$(document).on('click', '#theme', function(){
  document.documentElement.style.setProperty('--head', '#010101');
  document.documentElement.style.setProperty('--bgc', '#010101');
  document.documentElement.style.setProperty('--bsd', '#543852');
});
$(document).on('click', '#theme2', function(){
  document.documentElement.style.setProperty('--head', 'rgba(0, 0, 0, .3)');
  document.documentElement.style.setProperty('--bgc', 'linear-gradient(to right, #26D0CE, #2c5364)');
  document.documentElement.style.setProperty('--bsd', '#010101');
});
/*Ver reportes al cargar-document*/
$(document).load("fn/vrep.php",function(data){
    nrep = $(data).length+1;
    if (nrep >=1){
        $(".vrep").html(' ('+nrep/2+')');
        $(".arep").html(' ('+nrep/2+')');
      }
    });
    if ("#mostrar") {
        $("#mostrar").load("fn/vrep.php");
      };
      /*Ver reportes al cargar*/
setInterval(function(){
  count = $(".vrep").html();
  $(document).load("fn/vrep.php",function(data){
    nrep= $(data).length+1;
    if (nrep>=1){
        $(".vrep").html(' ('+nrep/2+')');
        $(".arep").html(' ('+nrep/2+')');
      }
      count2 = $(".vrep").html();
      if (count>count2) {
        $('body').append('<embed src="md/xb.mp3" type="audio/mp3" autostart="true" hidden="true" loop="false">');
        alert("Nuevo Reporte")
      }
    });
    if ("#mostrar") {
        $("#mostrar").load("fn/vrep.php");
      };
},5000);
/*Actualizacion y notificacion de reportes-document*/
/*getIdRep*/
$("#mostrar #reporte").click(function(){
  console.log("clicke")
})



/*Edicion de Reportes-atender*/
if ($("div #edicion")) {
  $(document).on('click', '#editar', function(){
    var valor =$("#buscador").val();
    atender_reportes(valor);
  function atender_reportes(consulta) {
    $.ajax({
      url: 'fn/atender.php',
      type: 'POST',
      dataType: 'html',
      data: {consulta: consulta},
    })
    .done(function(respuesta) {
      $("#atender").html(respuesta);
    })
    .fail(function(){
        console.log("error")
    })
  }
  });
}
/*Edicion de Reportes*/

})/*document.ready*/
