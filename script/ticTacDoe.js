export class TicTacDoe {

    infoZone;
    playerInfo;
    playerText;
    playerImage;
    restartZone;
    restartButton;
    gridZone;
    scores = [];
    firstPlayer = true;

    constructor() {
        this.gameZone = document.querySelector('#game-zone');

        this.init();
    }

    init() {
        this.scores=[];
        this.gameZone.innerHTML="";
        this.gameZone.setAttribute('class', 'tic-tac-doe');

        this.infoZone = document.createElement('div');
        this.infoZone.setAttribute('id', 'info-zone');
        this.infoZone.setAttribute('class', 'highlight');

        

        this.playerInfo = document.createElement('div');
        this.playerInfo.setAttribute('id', 'player-info');

        this.playerText = document.createElement('div')
        this.playerText.setAttribute('id', 'player-text');
        this.playerText.innerHTML = "Joueur actif :";

        this.playerImage= document.createElement('div');
        this.playerImage.setAttribute('id', 'player-image');
        this.playerImage.style.backgroundImage = "url('../assets/icons/player1.png')";

        this.playerInfo.appendChild(this.playerText);
        this.playerInfo.appendChild(this.playerImage);

        this.restartZone = document.createElement('div');

        
        this.infoZone.appendChild(this.playerInfo);
        this.infoZone.appendChild(this.restartZone);

        this.gridZone = document.createElement('div');
        this.gridZone.setAttribute('id', 'grid-zone');

        for(let i = 0; i<9; i++) {
            const square = document.createElement('div');
            square.setAttribute('class', 'square active');
            square.addEventListener('click', this.clickOnSquare.bind(this, i, square));
            this.scores.push(0);
            this.gridZone.appendChild(square);
        }

        this.gameZone.appendChild(this.infoZone);
        this.gameZone.appendChild(this.gridZone);

    }

    clickOnSquare(i, square) {
        if(square.classList.contains("active")) {
            square.classList.remove("active")
            if(this.firstPlayer) {
                 square.style.backgroundImage = "url('../assets/icons/player1.png')";
                this.playerImage.style.backgroundImage = "url('../assets/icons/player2.png')";
                this.scores[i] = 1
            } else {
                square.style.backgroundImage = "url('../assets/icons/player2.png')";
                this.playerImage.style.backgroundImage = "url('../assets/icons/player1.png')";
                this.scores[i] = 4
            }
            this.firstPlayer = !this.firstPlayer
            this.checkVictory()
        }
    }

    checkVictory() {
        let victoryLines = [
            this.scores[0]+this.scores[1]+this.scores[2],
            this.scores[3]+this.scores[4]+this.scores[5],
            this.scores[6]+this.scores[7]+this.scores[8],
            this.scores[0]+this.scores[3]+this.scores[6],
            this.scores[1]+this.scores[4]+this.scores[7],
            this.scores[2]+this.scores[5]+this.scores[8],
            this.scores[0]+this.scores[4]+this.scores[8],
            this.scores[2]+this.scores[4]+this.scores[6]
        ];

        console.log(victoryLines);

        //console.log(victoryLines);
        if (victoryLines.includes(3)) {
            this.gameOver('player1');
        } else if (victoryLines.includes(12)) {
            this.gameOver('player2');
        } else if (document.querySelectorAll('.active').length == 0) {
            this.gameOver('nul');
        }
    }

    gameOver(status) {
        document.querySelectorAll('.active').forEach((element)=>{element.classList.remove('active')});

        switch(status) {
            case 'player1':
                this.playerText.innerHTML = "Gagnant :";
                this.playerImage.style.backgroundImage = "url('../assets/icons/player1.png')";
                break;
            case 'player2':
                this.playerText.innerHTML = "Gagnant :";
                this.playerImage.style.backgroundImage = "url('../assets/icons/player2.png')";
                break;
            default:
                this.playerText.innerHTML = "Match nul";
                this.playerImage.style.backgroundImage = "url('../assets/icons/draw.png')";
        }

        this.restartButton = document.createElement('div');
        this.restartButton.setAttribute('class', 'btn btn-light');
        this.restartButton.innerHTML = 'Recommencer'
        this.restartButton.addEventListener('click', this.init.bind(this));

        this.restartZone.appendChild(this.restartButton);
    }
}