<%--
  Created by IntelliJ IDEA.
  User: Quinn
  Date: 4/8/2022
  Time: 5:46 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="css/bootstrap.min.css" />
    <link
            rel="stylesheet"
            href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css"
    />
    <link rel="stylesheet" href="css/dataTables.bootstrap5.min.css" />
    <link rel="stylesheet" href="css/style.css" />


    <title>Linc Up</title>
</head>

<body>
<div class="bg-image"
     style="background-image: url(images/background1.jpg); background-size: cover; height: 100vh">
    <div class="container">
        <div class="row align-items-center vh-100">
            <div class="col-5 mx-auto">


                <div class="card mb-5" style="max-width: 540px;">
                    <div class="row g-0">
                        <div class="col-md-4">
                            <img src="images/sideimage.jpg" class="img-fluid rounded-start" alt="...">
                        </div>
                        <div class="col-md-8">
                            <div class="card-body" style="text-align: center;">
                                <h5 class="card-title">LINC-UP Login</h5>

                                <!-- Registration Card-->


                                <form action="login" method="post">


                                    <!-- Login Email -->
                                    <div class="col-md-12">

                                        <input type="text" class="form-control" id="loginEmailForm" name="email"
                                               placeholder="Email Address" required>
                                        <div class="invalid-feedback">
                                            Please provide a valid email.
                                        </div>
                                    </div>


                                    <br>
                                    <!-- Login Password -->
                                    <div class="col-md-12">
                                        <input type="password" autofocus class="form-control" id="loginPassForm" name="password"
                                               placeholder="Password" required>
                                        <div class="invalid-feedback">
                                            ${message}
                                        </div>
                                    </div>




                                    <div class="container overflow-hidden">
                                        <div class="row ">
                                            <div class="col-12">
                                                <div class="p-1">

                                                    <div class="" style="text-align: center;">
                                                        <div class="custom-control custom-checkbox small">
                                                            <input type="checkbox" class="custom-control-input"
                                                                   id="customCheck">
                                                            <label class="custom-control-label"
                                                                   for="customCheck">Remember
                                                                Me</label>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>



                                            <!-- Login -->
                                            <div class="container overflow-hidden">
                                                <div class="col-12">
                                                    <div class="p-1">


                                                        <input class="btn btn-primary" type="submit" value="Login">
                                                        <!-- href="index.html" -->
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </form>

                            </div>

                            </p>

                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>

    <!-- Footer -->
    <div class="card-footer"><small class="text-muted">

        <div class="text-center">
            <a class="" href="register.jsp">Create an Account!</a>
        </div>
    </small></p>
    </div>









</div>


    <!-- Javascript -->
    <script src="js/login.js"></script>


    <script src="./js/bootstrap.bundle.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/chart.js@3.0.2/dist/chart.min.js"></script>
    <script src="./js/jquery-3.5.1.js"></script>
    <script src="./js/jquery.dataTables.min.js"></script>
    <script src="./js/dataTables.bootstrap5.min.js"></script>
    <script src="./js/script.js"></script>
</body>
</html>