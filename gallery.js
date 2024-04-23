// menambahkan image slider

document.addEventListener("DOMContentLoaded", function() {
    const prevButton = document.getElementById("prev-button");
    const nextButton = document.getElementById("next-button");
    const sliderImages = document.querySelectorAll(".slider-images img");
    const totalSlides = sliderImages.length;
    const visibleSlides = 4;
    let currentIndex = 0;

    function updateSlider() {
        for (let i = 0; i < totalSlides; i++) {
            if (i >= currentIndex && i < currentIndex + visibleSlides) {
                sliderImages[i].style.display = "block";
            } else {
                sliderImages[i].style.display = "none";
            }
        }
    }

    function slideLeft() {
        currentIndex = (currentIndex === 0) ? totalSlides - visibleSlides : currentIndex - 1;
        updateSlider();
    }

    function slideRight() {
        currentIndex = (currentIndex === totalSlides - visibleSlides) ? 0 : currentIndex + 1;
        updateSlider();
    }

    prevButton.addEventListener("click", slideLeft);
    nextButton.addEventListener("click", slideRight);

    updateSlider();

    sliderImages.forEach(function(image) {
        image.addEventListener("click", function() {
            if (!image.classList.contains("enlarged")) {
                image.classList.add("enlarged");
            } else {
                image.classList.remove("enlarged");
            }
        });
    });

    const closeModal = document.querySelector(".close");
    closeModal.addEventListener("click", function() {
        const modal = document.getElementById("myModal");
        const overlay = document.getElementById("overlay");
        modal.style.display = "none";
        overlay.style.display = "none"; 
    });
});
