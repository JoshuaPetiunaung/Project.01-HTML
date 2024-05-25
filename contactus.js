document.addEventListener('DOMContentLoaded', function() {
    const urlParams = new URLSearchParams(window.location.search);
    const messageSent = urlParams.get('message_sent');

    if (messageSent) {
        const notification = document.getElementById('notification');
        notification.classList.remove('hidden');
        notification.classList.add('slide-in-out');

        setTimeout(function() {
            notification.classList.remove('slide-in-out');
            notification.classList.add('hidden');
        }, 5000);
    }

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

    window.onload = startLogoutTimer;
    window.addEventListener("mousemove", resetLogoutTimer);
    window.addEventListener("keypress", resetLogoutTimer);
});
