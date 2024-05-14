<%@page import="dbpack.DbManager"%>
<%
    int rollno = Integer.parseInt(request.getParameter("rollno"));
    String name = request.getParameter("name");
    String fname = request.getParameter("fname");
    String mname = request.getParameter("mname");
    String gender = request.getParameter("gender");
    String address = request.getParameter("address");
    String program = request.getParameter("program");
    String branch = request.getParameter("branch");
    String year = request.getParameter("year");
    String contactno = request.getParameter("contactno");
    String emailaddress = request.getParameter("email");
    String password = request.getParameter("password");
    String confirmPassword = request.getParameter("conpassword");

    if (password.equals(confirmPassword)) { // Check if password and confirm password match
        DbManager dm = new DbManager();
        String query1 = "insert into studentinfo values('" + rollno + "','" + name + "','" + fname + "','" + mname + "','" + gender + "','" + address + "','" + program + "','" + branch + "','" + year + "','" + contactno + "','" + emailaddress + "',curdate())";
        String query2 = "insert into login values('" + rollno + "','" + name + "','" + password + "','student','false',null)";

        if (dm.insertUpdateDelete(query1) && dm.insertUpdateDelete(query2)) {
            out.print("<script>alert('Registration is done');window.location.href='../index.jsp';</script>");
        } else {
            out.print("<script>alert('Registration is not done');window.location.href='../index.jsp';</script>");
        }
    } else {
        out.print("<script>alert('Password and confirm password do not match');window.location.href='../index.jsp';</script>");
    }
%>
