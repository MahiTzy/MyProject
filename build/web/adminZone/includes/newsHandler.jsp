<%-- 
    Document   : newsHandler
    Created on : May 3, 2024, 5:24:48 PM
    Author     : 91982
--%>

<%@page import="dbpack.DbManager"%>
<%
    String newstext = request.getParameter("newstext");
    DbManager dm = new DbManager();
    String query = "insert into news(newstext,posteddate) values('" + newstext + "',curdate())";
    if (dm.insertUpdateDelete(query) == true) {
        out.print("<script>alert('News is added');window.location.href='../news.jsp';</script>");
    } else {
        out.print("<script>alert('News is not added');window.location.href='../news.jsp';</script>");
    }
%>
