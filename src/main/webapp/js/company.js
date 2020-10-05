//плавна заміна фото в хедері
let slideIndex = 0;
showSlides();

function showSlides() {
    let i;
    let slides = document.getElementsByClassName("start-photo");
    let underscores = document.getElementsByClassName("underscore");
    for (i = 0; i < slides.length; i++) {
        slides[i].style.display = "none";
    }
    slideIndex++;
    if (slideIndex > slides.length) {
        slideIndex = 1
    }
    for (i = 0; i < underscores.length; i++) {
        underscores[i].className = underscores[i].className.replace(" active", "");
    }
    slides[slideIndex - 1].style.display = "block";
    underscores[slideIndex - 1].className += " active";
    setTimeout(showSlides, 6000); // Change image every 2 seconds
}

//плавне відкривання тексту
let acc = document.getElementsByClassName("accordion");
let i;

for (i = 0; i < acc.length; i++) {
    acc[i].addEventListener("click", function () {
        this.classList.toggle("active");
        let panel = this.nextElementSibling;
        if (panel.style.maxHeight) {
            panel.style.maxHeight = null;
        } else {
            panel.style.maxHeight = panel.scrollHeight + "px";
        }
    });
}
