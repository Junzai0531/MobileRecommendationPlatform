window.onload = function() {
    const form = document.getElementById('login-form');
    form.addEventListener('submit', function(event) {
        const username = document.getElementById('username').value;
        const password = document.getElementById('password').value;

        if (!username || !password) {
            alert('Username and password should not be empty!');
            event.preventDefault();
        }
    });
}