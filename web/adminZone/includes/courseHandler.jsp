<%@page import="dbpack.DbManager"%>
<%
    String coursename = request.getParameter("coursename");
    DbManager dm = new DbManager();
    String query = "insert into course(coursename) values('" + coursename + "')";
    if (dm.insertUpdateDelete(query) == true) {
        out.print("<script>alert('Course is added');window.location.href='../courses.jsp'</script>");
    } else {
        out.print("<script>alert('Course is not added');window.location.href='../courses.jsp'</script>");
    }
%>