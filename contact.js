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

    const timeoutInMilliseconds = 120000;
    let logoutTimer;

    function startLogoutTimer() {
        clearTimeout(logoutTimer);
        logoutTimer = setTimeout(() => {
            window.location.href = "logout.php";
        }, timeoutInMilliseconds);
    }

    function resetLogoutTimer() {
        clearTimeout(logoutTimer);
        startLogoutTimer();
    }

    // Memulai timer saat halaman dimuat
    window.onload = startLogoutTimer;

    // Mereset timer saat terjadi aktivitas pengguna
    window.addEventListener("mousemove", resetLogoutTimer);
    window.addEventListener("keypress", resetLogoutTimer);

    // Menambahkan kredit
    const credit = document.createElement("span");
    credit.textContent = "Created by: JoshuaPetiunaung";
    credit.setAttribute("id", "credit");
    document.body.appendChild(credit);
});
