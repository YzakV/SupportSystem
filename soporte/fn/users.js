$(document).ready(function(){
  $("#view").click(function(){
    $(".vw").toggle();
    $(".ad").hide();
    $(".ed").hide();
    $(".del").hide();
  })
  $("#add").click(function(){
    $(".ad").toggle();
    $(".vw").hide();
    $(".ed").hide();
    $(".del").hide();
  })
  $("#edit").click(function(){
    $(".ed").toggle();
    $(".vw").hide();
    $(".ad").hide();
    $(".del").hide();
  })
  $("#del").click(function(){
    $(".del").toggle();
    $(".vw").hide();
    $(".ad").hide();
    $(".ed").hide();    
  })
});
historial()
function historial(user) {
  $.ajax({
    url: 'fn/users.php',
    type: 'POST',
    dataType: 'html',
    data: {user: user},
  })
  .done(function(respuesta) {
    console.log("done?")
    $("#ver").html(respuesta);
  })
  .fail(function(){
      console.log("error")
  })
}
$(document).on('keyup', '#user', function(){
    var valor =$("#user").val();
    if (valor != ""){
      historial(valor);
    }
    else {
      historial();
    }
});
