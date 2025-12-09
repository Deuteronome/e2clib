export class Nim {

    parameterZone;
    parameterBoard;
    controlBoard;
    modifyButton;
    playButton;
    playCallback = this.startGame.bind(this)
    tokenZone;
    validationZone;    
    validationButton;
    validationCallback = this.playerValidation.bind(this)
    parameters = {
        "tokens":12,
        "pack":3,
        "regular":true,
        "humanFirst":true
    }; 
    gameState={}

    constructor() {
        this.gameZone = document.querySelector('#game-zone');


        this.init();
    }

    init() {
        for(let key in this.parameters) {
            this.gameState[key] = this.parameters[key];
        }
        this.gameZone.innerHTML="";
        this.gameZone.setAttribute('class', 'nim');
        this.parameterZone = document.createElement('div');
        this.parameterZone.setAttribute('id', 'parameter-zone');
        this.parameterZone.setAttribute('class', 'highlight');
            
        this.parameterBoard = document.createElement('div');
        this.parameterBoard.setAttribute('id', 'parameter-board');

        for(let i = 0; i<4; i++) {
            const paramBox = document.createElement('div');
            paramBox.setAttribute('class', 'param-box');

            switch(i) {
                case 0 :
                    paramBox.innerHTML = `Nombre de jetons : <strong>${this.parameters['tokens']}</strong>`;
                    break;
                case 1 :
                    paramBox.innerHTML = `Taille max des paquets : <strong>${this.parameters['pack']}</strong>`;
                    break;
                case 2 :
                    paramBox.innerHTML = `Premier joueur: <strong>${(this.parameters['humanFirst'])?'Humain':'Machine'}</strong>`;
                    break;
                case 3 :
                    paramBox.setAttribute('id', 'param-rule')
                    paramBox.innerHTML = `Nombre de jetons : <strong>${(this.parameters['regular']?'Le joueur qui prend le dernier jeton a perdu':'Le joueur qui prend le dernier jeton a gagné')}</strong>`;
                    break;
            }

            this.parameterBoard.appendChild(paramBox)
        }

        this.controlBoard = document.createElement('div');
        this.controlBoard.setAttribute('id', 'control-board');

        this.modifyButton = document.createElement('div');
        this.modifyButton.setAttribute('class', 'btn btn-inactive');
        this.modifyButton.innerHTML="Modifier";

        this.playButton = document.createElement('div');
        this.playButton.setAttribute('class', 'btn btn-validation');
        this.playButton.innerHTML="Jouer";
        this.playButton.addEventListener('click', this.playCallback);


        this.tokenZone = document.createElement('div');
        this.tokenZone.setAttribute('id', 'token-zone');
        this.tokenZone.setAttribute('class', 'highlight');
        for(let i =0; i<this.parameters["tokens"]; i++) {
            
            const token = document.createElement('div');
            token.setAttribute('class', 'token');
            token.addEventListener('click', this.clickOnToken.bind(this, token));

            this.tokenZone.appendChild(token);
        }

        if(this.parameters["tokens"]%6!=0) {
            for(let i = 0; i< 6-this.parameters["tokens"]%6; i++) {
                const slot = document.createElement('div');
            slot.setAttribute('class', 'empty-slot');

            this.tokenZone.appendChild(slot);
            }
        }

        this.validationZone = document.createElement('div');
        this.validationZone.setAttribute('id', 'validation-zone');
      
        this.validationButton=document.createElement('div');
        this.validationButton.setAttribute('class', 'btn btn-inactive');
        this.validationButton.innerHTML= "Prendre";

        this.controlBoard.appendChild(this.modifyButton);
        this.controlBoard.appendChild(this.playButton);        
        this.parameterZone.appendChild(this.parameterBoard);
        this.parameterZone.appendChild(this.controlBoard);
        this.validationZone.appendChild(this.validationButton);
        this.tokenZone.appendChild(this.validationZone);
        this.gameZone.appendChild(this.parameterZone);
        this.gameZone.appendChild(this.tokenZone);        

    }

    startGame() {
        this.playButton.setAttribute('class', 'btn btn-inactive');
        this.playButton.removeEventListener('click', this.playCallback);

        this.turnCheck()
    }

    turnCheck() {
        if(this.gameState['humanFirst']) {
            this.gameState['humanFirst'] = !this.gameState['humanFirst'];
            this.playerTurn();
        } else {
            this.gameState['humanFirst'] = !this.gameState['humanFirst'];
            this.botTurn();
        }
    }

    playerTurn() {
        document.querySelectorAll('.token').forEach((elem)=>{elem.classList.add('token-active')});
    }

    botTurn() {
        console.log('bot turn');
        this.turnCheck();
    }

    clickOnToken(token) {
        
        if(token.classList.contains('token-active') && this.gameState['pack']>0) {
            token.classList.remove('token-active');
            token.classList.add('token-selected');
            this.gameState['pack']--;
        } else if (token.classList.contains('token-selected')) {
            token.classList.remove('token-selected');
            token.classList.add('token-active'); 
            this.gameState['pack']++;
        }
        
        if(document.querySelectorAll('.token-selected').length>0 && this.validationButton.classList.contains('btn-inactive')) {
            this.validationButton.classList.remove('btn-inactive');
            this.validationButton.classList.add('btn-validation');
            this.validationButton.addEventListener('click', this.validationCallback);
        }else if (document.querySelectorAll('.token-selected').length==0 && this.validationButton.classList.contains('btn-validation')) {
            this.validationButton.classList.remove('btn-validation');
            this.validationButton.classList.add('btn-inactive');
            this.validationButton.removeEventListener('click', this.validationCallback);
        }
    }

    playerValidation() {
        this.gameState['pack']=this.parameters['pack'];
        this.validationButton.classList.remove('btn-validation');
        this.validationButton.classList.add('btn-inactive');
        this.validationButton.removeEventListener('click', this.validationCallback);
        document.querySelectorAll('.token-selected').forEach((elem)=>{
            elem.setAttribute('class', 'empty-slot');
            this.gameState['tokens']--
        });
        document.querySelectorAll('.token-active').forEach((elem)=>{elem.classList.remove('token-active')});

        

        if(this.gameState['tokens']==0) {
            this.gameOver('player');
        } else {
            this.turnCheck();
        }
    }

    gameOver(side) {
        console.log('game over');
    }
}