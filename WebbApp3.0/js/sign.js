function init_Sign_Canvas() {
    isSign = false;
    leftMButtonDown = false;

    //Tamaño del Canvas
    var sizedWindowWidth =$('#div_signcontract').width();
    if(sizedWindowWidth > 700)
        sizedWindowWidth = $(window).width() / 1.32;
    else if(sizedWindowWidth > 400)
        sizedWindowWidth = sizedWindowWidth - 50;
    else if (sizedWindowWidth > 200)
        sizedWindowWidth = sizedWindowWidth - 35
    else
        sizedWindowWidth = sizedWindowWidth - 20;

     $("#canvas").width(sizedWindowWidth);
     $("#canvas").height(220);
     $("#canvas").css("border","1px solid #000");

     var canvas = $("#canvas").get(0);

     canvasContext = canvas.getContext('2d');

     if(canvasContext)
     {
         canvasContext.canvas.width  = sizedWindowWidth;
         canvasContext.canvas.height = 200;

         canvasContext.fillStyle = "#fff";
         canvasContext.fillRect(0,0,sizedWindowWidth,200);

         canvasContext.moveTo(50,150);
         canvasContext.lineTo(sizedWindowWidth-50,150);
         canvasContext.stroke();

         canvasContext.fillStyle = "#000";
         canvasContext.font="20px Arial";
         canvasContext.fillText("x",40,155);
     }
     // Eventos del mouse
     $(canvas).on('mousedown', function (e) {
         if(e.which === 1) { 
             leftMButtonDown = true;
             canvasContext.fillStyle = "#000";
             var x = e.pageX - $(e.target).offset().left;
             var y = e.pageY - $(e.target).offset().top;
             canvasContext.moveTo(x, y);
         }
         e.preventDefault();
         return false;
     });

     $(canvas).on('mouseup', function (e) {
         if(leftMButtonDown && e.which === 1) {
             leftMButtonDown = false;
             isSign = true;
         }
         e.preventDefault();
         return false;
     });

     // Funcion de dibujar
     $(canvas).on('mousemove', function (e) {
         if(leftMButtonDown == true) {
             canvasContext.fillStyle = "#000";
             var x = e.pageX - $(e.target).offset().left;
             var y = e.pageY - $(e.target).offset().top;
             canvasContext.lineTo(x,y);
             canvasContext.stroke();
         }
         e.preventDefault();
         return false;
     });

     //bind touch events
     $(canvas).on('touchstart', function (e) {
        leftMButtonDown = true;
        canvasContext.fillStyle = "#000";
        var t = e.originalEvent.touches[0];
        var x = t.pageX - $(e.target).offset().left;
        var y = t.pageY - $(e.target).offset().top;
        canvasContext.moveTo(x, y);

        e.preventDefault();
        return false;
     });

     $(canvas).on('touchmove', function (e) {
        canvasContext.fillStyle = "#000";
        var t = e.originalEvent.touches[0];
        var x = t.pageX - $(e.target).offset().left;
        var y = t.pageY - $(e.target).offset().top;
        canvasContext.lineTo(x,y);
        canvasContext.stroke();

        e.preventDefault();
        return false;
     });

     $(canvas).on('touchend', function (e) {
        if(leftMButtonDown) {
            leftMButtonDown = false;
            isSign = true;
        }

     });
}