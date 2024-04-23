// menambahkan efek shadow ketika mouse masuk dan keluar

const buttons = document.querySelectorAll('ul a');

buttons.forEach(button => {
    button.addEventListener('mouseenter', () => {
        button.style.boxShadow = '0 0 10px rgba(255, 255, 255, 0.5)';
    });

    button.addEventListener('mouseleave', () => {
        button.style.boxShadow = 'none';
    });
});
