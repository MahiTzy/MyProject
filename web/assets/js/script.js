$(document).ready(function () {
    $('#loginModal').modal('show');
    $(function () {
        $('[data-toggle="tooltip"]').tooltip();
    });
});
//function validate()
//{
//    var op = document.getElementById("currentPassword");
//    var np = document.getElementById("newpassword");
//    var cp = document.getElementById("confirmpassword");
//    if (op.value === "" || op.value === null)
//    {
//        alert('Please enter old password');
//        op.focus();
//    } else if (np.value === "" || np.value === null)
//    {
//        alert('Please enter new password');
//        np.focus();
//    } else if (cp.value === "" || cp.value === null)
//    {
//        alert('Please enter confirm password');
//        cp.focus();
//    } else if (np.value !== cp.value)
//    {
//        alert('Newpassword and confirmpassword are not matched');
//        cp.focus();
//    } else
//    {
//        document.getElementById("changePasswordModal").submit();
//    }
//
//}
//function validate()
//{
//    var userid = document.getElementById("userid");
//    var password = document.getElementById("password");
//    if (userid.value == "" || userid.value == null)
//    {
//        alert('Please enter userid');
//        userid.focus();
//    } else if (password.value == "" || password.value == null)
//    {
//        alert('Please enter password');
//        password.focus();
//    } else
//    {
//        document.getElementById("frmlogin").submit();
//    }
//}