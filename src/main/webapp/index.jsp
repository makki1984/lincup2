<%--
  Created by IntelliJ IDEA.
  User: Quinn
  Date: 4/8/2022
  Time: 5:39 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

    <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
    <meta name="viewport" content="width=device-width" />

    <title>LINCUP</title>

    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/landing.css" rel="stylesheet" />

    <!--     Fonts     -->
    <link href="http://netdna.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.css" rel="stylesheet">
    <link href='http://fonts.googleapis.com/css?family=Grand+Hotel' rel='stylesheet' type='text/css'>

</head>

<body>


<div class="main" style="background-image: url('images/landing.jpg')">

    <!--    Change the image source '/images/default.jpg' with your favourite image.     -->

    <div class="cover black" data-color="black"></div>

    <div class="container">
        <h1 class="logo cursive">
            LincUp
        </h1>

        <div class="content">
            <h4 class="motto">Connect with organizations based on YOUR interests today!</h4>
            <div class="subscribe">
                <h5 class="info-text">
                    Sign up now to start creating new experiences and adventures.
                </h5>
                <div class="row justify-content-md-center">
                    <div class="col-md-auto">

                        <blockquote class="blockquote text-center">
                            <p class="mb-0"><button type="submit" class="btn btn-light btn-fill"><a href=register.jsp>Sign Up</a></button></p>
                            </br>
                            <footer class="blockquote-footer">or <a href=login.jsp>Login</a></footer>
                        </blockquote>


                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="footer">
        <div class="container">
            <ul class="navbar navbar-transparent navbar-fixed-top">
                <li>
                    <a href="#">
                        <i class="fa fa-facebook-square"></i>
                        Share
                    </a>
                </li>
                <li>
                    <a href="#">
                        <i class="fa fa-twitter"></i>
                        Tweet
                    </a>
                </li>
                <li>
                    <a href="#">
                        <i class="fa fa-envelope-o"></i>
                        Email
                    </a>
                </li>
            </ul>
        </div>
    </div>
</div>

</body>

<script src="./js/bootstrap.bundle.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/chart.js@3.0.2/dist/chart.min.js"></script>
<script src="./js/jquery-3.5.1.js"></script>
<script src="./js/jquery.dataTables.min.js"></script>
<script src="./js/dataTables.bootstrap5.min.js"></script>
<script src="./js/script.js"></script>
</html>