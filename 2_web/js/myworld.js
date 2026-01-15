
console.log("HElppp")
const canvas_image= document.getElementById("animation");
const ctx_image = canvas_image.getContext("2d");

const img_img = new Image();

// img_avion.onload = function(){
//     ctx_image.drawImage(img_avion,150,150,50,50);
// }
// img_avion.src="web/images/duck.svg"


const canvasSizeX = 330;
const canvasSizeY = 330;
const dx = 1;
const dy= 1;
var x = 1;
var y = 1;


function init() {
    img_img.src = "images/felix.png";
    window.requestAnimationFrame(draw);
}

var i=0;
function draw(){
    ctx_image.clearRect(0,0,330,330);

    if(x>canvasSizeX) {
        ctx_image.translate(-canvasSizeX, -canvasSizeY)
        x = 1
        y = 1
    } else {
        ctx_image.drawImage(img_img,0,0,150,200);
        ctx_image.translate(dx,dy);
        x = x + dx;
        y = y + dy;
    }
    window.requestAnimationFrame(draw);
}
init()





