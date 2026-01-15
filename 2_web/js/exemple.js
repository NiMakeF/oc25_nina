var message = "Bienvenu"

console.log(message)

function ma_fonction(){
    console.log('ma fonction')
}

for (var i=0; i < 10; i++) {
    console.log(i);
}

console.log(document.querySelector('.imp').textContent) //permet de chercher élément particulier dans l'"arbre

console.log(document.getElementById('bienvenue'))

function ajouter_perso() {
    var nom_perso = 'Jean';

    var nouveau_li = document.createElement('li');
    console.log('perso')
}