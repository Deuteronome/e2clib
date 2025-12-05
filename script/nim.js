export class Nim {

    parameterZone;
    tokenZone;
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

        //a voir plus tard

        this.tokenZone = document.createElement('div');
        this.tokenZone.setAttribute('id', 'token-zone');
        this.tokenZone.setAttribute('class', 'highlight');
        for(let i =0; i<this.parameters["tokens"]; i++) {
            
            const token = document.createElement('div');
            token.setAttribute('class', 'token token-active');

            this.tokenZone.appendChild(token);
        }

        if(this.parameters["tokens"]%6!=0) {
            for(let i = 0; i< 6-this.parameters["tokens"]%6; i++) {
                const slot = document.createElement('div');
            slot.setAttribute('class', 'empty-slot');

            this.tokenZone.appendChild(slot);
            }
        }
        
        //this.gameZone.appendChild(this.parameterZone);
        this.gameZone.appendChild(this.tokenZone);
    }
}