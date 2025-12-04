import { Connect } from "./connect.js";
import { Setup } from "./setup.js";
import { Game } from "./game.js";

function main() {
    const connect = new Connect();
    const setup = new Setup();
    switch (document.title) {
        case "Game":
            const game = new Game();
            break;
        default :
            console.log("nothing special")
        }

    window.addEventListener('resize', setup.mainHeight.bind(setup))
}

document.addEventListener("DOMContentLoaded", main)