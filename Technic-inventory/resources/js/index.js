document.addEventListener("DOMContentLoaded", function() {
    const passwordInput = document.getElementById('password');
    const confirmPasswordInput = document.getElementById('confirm_password');
    const passwordMatchMsg = document.getElementById('show-error');

    function checkPasswordMatch() {
        const password = passwordInput.value;
        const confirmPassword = confirmPasswordInput.value;

      if(confirmPassword != password){
        passwordMatchMsg.textContent = "Password does not match"
    }else{
        passwordMatchMsg.textContent = "Password match"
    }
}
});