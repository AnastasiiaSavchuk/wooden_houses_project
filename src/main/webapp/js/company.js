//зміна слайда вибором кнопки
let slideIndex = 1;
showOneSlide(slideIndex);

function currentSlide(n) {
    showOneSlide(slideIndex = n);
}

function showOneSlide(n) {
    let i;
    let slides = document.getElementsByClassName("start-photo");
    let currentDots = document.getElementsByClassName("dot");
    if (n > slides.length) {
        slideIndex = 1
    }
    if (n < 1) {
        slideIndex = slides.length
    }
    for (i = 0; i < slides.length; i++) {
        slides[i].style.display = "none";
    }
    for (i = 0; i < currentDots.length; i++) {
        currentDots[i].className = currentDots[i].className.replace(" active", "");
    }
    slides[slideIndex - 1].style.display = "block";
    currentDots[slideIndex - 1].className += " active";
}


//плавна заміна фото кожні 5 секунд
showNextSlides();

function showNextSlides() {
    let i;
    let slides = document.getElementsByClassName("start-photo");
    let dots = document.getElementsByClassName("dot");
    for (i = 0; i < slides.length; i++) {
        slides[i].style.display = "none";
    }
    slideIndex++;
    if (slideIndex > slides.length) {
        slideIndex = 1
    }
    for (i = 0; i < dots.length; i++) {
        dots[i].className = dots[i].className.replace(" active", "");
    }
    slides[slideIndex - 1].style.display = "block";
    dots[slideIndex - 1].className += " active";
    setTimeout(showNextSlides, 5000); // Change image every 5 seconds
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
