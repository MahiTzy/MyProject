<%@page import="dbpack.DbManager"%>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String userid = (String)session.getAttribute("adminid");
    String oldpass = request.getParameter("oldpass");
    String newpass = request.getParameter("newpass");
    DbManager ctx = new DbManager();
    String query = "update login set password='"+newpass+"' where userid='"+userid+"' and password='"+oldpass+"'";
    boolean temp = ctx.insertUpdateDelete(query);
    if (temp) {
        out.print("<script>alert('Success');window.location.href='../index.jsp';</script>");
    }
%>