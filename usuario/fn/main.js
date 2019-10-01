/*load areas*/
$(load());
function load(getarea) {
  $.ajax({
    url: 'fn/load.php',
    type: 'POST',
    dataType: 'html',
    data: {getarea: getarea},
  })
  .done(function(optarea) {
    $("#opt").html(optarea)
  })
}
/*load areas*/
/*Set responsable and area*/
function setRs(responsable) {
  $.ajax({
    url: 'fn/areas.php',
    type: 'POST',
    dataType: 'html',
    data: {responsable: responsable},
  })
  .done(function(resp) {
    $("#encargado").val(resp.split("-")[0])
    $("#id_area").val(resp.split("-")[1])
  })
}
$(document).on('focusout', '#area', function(){
  var valor =$("#area").val();
  if (valor != ""){
    setRs(valor);
  }
});
/*Set responsable and area*/
/*Set users*/
function users(consulta) {
  $.ajax({
    url: 'fn/users.php',
    type: 'POST',
    dataType: 'html',
    data: {consulta: consulta},
  })
  .done(function(use) {
    console.log(use);
    $("#usuario").append(use)
  })
}
$(document).on('focusout', '#area', function(){
  setTimeout(function(){
    var valor =$("#id_area").val();
    if (valor != ""){
      users(valor);
    }
  },500);
});

/*Select equipos*/
function equipos(equip) {
  $.ajax({
    url: 'fn/equipos.php',
    type: 'POST',
    dataType: 'html',
    data: {equip: equip},
  })
  .done(function(pc) {
    console.log(pc.split("/"))
    $("#marca").val(pc.split("/")[0])
    $("#modelo").val(pc.split("/")[1])
    $("#no_serie").val(pc.split("/")[2])
    $("#inventario").val(pc.split("/")[3])
  })
}
$(document).on('focusout', '#usuario', function(){
  var valor =$("#usuario").val();
  if (valor != ""){
    equipos(valor);
  }
});
  // var id_are =$("#id_area").val();
  // setTimeout(function users(consulta){
  //   console.log("run?")
  //   $.ajax({
  //     url: 'fn/users.php',
  //     type: 'POST',
  //     dataType: 'html',
  //     data: {consulta: consulta},
  //   })
  //   .done(function(use) {
  //     $("#usuario").html(use)
  //   })
  // }, 500);


// $(buscar_datos());
// function buscar_datos(consulta) {
//   $.ajax({
//     url: 'fn/areas.php',
//     type: 'POST',
//     dataType: 'html',
//     data: {consulta: consulta},
//   })
//   .done(function(respuesta) {
//     console.log(respuesta)
//     $("#opt").html(respuesta)
//     $("#encargado").val(respuesta)
//   })
//   .fail(function(){
//       console.log("error")
//   })
// }
// $(document).on('focusout', '#area', function(){
//   var valor =$("#area").val();
//   if (valor != ""){
//     buscar_datos(valor);
//   }
//   else {
//     buscar_datos();
//   }
// });

// $(document).on('keyup', '#buscador', function(){
// $('input[name="cp"]').on('keyup',function(){
//   var vcp=$(this).val();
//   if(vcp.length == 5){
//     $.post("model/ajaxDomicilio.php",{"cp":vcp},function(response){
//       if(response.status==='true'){
//         var selectColonia = $('select[name="colonia"]');
//         var nuevasOpciones=response['colonias'];
//         if(selectColonia.prop)  var options = selectColonia.prop('options');
//         else var options = selectColonia.attr('options');
//         $('option', selectColonia).remove();
//         $.each(nuevasOpciones, function(val, text) {
//           options[options.length] = new Option(text, val);
//         });
//         $('input[name="estado"]').val(response['estado']);
//         $('input[name="delegacion"]').val(response['municipio']);
//       }else swal('El código postal ingresado no es correcto, por favor ingresa un código postal válido');
//       },"json");
//   }
// });
