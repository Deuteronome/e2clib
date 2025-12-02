//Définir les variable - récuperer les élements html dont on a besoin
const connectButton = document.querySelector("#connect-button");
const main = document.querySelector("main");
let count = 0;
//Définir les fonctions - les actions possibles
function addText() {
    count ++;
    let newText = document.createElement("p")
    newText.classList.add("js-zone");
    
    if(count%2==0){
        newText.style.color = "red"
    }

    if(count <= 10) {
        newText.innerHTML = `tentative N° ${count}`
    } else {
        newText.innerHTML = "C'est pas fini"
        connectButton.removeEventListener("click", addText)
    }
    main.appendChild(newText)    
}
//mettre en place les déclencheurs - écouteur d'évenements</p>
connectButton.addEventListener("click", addText)