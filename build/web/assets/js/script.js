$(document).ready(function () {
    $('#loginModal').modal('show');
    $(function () {
        $('[data-toggle="tooltip"]').tooltip();
    });
});
function validateContactForm() {
    var name = document.getElementById('name-1').value;
    var contactNo = document.getElementById('contactno-1').value;
    var email = document.getElementById('email-1').value;
    var address = document.getElementById('subject-1').value;
    var message = document.getElementById('message-1').value;

    var nameError = document.getElementById('nameError');
    var contactError = document.getElementById('contactError');
    var emailError = document.getElementById('emailError');
    var addressError = document.getElementById('addressError');
    var messageError = document.getElementById('messageError');

    var isValid = true;

    // Reset error messages
    nameError.textContent = "";
    contactError.textContent = "";
    emailError.textContent = "";
    addressError.textContent = "";
    messageError.textContent = "";

    if (name.trim() === "") {
        nameError.textContent = "Name is required";
        isValid = false;
    }

    if (isNaN(contactNo) || contactNo.trim() === "") {
        contactError.textContent = "Valid contact number is required";
        isValid = false;
    }

    if (!validateEmail(email)) {
        emailError.textContent = "Valid email address is required";
        isValid = false;
    }

    if (address.trim() === "") {
        addressError.textContent = "Address is required";
        isValid = false;
    }

    if (message.trim() === "") {
        messageError.textContent = "Message is required";
        isValid = false;
    }

    return isValid;
}

function validateEmail(email) {
    var re = /\S+@\S+\.\S+/;
    return re.test(email);
}