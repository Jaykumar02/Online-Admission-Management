<%
    if (session.getAttribute("name") == null) {
        response.sendRedirect("login.jsp");
    }
%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport"
              content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Home Page</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Font Awesome icons (free version)-->
        <script src="https://use.fontawesome.com/releases/v5.15.4/js/all.js"
        crossorigin="anonymous"></script>
        <!-- Google fonts-->
        <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700"
              rel="stylesheet" type="text/css" />
        <link
            href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic"
            rel="stylesheet" type="text/css" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="css/index-styles.css" rel="stylesheet" />
    </head>
    <body id="page-top">
        <!-- Navigation-->
        <nav
            class="navbar navbar-expand-lg bg-secondary text-uppercase fixed-top"
            id="mainNav">
            <div class="container">

                <a class="navbar-brand" href="#page-top">A.P Shah Instuite Of Technology </a>
                <button
                    class="navbar-toggler text-uppercase font-weight-bold bg-primary text-white rounded"
                    type="button" data-bs-toggle="collapse"
                    data-bs-target="#navbarResponsive" aria-controls="navbarResponsive"
                    aria-expanded="false" aria-label="Toggle navigation">
                    Menu <i class="fas fa-bars"></i>
                </button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav ms-auto">
                        <li class="nav-item mx-0 mx-lg-1"><a
                                class="nav-link py-3 px-0 px-lg-3 rounded" href="#portfolio">Merit  List</a></li>
                        <li class="nav-item mx-0 mx-lg-1"><a
                                class="nav-link py-3 px-0 px-lg-3 rounded" href="#about">Payment</a></li>
                        <li class="nav-item mx-0 mx-lg-1"><a
                                class="nav-link py-3 px-0 px-lg-3 rounded" href="#contact">Notice Board</a></li>
                        <li class="nav-item mx-0 mx-lg-1"><a
                                class="nav-link py-3 px-0 px-lg-3 rounded" href="Logout">Logout</a></li>
                        <li class="nav-item mx-0 mx-lg-1 bg-danger"><a
                                class="nav-link py-3 px-0 px-lg-3 rounded" href="Logout"><%=session.getAttribute("name")%></a></li>

                    </ul>
                </div>
            </div>
        </nav>
        <!-- Masthead-->
        <header class="masthead bg-primary text-white text-center">
            <h2
                class="page-section-heading text-center text-uppercase text-secondary mb-0">Admission Details</h2>
            <div class="container d-flex align-items-center flex-column">
                <!-- Masthead Avatar Image-->
                <div class="divider-custom">
                    <div class="divider-custom-line"></div>
                    <div class="divider-custom-icon">
                        <i class="fas fa-star"></i>
                    </div>
                    <div class="divider-custom-line"></div>
                </div>
                <!-- Portfolio Grid Items-->
                <div class="row justify-content-center">
                    <!-- Portfolio Item 1-->
                    <div class="col-md-6 col-lg-4 mb-5">
                        <div>
                            <a href="PersonalDetails.jsp">
                                <!--						<div
                                                                                        class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">
                                                                                        <div
                                                                                                class="portfolio-item-caption-content text-center text-white">
                                                                                                <i class="fas fa-plus fa-3x"></i>
                                                                                        </div>
                                                                                </div>-->

                                <img class="img-fluid" src="assets/img/portfolio/PerssonalD.png"
                                     alt="..." />
                            </a>   
                        </div>
                    </div>

                    <!-- Portfolio Item 2-->
                    <div class="col-md-6 col-lg-4 mb-5">
                        <div>
                            <a href="ParentDetails.jsp">
                                <!--						<div
                                                                                        class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">
                                                                                        <div
                                                                                                class="portfolio-item-caption-content text-center text-white">
                                                                                                <i class="fas fa-plus fa-3x"></i>
                                                                                        </div>
                                                                                </div>-->

                                <img class="img-fluid" src="assets/img/portfolio/ParentD.png"
                                     alt="..." />
                            </a>   
                        </div>
                    </div>
                    <!-- Portfolio Item 3-->
                    <div class="col-md-6 col-lg-4 mb-5">
                        <div>
                            <a href="Education.jsp">
                                <!--						<div
                                                                                        class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">
                                                                                        <div
                                                                                                class="portfolio-item-caption-content text-center text-white">
                                                                                                <i class="fas fa-plus fa-3x"></i>
                                                                                        </div>
                                                                                </div>-->
                                <img class="img-fluid" src="assets/img/portfolio/educational.png"
                                     alt="..." />
                            </a>    
                        </div>
                    </div>
                    <!-- Portfolio Item 4-->
                    <div class="col-md-6 col-lg-4 mb-5">
                        <div>
                            <a href="RegistrationFee.jsp">
                                <!--						<div
                                                                                        class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">
                                                                                        <div
                                                                                                class="portfolio-item-caption-content text-center text-white">
                                                                                                <i class="fas fa-plus fa-3x"></i>
                                                                                        </div>
                                                                                </div>-->

                                <img class="img-fluid" src="assets/img/portfolio/regisfee.png"
                                     alt="..." />
                            </a>   
                        </div>
                    </div>

                </div>
            </div>
        </header>





        <!-- Portfolio Section-->
        <section class="page-section portfolio" id="portfolio">
            <div class="container">
                <!-- Portfolio Section Heading-->
                <h2
                    class="page-section-heading text-center text-uppercase text-secondary mb-0">Merit  List</h2>
                <div class="divider-custom ">
                    <div class="divider-custom-line"></div>
                    <div class="divider-custom-icon">
                        <i class="fas fa-star"></i>
                    </div>
                    <div class="divider-custom-line text-black"></div>
                </div>
                <!-- About Section Content-->

                <!-- About Section Button-->


                <div class="text-center mt-4  text-black">

                    <a class="btn btn-xl btn-outline-light text-black"
                       href="meritlist1.jsp"> <i
                            class="fas fa-download me-2 text-black"></i> 1st Round
                    </a>
                </div>

                <div class="text-center mt-4  text-black">
                    <a class="btn btn-xl btn-outline-light text-black"
                       href="meritlist2.jsp"> <i
                            class="fas fa-download me-2 text-black"></i> 2nd Round
                    </a>
                </div>

                <div class="text-center mt-4  text-black">
                    <a class="btn btn-xl btn-outline-light text-black"
                       href="meritlist3.jsp"> <i
                            class="fas fa-download me-2 text-black"></i> 3rd Round
                    </a>
                </div>


            </div>
        </div>
    </section>



    <!-- About Section-->
    <section class="page-section bg-primary text-white mb-0" id="about">
        <div class="container">
            <!-- About Section Heading-->
            <h2
                class="page-section-heading text-center text-uppercase text-white">Payment</h2>



            <!-- Icon Divider-->
            <div class="divider-custom">
                <div class="divider-custom-line"></div>
                <div class="divider-custom-icon">
                    <i class="fas fa-star"></i>
                </div>
                <div class="divider-custom-line"></div>
            </div>
            <!-- Portfolio Grid Items-->
            <div class="row justify-content-center">
                <!-- Portfolio Item 1-->
                <div class="col-md-6 col-lg-4 mb-5">
                    <div>
                        <a href="DocVeri.jsp">
                            <!--						<div
                                                                                    class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">
                                                                                    <div
                                                                                            class="portfolio-item-caption-content text-center text-white">
                                                                                            <i class="fas fa-plus fa-3x"></i>
                                                                                    </div>
                                                                            </div>-->

                            <img class="img-fluid" src="assets/img/portfolio/docverification.png"
                                 alt="..." />
                        </a>   
                    </div>
                </div>

                <!-- Portfolio Item 2-->
                <div class="col-md-6 col-lg-4 mb-5">
                    <div>
                        <a href="Payment.jsp">
                            <!--						<div
                                                                                    class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">
                                                                                    <div
                                                                                            class="portfolio-item-caption-content text-center text-white">
                                                                                            <i class="fas fa-plus fa-3x"></i>
                                                                                    </div>
                                                                            </div>-->

                            <img class="img-fluid" src="assets/img/portfolio/paymentD.png"
                                 alt="..." />
                        </a>   
                    </div>
                </div>


            </div>
    </section>
    <!-- Contact Section-->
    <section class="page-section" id="contact">
        <div class="container">
            <!-- Contact Section Heading-->
            <h2
                class="page-section-heading text-center text-uppercase text-secondary mb-0">Notice Board</h2>
            <!-- Icon Divider-->
            <div class="divider-custom">
                <div class="divider-custom-line"></div>
                <div class="divider-custom-icon">
                    <i class="fas fa-star"></i>
                </div>
                <div class="divider-custom-line"></div>
            </div>
            <!-- Contact Section Form-->
            <div class="row">
                <div class="col-lg-4 ms-auto">
                    <h5>Fee Structure</h5>
                    <p class="lead">Computer Science: 1,80,000</p>
                    <p class="lead">Information Technology Science: 1,50,000</p>
                    <p class="lead">Civil Engineering: 1,20,000</p>
                    <p class="lead">Mechanical Engineering: 1,90,000</p>
                </div>

                <div class="col-lg-4 ms-auto">
                    <h5>Merit List 1</h5>
                    <p class="lead">The first Merit List will be posted on the 10th June.If the name appears on the merit list, then comply with your admission prior to June 15th. </p>
                </div>

                <div class="col-lg-4 ms-auto">
                    <h5>Merit List 2 </h5>
                    <p class="lead">The first Merit List will be posted on the 16th June.If the name appears on the merit list, then comply with your admission prior to June 22nd. </p>
                    </p>
                </div>


                <div class="col-lg-4 me-auto">
                    <h5>Merit List 3 </h5>
                    <p class="lead">The first Merit List will be posted on the 23rd June.If the name appears on the merit list, then comply with your admission prior to June 29th.</p>
                </div>

                <div class="col-lg-4 me-auto">
                    <h5>Notice </h5>
                    <p class="lead">College will start on July 5. Take your printed application form with you.</p>
                </div>

                <div class="col-lg-4 me-auto">
                    <h5>Notice </h5>
                    <p class="lead">Registration Fee for all the department is 1,200.</p>
                </div>




            </div>
        </div>
    </section> 
    <!-- Footer-->
    <footer class="footer text-center">
        <div class="container">
            <div class="row">
                <!-- Footer Location-->
                <div class="col-lg-4 mb-5 mb-lg-0">
                    <h4 class="text-uppercase mb-4">Location</h4>
                    <p class="lead mb-0">
                        2215 John Daniel Drive <br /> Clark, MO 65243
                    </p>
                </div>
                <!-- Footer Social Icons-->
                <div class="col-lg-4 mb-5 mb-lg-0">
                    <h4 class="text-uppercase mb-4">Around the Web</h4>
                    <a class="btn btn-outline-light btn-social mx-1" href="#!"><i
                            class="fab fa-fw fa-facebook-f"></i></a> <a
                        class="btn btn-outline-light btn-social mx-1" href="#!"><i
                            class="fab fa-fw fa-twitter"></i></a> <a
                        class="btn btn-outline-light btn-social mx-1" href="#!"><i
                            class="fab fa-fw fa-linkedin-in"></i></a> <a
                        class="btn btn-outline-light btn-social mx-1" href="#!"><i
                            class="fab fa-fw fa-dribbble"></i></a>
                </div>
                <!-- Footer About Text-->
                <div class="col-lg-4">

                </div>
            </div>
        </div>
    </footer>
    <!-- Copyright Section-->
    <div class="copyright py-4 text-center text-white">
        <div class="container">
            <small>Copyright &copy; Your Website 2023</small>
        </div>
    </div>


    <!-- Bootstrap core JS-->
    <script
    src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    <!-- Core theme JS-->
    <script src="js/scripts.js"></script>
    <!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
    <!-- * *                               SB Forms JS                               * *-->
    <!-- * * Activate your form at https://startbootstrap.com/solution/contact-forms * *-->
    <!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
    <script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
</body>
</html>