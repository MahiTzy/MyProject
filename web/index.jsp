<%-- 
    Document   : index.jsp
    Created on : Apr 30, 2024, 4:14:16 PM
    Author     : 91982
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" data-bs-theme="dark">

    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
        <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
        <!--<link rel="stylesheet" href="assets/css/style.css">-->
        <link href="https://use.fontawesome.com/releases/v5.11.2/css/all.css" rel="stylesheet" />
        <link rel="stylesheet"
              href="https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic&amp;display=swap">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Cabin:700&amp;display=swap">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <title>Home | OES</title>
    </head>

    <body id="page-top" data-bs-spy="scroll" data-bs-target="#mainNav" data-bs-offset="77">
        <%@include file="components/header.jsp" %>

        <!--Login Modal started -->
        <%@include file="components/loginModal.jsp" %>
        <!-- Login modal end       -->
        <!-- Sign up modal started       -->
        <%@include file="components/signUpModal.jsp" %>
        <!-- Sign up modal end       -->

        <!--  about      -->
        <section class="text-center content-section" id="about">
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 mx-auto">
                        <h2>About Online Examination System</h2>
                        <p>The objective to design the portal is to facilitate “E-learning System to the students for the learning purpose from a remote location". The Portal is a Secure, Robust Web Application for E-Learning.</p>

                        <p>NOU-E-Gyan Portal is a Learning Management System (LMS) for the colleges/ institutions / study centers for their unstoppable teaching to their students in the current crisis situation & in future as well since we all are now experiencing a paradigm shift. The portal is user friendly & easy to access.</p>

                        <p>The portal is accessible from any hook and corner of the world if the system allows the permission of its users. It is fully secured and accessible 24 x 7 to its authorised users. It will resolve the academic issues such as E-content Distribution, Delivery, Tracking, Assessment, Progress Monitoring & Controlling of all stakeholders of the portal i.e. students, teachers, study centre administrators as well as Nalanda Open University Admins when they are at a distance.</p>
                    </div>
                </div>
            </div>
        </section>
        <!-- contact-->
        <section class="position-relative py-4 py-xl-5 bg-dark" id="contact">
            <div class="container position-relative">
                <div class="row mb-5">
                    <div class="col-md-8 col-xl-6 text-center mx-auto">
                        <h2>Contact us</h2>
                        <p class="w-lg-50">Fill the form and get connected to us.</p>
                    </div>
                </div>
                <div class="row d-flex justify-content-center">
                    <div class="col-md-6 col-lg-4 col-xl-4">
                        <div class="d-flex flex-column justify-content-center align-items-start h-100">
                            <div class="d-flex align-items-center p-3">
                                <div class="p-3 rounded-3 bg-primary bs-icon-md bs-icon-rounded bs-icon-primary d-flex flex-shrink-0 justify-content-center align-items-center d-inline-block bs-icon"><svg xmlns="http://www.w3.org/2000/svg" width="1em" height="1em" fill="currentColor" viewBox="0 0 16 16" class="bi bi-telephone text-black">
                                    <path d="M3.654 1.328a.678.678 0 0 0-1.015-.063L1.605 2.3c-.483.484-.661 1.169-.45 1.77a17.568 17.568 0 0 0 4.168 6.608 17.569 17.569 0 0 0 6.608 4.168c.601.211 1.286.033 1.77-.45l1.034-1.034a.678.678 0 0 0-.063-1.015l-2.307-1.794a.678.678 0 0 0-.58-.122l-2.19.547a1.745 1.745 0 0 1-1.657-.459L5.482 8.062a1.745 1.745 0 0 1-.46-1.657l.548-2.19a.678.678 0 0 0-.122-.58L3.654 1.328zM1.884.511a1.745 1.745 0 0 1 2.612.163L6.29 2.98c.329.423.445.974.315 1.494l-.547 2.19a.678.678 0 0 0 .178.643l2.457 2.457a.678.678 0 0 0 .644.178l2.189-.547a1.745 1.745 0 0 1 1.494.315l2.306 1.794c.829.645.905 1.87.163 2.611l-1.034 1.034c-.74.74-1.846 1.065-2.877.702a18.634 18.634 0 0 1-7.01-4.42 18.634 18.634 0 0 1-4.42-7.009c-.362-1.03-.037-2.137.703-2.877L1.885.511z"></path>
                                    </svg></div>
                                <div class="px-2">
                                    <h6 class="mb-0">Phone</h6>
                                    <p class="mb-0">+1234567890</p>
                                </div>
                            </div>
                            <div class="d-flex align-items-center p-3">
                                <div class="p-3 rounded-3 bg-primary bs-icon-xl bs-icon-rounded bs-icon-primary d-flex flex-shrink-0 justify-content-center align-items-center d-inline-block bs-icon"><svg xmlns="http://www.w3.org/2000/svg" width="1em" height="1em" fill="currentColor" viewBox="0 0 16 16" class="bi bi-envelope text-black">
                                    <path d="M0 4a2 2 0 0 1 2-2h12a2 2 0 0 1 2 2v8a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2zm2-1a1 1 0 0 0-1 1v.217l7 4.2 7-4.2V4a1 1 0 0 0-1-1zm13 2.383-4.708 2.825L15 11.105zm-.034 6.876-5.64-3.471L8 9.583l-1.326-.795-5.64 3.47A1 1 0 0 0 2 13h12a1 1 0 0 0 .966-.741M1 11.105l4.708-2.897L1 5.383z"></path>
                                    </svg></div>
                                <div class="px-2">
                                    <h6 class="mb-0">Email</h6>
                                    <p class="mb-0">oes@gmail.com</p>
                                </div>
                            </div>
                            <div class="d-flex align-items-center p-3">
                                <div class="p-3 rounded-3 bg-primary bs-icon-md bs-icon-rounded bs-icon-primary d-flex flex-shrink-0 justify-content-center align-items-center d-inline-block bs-icon"><svg xmlns="http://www.w3.org/2000/svg" width="1em" height="1em" fill="currentColor" viewBox="0 0 16 16" class="bi bi-pin text-black">
                                    <path d="M4.146.146A.5.5 0 0 1 4.5 0h7a.5.5 0 0 1 .5.5c0 .68-.342 1.174-.646 1.479-.126.125-.25.224-.354.298v4.431l.078.048c.203.127.476.314.751.555C12.36 7.775 13 8.527 13 9.5a.5.5 0 0 1-.5.5h-4v4.5c0 .276-.224 1.5-.5 1.5s-.5-1.224-.5-1.5V10h-4a.5.5 0 0 1-.5-.5c0-.973.64-1.725 1.17-2.189A5.921 5.921 0 0 1 5 6.708V2.277a2.77 2.77 0 0 1-.354-.298C4.342 1.674 4 1.179 4 .5a.5.5 0 0 1 .146-.354zm1.58 1.408-.002-.001.002.001m-.002-.001.002.001A.5.5 0 0 1 6 2v5a.5.5 0 0 1-.276.447h-.002l-.012.007-.054.03a4.922 4.922 0 0 0-.827.58c-.318.278-.585.596-.725.936h7.792c-.14-.34-.407-.658-.725-.936a4.915 4.915 0 0 0-.881-.61l-.012-.006h-.002A.5.5 0 0 1 10 7V2a.5.5 0 0 1 .295-.458 1.775 1.775 0 0 0 .351-.271c.08-.08.155-.17.214-.271H5.14c.06.1.133.191.214.271a1.78 1.78 0 0 0 .37.282"></path>
                                    </svg></div>
                                <div class="px-2">
                                    <h6 class="mb-0">Location</h6>
                                    <p class="mb-0">Lucknow, Uttar Pradesh</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-5 col-xl-4">
                        <div>
                            <form class="p-3 p-xl-4" method="post" action="controllers/contactHandler.jsp">
                                <div class="mb-3"><input class="form-control" style="input-style:none;*" type="text" id="name-1" name="name" placeholder="Name" required></div>
                                <div class="mb-3"><input class="form-control" type="number" id="contactno-1" name="contactno" placeholder="Contact No." required></div>
                                <div class="mb-3"><input class="form-control" type="email" id="email-1" name="email" placeholder="Email" required></div>
                                <div class="mb-3"><input class="form-control" type="text" id="subject-1" name="address" placeholder="Address" required></div>
                                <div class="mb-3"><textarea class="form-control" id="message-1" name="message" rows="3" placeholder="Message" required></textarea></div>
                                <div><button class="btn btn-primary d-block w-100 rounded-2" type="submit">Send </button></div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <%@include file="components/footer.jsp" %>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
        <script src="assets/js/script.min.js"></script>
        <script src='https://code.jquery.com/jquery-3.3.1.slim.min.js'></script>
        <script src='https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js'></script>

        <script src="assets/js/script.js"></script>
    </body>
</html>