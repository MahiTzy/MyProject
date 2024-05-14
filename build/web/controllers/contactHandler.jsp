<%@page import="Connect.SmsSender"%>
<%@page import="dbpack.DbManager"%>
<%
    String name = request.getParameter("name");
    String address = request.getParameter("address");
    String contactno = request.getParameter("contactno");
    String emailaddress = request.getParameter("email");
    String enquirytext = request.getParameter("message");
    DbManager dm = new DbManager();
    String query = "insert into enquiry(name, address,contactno, emailaddress, enquirytext,enquirydate) values('" + name + "','" + address + "','" + contactno + "','" + emailaddress + "','" + enquirytext + "',curdate())";
    boolean res = dm.insertUpdateDelete(query);
    if (res == true) {
       SmsSender ss = new SmsSender();
       ss.sendSms(contactno);
        out.print("<script>alert('Enquiry is submitted');window.location.href='../index.jsp';</script>");
    } else {
        out.print("<script>alert('Enquiry is not submitted');window.location.href='../index.jsp';</script>");
    }
%>