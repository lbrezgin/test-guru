document.addEventListener('turbolinks:load', function() {
    document.getElementById('password').addEventListener('input', checkPasswordMatch);
    document.getElementById('password_confirmation').addEventListener('input', checkPasswordMatch);
});

function checkPasswordMatch() {
    var password = document.getElementById("password")
    var password_confirmation = document.getElementById("password_confirmation")
    var password_match_message = document.getElementById("password-match-message");


    if (password_confirmation.value === "" || password.value === "") {
        password_match_message.innerHTML = ""
    } else if (password.value === password_confirmation.value) {
        password_match_message.innerHTML = '<p style="color: green;">Passwords match</p>'
    } else {
        password_match_message.innerHTML = '<p style="color: red;">Passwords not match</h1>'
    }
}

