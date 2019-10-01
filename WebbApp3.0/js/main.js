
$( document ).ready(function() {
	$("#btnClearSign").on('click', function(){
		console.log("Reset canvas");
	});
	// $("#btnSubmitSign").on('click', function(){
	// 	var data = document.getElementById("canvas").toDataURL('image/png');
	// 	$.post('conexion.php',{data: data},function(data){console.log(data);})
	// 	console.log (data);
	// })

	$("#btnSubmitSign").on('click', function(){
		var num = $("input[name='numr']").val();
		var cal = $("input[name='calidad']:checked").val();
		var atn = $("input[name='atencion']:checked").val();
		var prf = $("input[name='profesion']:checked").val();
		var tmp = $("input[name='tiempo']:checked").val();

		var img = document.getElementById("canvas").toDataURL('image/png');

		$.ajax({
		url: 'conexion.php',
		type: 'post',
		data: {num: num, cal: cal, atn: atn, prf: prf, tmp: tmp, img: img},
		})
		.done(function(respuesta) {
			console.log(respuesta);
			console.log(num);
			console.log(cal);
			console.log(atn);
			console.log(prf);
			console.log(tmp);
		})
		.fail(function(){
			console.log(data)
		})
	})
})
