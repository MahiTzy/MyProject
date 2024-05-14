<%@page import="dbpack.DbManager"%>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String userid = (String) session.getAttribute("adminid");
    String oldpass = request.getParameter("oldpass");
    String newpass = request.getParameter("newpass");
    String confirmpass = request.getParameter("newcon");

    if (userid != null && oldpass != null && newpass != null && confirmpass != null) {
        if (newpass.equals(confirmpass)) { // Check if newpass and confirmpass match
            DbManager ctx = new DbManager();
            String validateQuery = "select * from login where userid='" + userid + "' and password='" + oldpass + "'";
            ResultSet rs = ctx.select(validateQuery);
            if (rs.next()) {
                String updateQuery = "update login set password='" + newpass + "' where userid='" + userid + "'";
                boolean updateResult = ctx.insertUpdateDelete(updateQuery);
                if (updateResult) {
                    session.invalidate();
                    out.print("<script>alert('Password updated successfully');window.location.href='../index.jsp';</script>");
                } else {
                    out.print("<script>alert('Failed to update password');window.location.href='ahome.jsp';</script>");
                }
            } else {
                out.print("<script>alert('Old password is incorrect');window.location.href='ahome.jsp';</script>");
            }
        } else {
            out.print("<script>alert('New password and confirm password do not match');window.location.href='ahome.jsp';</script>");
        }
    } else {
        out.print("<script>alert('Invalid input');window.location.href='ahome.jsp';</script>");
    }
%>

