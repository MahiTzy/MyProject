<%@page import="dbpack.DbManager"%>
<%@ page import="java.sql.*" %>
<%
    String userid = request.getParameter("userid");
    String password = request.getParameter("password");
    DbManager dm = new DbManager();
    String query = "select * from login where userid='" + userid + "' and password='" + password + "'";
    ResultSet rs = dm.select(query);
    if (rs.next()) {
        String usertype = rs.getString("usertype");
        if (usertype.equals("admin")) {
            session.setAttribute("name", rs.getString("name"));
            session.setAttribute("adminid", userid);
            response.sendRedirect("../adminZone/ahome.jsp");
        } else if (usertype.equals("student")) {
            session.setAttribute("rollno", userid);
            session.setAttribute("name", rs.getString("name"));
            response.sendRedirect("../studentZone/shome.jsp");
        }
    }
%>
