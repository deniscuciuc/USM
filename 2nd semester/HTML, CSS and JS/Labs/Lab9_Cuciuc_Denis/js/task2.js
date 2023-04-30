function validateForm() {
    const loginInput = document.getElementById("login");
    const passwordInput = document.getElementById("password");
    const loginRegex = /^(?=.*[A-Z])(?=.*\d)[A-Za-z\d]{6,16}$/;
    const passwordRegex = /^(?=.*[A-Z])(?=.*\d)(?=.*[_@!#])[A-Za-z\d_@!#]{8,}$/;

    if (!loginRegex.test(loginInput.value)) {
      alert("Неверный логин. Логин должен содержать от 6 до 16 символов, хотя бы одну заглавную букву и хотя бы одну цифру.");
      return false;
    }

    if (!passwordRegex.test(passwordInput.value)) {
      alert("Неверный пароль. Пароль должен содержать не менее 8 символов, хотя бы одну заглавную букву, хотя бы одну цифру и хотя бы один из символов _, @, !, #.");
      return false;
    }

    return true;
}
