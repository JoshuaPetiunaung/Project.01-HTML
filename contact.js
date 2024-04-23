// menambahkan efek shadow ketika mouse masuk dan keluar pada tombol

document.addEventListener("DOMContentLoaded", function() {
    const buttons = document.querySelectorAll('ul a');

    buttons.forEach(button => {
        button.addEventListener('mouseenter', () => {
            button.style.boxShadow = '0 0 10px rgba(255, 255, 255, 0.5)';
        });

        button.addEventListener('mouseleave', () => {
            button.style.boxShadow = 'none';
        });
    });

    const credit = document.createElement("span");
    credit.textContent = "Created by: JoshuaPetiunaung";
    credit.setAttribute("id", "credit");
    document.body.appendChild(credit);
});
