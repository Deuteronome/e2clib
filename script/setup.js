export class Setup {
    constructor() {
        this.header = document.querySelector("header");
        this.footer = document.querySelector("footer");
        this.main = document.querySelector("main")

        this.mainHeight()
    }

    mainHeight() {
        
        const headerHeigth = this.header.offsetHeight;
        const footerHeight = this.footer.offsetHeight;
        const totalHeight = window.innerHeight;
        
        this.main.style.minHeight = `${totalHeight - (headerHeigth + footerHeight)}px`
        this.main.style.top = `${headerHeigth}px`
        this.footer.style.top = `${headerHeigth}px`
    }
}