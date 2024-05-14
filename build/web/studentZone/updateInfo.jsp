<%@page import="dbpack.DbManager"%>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String id = request.getParameter("id");
    String name = request.getParameter("name");
    String fname = request.getParameter("fname");
    String mname = request.getParameter("mname");
    String gender = request.getParameter("gender");
    String address = request.getParameter("address");
    String cno = request.getParameter("contactno");
    String program = request.getParameter("program");
    String branch = request.getParameter("branch");
    String year = request.getParameter("year");
    String email = request.getParameter("email");
    DbManager ctx = new DbManager();
    String query = "update studentinfo set name='" + name + "',fname='" + fname + "',mname='" + mname + "',gender='" + gender + "',address='" + address + "',contactno='" + cno + "',program='" + program + "',branch='" + branch + "',year='" + year + "',emailaddress='" + email + "' where rollno='" + id + "'";
    String query1 = "update login set name='" + name + "' where userid='" + id + "'";
    boolean temp = ctx.insertUpdateDelete(query);
    boolean temp1 = ctx.insertUpdateDelete(query1);
    if (temp && temp1) {
        session.invalidate();
        out.print("<script>alert('Updated Successfully!');window.location.href='../index.jsp';</script>");
    }
%>