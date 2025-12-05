export class Nim {

    parameterZone;
    tokenZone;
    validationZone;
    inactiveButton;
    validationButton;
    parameters = {
        "tokens":12,
        "pack":3,
        "regular":true,
        "humanFirst":true
    };

    constructor() {
        this.gameZone = document.querySelector('#game-zone');

        this.init();
    }

    init() {
        this.gameZone.innerHTML="";
        this.gameZone.setAttribute('class', 'nim');
        this.parameterZone = document.createElement('div');
        this.parameterZone.setAttribute('id', 'parameter-zone');
        this.parameterZone.setAttribute('class', 'highlight');

       

        this.tokenZone = document.createElement('div');
        this.tokenZone.setAttribute('id', 'token-zone');
        this.tokenZone.setAttribute('class', 'highlight');
        for(let i =0; i<this.parameters["tokens"]; i++) {
            
            const token = document.createElement('div');
            token.setAttribute('class', 'token');

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

        this.inactiveButton=document.createElement('div');
        this.inactiveButton.setAttribute('class', 'btn btn-inactive');
        this.inactiveButton.innerHTML= "Prendre";

        this.validationButton=document.createElement('div');
        this.validationButton.setAttribute('class', 'btn btn-validation');
        this.validationButton.innerHTML= "Prendre";

        this.validationZone.appendChild(this.inactiveButton);
        this.tokenZone.appendChild(this.validationZone);
        this.gameZone.appendChild(this.parameterZone);
        this.gameZone.appendChild(this.tokenZone);
    }
}