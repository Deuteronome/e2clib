export class Connect {
        
    constructor() {
        this.connectButton = document.querySelector("#connect-button");
        this.connectBox = document.querySelector("#connect-background");
        this.closeButton = document.querySelector(".close-button");
        this.formBox = document.querySelector("#connect-form");

        this.connectButton.addEventListener("click", this.openConnect.bind(this))
        this.closeButton.addEventListener("click", this.closeConnect.bind(this))
        this.connectBox.addEventListener("click", this.closeConnect.bind(this))
        this.formBox.addEventListener("click", this.noClose.bind(this))
    }

    openConnect() {
        this.connectBox.style.display = "flex"
        setTimeout(()=> {this.connectBox.style.opacity = "1"}, 50)
        
    }

    closeConnect() {
        
        this.connectBox.style.opacity = "0"
        setTimeout(()=> {this.connectBox.style.display = "none"}, 500)
    }

    noClose(event) {
        event.stopPropagation()
    }

}