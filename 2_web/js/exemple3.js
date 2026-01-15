console.log("bonjour")

const statut = document.getElementById("statut");
const ctx_status = statut.getContext("2d");

ctx_status.fillStyle= "green";
ctx_status.fillRect(0,0, 300,300);

const dessin = document.getElementById("dessin");
const context = dessin.getContext("2d");

context.beginPath();
context.strokeStyle="red";
context.moveTo(250,100) //position
context.lineTo(100,250) //comme forward pour tortue
context.lineTo(250, 400);
context.lineTo(400, 250);
context.closePath();
context.fillStyle="red";
context.fill();
context.stroke();

context.beginPath();
context.arc(250,250, 50, 0, 2* Math.PI); //position centre (2place), rayon, angle de dépard et de arrivé en radiants
context.fillStyle= "blue"
context.fill();
context.stroke();

// context.fillStyle = "black";
// context.fillRect(0, 0, 200, 100);
// context.fillRect(200,200,100,100)

// for(var i = 0; i<5; i++) {
//     for ( var j= 0; j<5; j++) {
//         if((i+j)% 2==0) {
//             context.fillStyle = "black"
//         } else {
//             context.fillStyle = "white"
//         }
//         context.fillRect(100* i, 100* j, 100, 100);
//     }
// }
