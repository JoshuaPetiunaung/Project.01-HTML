// menambahkan efek ketika scroll halaman web

const articles = document.querySelectorAll('article');

function isInViewport(element) {
    const rect = element.getBoundingClientRect();
    return (
        rect.top >= 0 &&
        rect.left >= 0 &&
        rect.bottom <= (window.innerHeight || document.documentElement.clientHeight) &&
        rect.right <= (window.innerWidth || document.documentElement.clientWidth)
    );
}

function handleScroll() {
    articles.forEach(article => {
        if (isInViewport(article)) {
            article.classList.add('active');
        } else {
            article.classList.remove('active');
        }
    });
}

document.addEventListener('DOMContentLoaded', handleScroll);
document.addEventListener('scroll', handleScroll);

const credit = document.createElement("span");
credit.textContent = "Created by: JoshuaPetiunaung";
credit.setAttribute("id", "credit");
document.body.appendChild(credit);
