//Définir les variable - récuperer les élements html dont on a besoin
const connectButton = document.querySelector("#connect-button");
const main = document.querySelector("main");
const connectBox = document.querySelector("#connect-background");
const closeButton = document.querySelector(".close-button");
const formBox = document.querySelector("#connect-form");
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
        newTxt.innerHTML = "C'est pas fini"
        connectButton.removeEventListener("click", addText)
    }
    main.appendChild(newText)    
}

function openConnect() {
    connectBox.style.display = "flex"
    connectBox.style.opacity = "1"
}

function closeConnect() {
    connectBox.style.display = "none"
    connectBox.style.opacity = "0"
}

function noClose(event) {
    event.stopPropagation()
}

//mettre en place les déclencheurs - écouteur d'évenements</p>
connectButton.addEventListener("click", openConnect)
closeButton.addEventListener("click",closeConnect)
connectBox.addEventListener("click",closeConnect)
formBox.addEventListener("click", noClose)