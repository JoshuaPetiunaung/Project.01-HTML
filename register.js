window.addEventListener('DOMContentLoaded', function() {
    var errorMessage = document.getElementById('error-message');

    // Hapus pesan kesalahan setelah beberapa detik
    if (errorMessage.textContent !== '') {
        setTimeout(function() {
            errorMessage.textContent = '';
        }, 3000); // Hapus pesan kesalahan setelah 3 detik
    }

    var registerForm = document.getElementById('register-form');

    registerForm.addEventListener('submit', function(event) {
        var usernameInput = document.querySelector('input[name="username"]');
        var emailInput = document.querySelector('input[name="email"]');
        var username = usernameInput.value.trim();
        var email = emailInput.value.trim();

        if (username === '' || email === '') {
            event.preventDefault(); // Mencegah pengiriman formulir jika ada field yang kosong
            errorMessage.textContent = 'Silakan isi semua kolom!';
        }
    });
});
