const submitBtn = document.getElementById("submitBtn");

submitBtn.addEventListener("click", () => {
  const userNameInput = document.getElementById("userNameInputBox").value;
  const emailInput = document.getElementById("emailInputBox");
  const passwordInput = document.getElementById("passwordInputBox").value;
  let nameError = document.getElementById('nameError');
  let emailError = document.getElementById('emailError');
  let passwordError = document.getElementById('passwordError');
  validateEmail = checkEmailValid(emailInput)

  let formPassed = true

  if (
      userNameInput.length < 3
  ) {
    nameError.innerHTML = "Username less than 3 characters";
    formPassed = false;
  }
  
  if (
    validateEmail === false
  ) {
    emailError.innerHTML = "Email not valid";
    formPassed = false
  }
  
  if (
    passwordInput.length < 6
  ) {
    passwordError.innerHTML = "Password less than 6 characters";
    formPassed = false
  }
  
  if (formPassed === false ||
    userNameInput.value === "" ||
    emailInput.value === "" ||
    passwordInput.value === "")
    {
    alert('Login Unsuccessful')
  } else {
    alert('Login Successful')
  }
    
      
});


function checkEmailValid(email) {
  const emailFormat = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
  if (!emailFormat.test(email.value)) {
    return false;
  } else {
    return true;
  }
}