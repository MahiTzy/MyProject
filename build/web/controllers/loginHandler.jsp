<%@page import="dbpack.DbManager"%>
<%@ page import="java.sql.*" %>
<%
    String userid = request.getParameter("userid");
    String password = request.getParameter("password");

    // Check if userid and password are not empty and not null
    if (userid != null && !userid.isEmpty() && password != null && !password.isEmpty()) {
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
        } else {
             out.print("<script>alert('Invalid user!');window.location.href='../index.jsp';</script>");
        }
    } else {
        
        out.print("<script>alert('Invalid login!');window.location.href='../index.jsp';</script>");
    }
%>

