const showPassword = document.querySelector("#showHide");
const passwordField = document.querySelector("#inputPassword");

showPassword.addEventListener("click", function() {
	this.classList.toggle("fa-eye-slash");
	
	const type = passwordField.getAttribute("type") === "password" ? "text" : "password";
	passwordField.setAttribute("type", type);
})