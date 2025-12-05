import { TicTacDoe } from "./ticTacDoe.js";
import { Nim } from "./nim.js";

export class Game {

    selectZone;
    selectField;
    gameZone;
    
    constructor() {
        this.main = document.querySelector("main");
        this.gameList = ['--Accueil--', 'Tic Tac Doe', 'Jeu de Nim', 'La tour d\'Hanoï'];

        this.init_display()
    }

    init_display() {
        this.selectZone = document.createElement('section');
        this.selectZone.setAttribute('id', 'select-zone');
        this.selectField=document.createElement('select');
        this.selectField.setAttribute('id', 'select-field');
        for(let i = 0; i<this.gameList.length; i++){
            const option = document.createElement('option');
            option.setAttribute('value', i);
            option.innerHTML = this.gameList[i]
            this.selectField.appendChild(option);
        }
        const selectLabel=document.createElement('label');
        selectLabel.setAttribute('id', 'select-label');
        selectLabel.setAttribute('for', 'select-field');
        selectLabel.innerHTML = "Choisissez un jeu";
        this.selectZone.appendChild(selectLabel);
        this.selectZone.appendChild(this.selectField);
        this.main.appendChild(this.selectZone);
        
        this.gameZone = document.createElement('section');
        this.gameZone.setAttribute('id', 'game-zone');

        this.main.appendChild(this.gameZone);

        this.selectField.addEventListener('change', this.gameChoice.bind(this));
        //this.startingPage();
        const dev = new Nim();
    }

    reset() {
        this.gameZone.innerHTML="";
        this.gameZone.setAttribute('class', '');
    }

    gameChoice() {
        this.reset()
        this.selectField.blur();
        switch(this.selectField.value){
            case '0' :
                this.startingPage();
                break;
            case '1' :
                const ticTacDoe = new TicTacDoe();
                break;
            case '2' :
                const nim = new Nim();
                break;
            default:
                this.notImplemented()
                break;
        } 
    }

    notImplemented() {
        const warningMessage = document.createElement('div');
        warningMessage.setAttribute('class', 'warning-message highlight');
        const warningText = document.createElement('h2');
        warningText.setAttribute('class', 'warning-text');
        warningText.innerHTML = "En cours de construction";
        warningMessage.appendChild(warningText);
        this.gameZone.appendChild(warningMessage);
    }

    startingPage() {
        const startingMessage = document.createElement('div');
        startingMessage.setAttribute('class', 'starting-message highlight');

        const startingText = document.createElement('div');
        startingText.setAttribute('class', 'starting-text');
        const startingImage = document.createElement('img')
        startingImage.setAttribute('class', 'starting-image');
        startingImage.setAttribute('src', '../assets/pictures/starting.png');
        startingImage.setAttribute('alt', 'Image d\'accueil');
        const title1 = document.createElement('h2');
        title1.innerHTML ="Des créations ludiques et innovantes"
        const title2 = document.createElement('h2');
        title2.innerHTML ="Entre JavaScript et Unity : le plaisir de coder"
        const para1 = document.createElement('p');
        para1.innerHTML = "Bienvenue sur notre page dédiée aux jeux, un espace où créativité et technologie se rencontrent ! Vous y découvrirez des réalisations conçues par les jeunes de la Prépa Numérique de l’E2C Grand Lille, dans le cadre d’ateliers pratiques. Ces projets sont le fruit de leur imagination et de leur apprentissage, avec pour objectif de proposer des expériences interactives et originales.";
        const para2 = document.createElement('p');
        para2.innerHTML = "Nos jeux sont développés à partir de deux univers complémentaires : le web et la 3D. Les ateliers JavaScript permettent de créer des jeux dynamiques directement accessibles en ligne, tandis que les ateliers Unity ouvrent la porte à des environnements immersifs en 2D et 3D. Chaque création reflète le talent et la progression des stagiaires, qui apprennent à coder, à concevoir des interfaces et à donner vie à leurs idées.";

        startingText.appendChild(title1);
        startingText.appendChild(para1);
        startingText.appendChild(title2);
        startingText.appendChild(para2);

        startingMessage.appendChild(startingText);
        startingMessage.appendChild(startingImage);

        this.gameZone.appendChild(startingMessage);
    }
} 