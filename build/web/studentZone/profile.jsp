<%-- 
    Document   : profile
    Created on : May 1, 2024, 10:41:24 AM
    Author     : 91982
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="dbpack.DbManager"%>
<%
    if (session.getAttribute("rollno") == null) {
        response.sendRedirect("../login.jsp");
    } else {
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" data-bs-theme="dark">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Student | Profile</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
        <link href="../assets/css/style.css" rel="stylesheet">
        <link rel="icon" type="image/png" href="../assets/img/favicon.ico">
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons+Sharp" rel="stylesheet">

    </head>
    <body>
        <%@include file="includes/changepassmodal.jsp" %>
        <div class="container-fluid">
            <div class="row">
                <nav id="sidebarMenu" class="border-end col-md-2 col-lg-2 d-md-block navbar-dark sidebar collapse">
                    <div class="position-sticky pt-3" id="side">
                        <div class="d-flex flex-column align-items-center">
                            <img src="../assets/img/logo.png" style="width: 150px;"/>
                            <h2 class="text-center">Student Panel</h2>
                        </div>
                        <ul class="nav flex-column mt-3">
                            <li class="nav-item">
                                <a class="nav-link d-flex align-items-center" aria-current="page" href="shome.jsp">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-house-door" viewBox="0 0 16 16">
                                    <path d="M8.354 1.146a.5.5 0 0 0-.708 0l-6 6A.5.5 0 0 0 1.5 7.5v7a.5.5 0 0 0 .5.5h4.5a.5.5 0 0 0 .5-.5v-4h2v4a.5.5 0 0 0 .5.5H14a.5.5 0 0 0 .5-.5v-7a.5.5 0 0 0-.146-.354L13 5.793V2.5a.5.5 0 0 0-.5-.5h-1a.5.5 0 0 0-.5.5v1.293zM2.5 14V7.707l5.5-5.5 5.5 5.5V14H10v-4a.5.5 0 0 0-.5-.5h-3a.5.5 0 0 0-.5.5v4z"/>
                                    </svg>&nbsp;&nbsp;Home
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link active" href="profile.jsp">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-person-lines-fill" viewBox="0 0 16 16">
                                    <path d="M6 8a3 3 0 1 0 0-6 3 3 0 0 0 0 6m-5 6s-1 0-1-1 1-4 6-4 6 3 6 4-1 1-1 1zM11 3.5a.5.5 0 0 1 .5-.5h4a.5.5 0 0 1 0 1h-4a.5.5 0 0 1-.5-.5m.5 2.5a.5.5 0 0 0 0 1h4a.5.5 0 0 0 0-1zm2 3a.5.5 0 0 0 0 1h2a.5.5 0 0 0 0-1zm0 3a.5.5 0 0 0 0 1h2a.5.5 0 0 0 0-1z"/>
                                    </svg>&nbsp;&nbsp;Profile
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="exam.jsp">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-book-half" viewBox="0 0 16 16">
                                    <path d="M8.5 2.687c.654-.689 1.782-.886 3.112-.752 1.234.124 2.503.523 3.388.893v9.923c-.918-.35-2.107-.692-3.287-.81-1.094-.111-2.278-.039-3.213.492zM8 1.783C7.015.936 5.587.81 4.287.94c-1.514.153-3.042.672-3.994 1.105A.5.5 0 0 0 0 2.5v11a.5.5 0 0 0 .707.455c.882-.4 2.303-.881 3.68-1.02 1.409-.142 2.59.087 3.223.877a.5.5 0 0 0 .78 0c.633-.79 1.814-1.019 3.222-.877 1.378.139 2.8.62 3.681 1.02A.5.5 0 0 0 16 13.5v-11a.5.5 0 0 0-.293-.455c-.952-.433-2.48-.952-3.994-1.105C10.413.809 8.985.936 8 1.783"/>
                                    </svg>&nbsp;&nbsp;Exam
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="result.jsp">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-card-checklist" viewBox="0 0 16 16">
                                    <path d="M14.5 3a.5.5 0 0 1 .5.5v9a.5.5 0 0 1-.5.5h-13a.5.5 0 0 1-.5-.5v-9a.5.5 0 0 1 .5-.5zm-13-1A1.5 1.5 0 0 0 0 3.5v9A1.5 1.5 0 0 0 1.5 14h13a1.5 1.5 0 0 0 1.5-1.5v-9A1.5 1.5 0 0 0 14.5 2z"/>
                                    <path d="M7 5.5a.5.5 0 0 1 .5-.5h5a.5.5 0 0 1 0 1h-5a.5.5 0 0 1-.5-.5m-1.496-.854a.5.5 0 0 1 0 .708l-1.5 1.5a.5.5 0 0 1-.708 0l-.5-.5a.5.5 0 1 1 .708-.708l.146.147 1.146-1.147a.5.5 0 0 1 .708 0M7 9.5a.5.5 0 0 1 .5-.5h5a.5.5 0 0 1 0 1h-5a.5.5 0 0 1-.5-.5m-1.496-.854a.5.5 0 0 1 0 .708l-1.5 1.5a.5.5 0 0 1-.708 0l-.5-.5a.5.5 0 0 1 .708-.708l.146.147 1.146-1.147a.5.5 0 0 1 .708 0"/>
                                    </svg>&nbsp;&nbsp;Result
                                </a>
                            </li>
                        </ul>
                        <div class="d-flex flex-column gap-2 mt-3">
                            <button class="btn btn-outline-danger" data-bs-toggle="modal" data-bs-target="#changePasswordModal">Change Password</a>
                                <button class="btn btn-outline-danger" onclick='window.location.href = "../controllers/logoutHandler.jsp"'>Logout</button>
                        </div>
                    </div>
                </nav>

                <main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
                    <%@include file="includes/sHeader.jsp" %>
                    <div class="pt-3 pb-2 mb-3 border-bottom">
                        <h1 class="h2">View & Manage your Profie here</h1>
                    </div>
                    <div class="container-xl px-4 mt-4">
                        <div class="row">
                            <div class="col-xl-4">
                                <!--Profile picture card-->
                                <div class="card mb-4 mb-xl-0">
                                    <div class="card-header">Profile Picture</div>
                                    <div class="card-body text-center">
                                        <form id="uploadForm" action="../UploadFile?id=${rollno}" method="post" enctype="multipart/form-data">
                                            <input type="file" id="profilePictureFile" name="profilePictureFile" accept="image/*" style="display: none;">
                                            <%
                                                String id = session.getAttribute("rollno").toString();
                                                DbManager dm = new DbManager();
                                                ResultSet rs = dm.select("select * from login where userid='" + id + "'");
                                                if (rs.next()) {
                                            %>
                                            <% String profilePicturePath = rs.getString("profile");%>
                                            <label for="profilePictureFile">
                                                <%if (profilePicturePath != null && profilePicturePath != "") {%>
                                                <img class="img-account-profile rounded-circle mb-2" id="profilePictureImg" src="<%=request.getContextPath()%>/uploadimage/<%=profilePicturePath%>" height="300px" width="300px" style="cursor: pointer" alt="">
                                                <% } else { %>
                                                <img class="img-account-profile rounded-circle mb-2" id="profilePictureImg" src="../assets/img/placeholder.jpg" height="300px" width="300px" style="cursor: pointer" alt="">
                                                <% } %>
                                            </label>
                                            <%  }%>
                                            <!--Profile picture help block-->
                                            <div class="small font-italic text-muted mb-4">Click on image to change Profile Picture</div>
                                            <!--Profile picture upload button-->
                                            <input type="submit" class="btn btn-primary" value="Upload Picture">
                                            <div class="small font-italic text-muted mt-2">JPG or PNG no larger than 5 MB</div>
                                        </form>
                                    </div>
                                </div>
                                <% if (session.getAttribute("error") != null) {%>
                                <div style="color: red;">
                                    <%= session.getAttribute("error")%>
                                </div>
                                <% session.removeAttribute("error"); %>
                                <% } %>
                            </div>
                            <div class="col-xl-8">
                                <!--Account details card-->
                                <div class="card mb-4">
                                    <div class="card-header">Account Details</div>
                                    <div class="card-body">
                                        <form action='updateInfo.jsp?id=${rollno}' method='post'>
                                            <%
                                                ResultSet rs1 = dm.select("select * from studentinfo where rollno='" + id + "'");
                                                if (rs1.next()) {
                                            %>
                                            <!--Form Group (username)-->
                                            <div class="mb-3">
                                                <label class="small mb-1" for="inputUsername">Your name</label>
                                                <input class="form-control" name='name' id="inputUsername" type="text" value="<%=rs1.getString("name")%>">
                                            </div>
                                            <!--Form Row-->
                                            <div class="row gx-3 mb-3">
                                                <!--Form Group (first name)-->
                                                <div class="col-md-6">
                                                    <label class="small mb-1" for="inputFirstName">Father's name</label>
                                                    <input class="form-control" name='fname' id="inputFirstName" type="text" value="<%=rs1.getString("fname")%>">
                                                </div>
                                                <!--Form Group (last name)-->
                                                <div class="col-md-6">
                                                    <label class="small mb-1" for="inputLastName">Mother's name</label>
                                                    <input class="form-control" name='mname' id="inputLastName" type="text" value="<%=rs1.getString("mname")%>">
                                                </div>
                                            </div>
                                            <!--Form Row-->
                                            <div class="row gx-3 mb-3">
                                                <!--Form Group (birthday)-->
                                                <div class="col-md-4">
                                                    <label class="small mb-1" for="inputBirthday">Program</label>
                                                    <input class="form-control" id="inputBirthday" name='program' type="text" value="<%=rs1.getString("program")%>" readonly>
                                                </div>
                                                <div class="col-md-4">
                                                    <label class="small mb-1" for="inputBirthday">Branch</label>
                                                    <input class="form-control" id="inputBirthday" type="text" name="branch" value="<%=rs1.getString("branch")%>" readonly>
                                                </div>
                                                <div class="col-md-4">
                                                    <label class="small mb-1" for="inputBirthday">Year</label>
                                                    <input class="form-control" id="inputBirthday" type="text" name="year" value="<%=rs1.getString("year")%>" readonly>
                                                </div>
                                            </div>
                                            <!--Form Row-->        
                                            <div class="row gx-3 mb-3">
                                                <!--Form Group (organization name)-->
                                                <div class="col-md-6">
                                                    <label class="small mb-1" for="inputOrgName">Address</label>
                                                    <input class="form-control" id="inputOrgName" name='address' type="text" value="<%=rs1.getString("address")%>">
                                                </div>
                                                <!--Form Group (location)-->
                                                <div class="col-md-6">
                                                    <label class="small mb-1" for="inputLocation">Contact no.</label>
                                                    <input class="form-control" id="inputLocation" type="text" name='contactno' value="<%=rs1.getString("contactno")%>">
                                                </div>
                                            </div>
                                            <!--Form Group (email address)-->
                                            <div class="mb-3 row gx-3">
                                                <div class="col-md-6">
                                                    <label class="small mb-1" for="inputPhone">Gender</label>
                                                    <input class="form-control" id="inputPhone" name='gender' type="tel" value="<%=rs1.getString("gender")%>" readonly>
                                                </div>
                                                <div class="col-md-6">
                                                    <label class="small mb-1" for="inputEmailAddress">Email address</label>
                                                    <input class="form-control" id="inputEmailAddress" name='email' type="email" value="<%=rs1.getString("emailaddress")%>">
                                                </div>
                                            </div>
                                            <% } %>

                                            <button class="btn btn-primary" type="submit">Save changes</button>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </main>
            </div>
        </div>
        <%@include file="includes/sFooter.jsp" %>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    </body>
</html>

<% }%>

