<%@page import="dbpack.DbManager"%>
<%
    String coursename = request.getParameter("coursename").trim();
    String question = request.getParameter("question").trim();
    String opt1 = request.getParameter("opt1").trim();
    String opt2 = request.getParameter("opt2").trim();
    String opt3 = request.getParameter("opt3").trim();
    String opt4 = request.getParameter("opt4").trim();
    String correct = request.getParameter("correct").trim();
    DbManager dm = new DbManager();
    String query = "insert into qb(coursename, question, opt1, opt2, opt3, opt4, correct) values('" + coursename + "','" + question + "','" + opt1 + "','" + opt2 + "','" + opt3 + "','" + opt4 + "','" + correct + "')";
    if (dm.insertUpdateDelete(query) == true) {
        out.print("<script>alert('Question is added');window.location.href='../questionbank.jsp';</script>");
    } else {
        out.print("<script>alert('Question is not added');window.location.href='../questionbank.jsp';</script>");
    }
%>