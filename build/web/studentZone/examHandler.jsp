<%
    String coursename = request.getParameter("coursename");
    session.setAttribute("coursename", coursename);
    response.sendRedirect("examStart.jsp");
%>