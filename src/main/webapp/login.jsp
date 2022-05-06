
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html class="no-js" lang="">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>LINC UP | Login</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Favicon -->
    <link rel="shortcut icon" type="image/x-icon" href="img/favicon.png">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <!-- Fontawesome CSS -->
    <link rel="stylesheet" href="assets/css/fontawesome-all.min.css">
    <!-- Flaticon CSS -->
    <link rel="stylesheet" href="assets/fonts/flaticon.css">
    <!-- Google Web Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap" rel="stylesheet">
    <!-- Custom CSS -->
    <link rel="stylesheet" href="assets/css/login.css">
</head>

<body>
<!--[if lt IE 8]>
<p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
<![endif]-->
<div id="preloader" class="preloader">
    <div class='inner'>
        <div class='line1'></div>
        <div class='line2'></div>
        <div class='line3'></div>
    </div>
</div>


<section class="fxt-template-animation fxt-template-layout25">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-6 col-12 fxt-bg-gradient">
                <div class="fxt-header">
                    <div class="fxt-top-content">
                        <div class="fxt-transformY-50 fxt-transition-delay-1">
                            <a href="login.jsp" class="fxt-logo" style="width: 500px; length: 300px"><img src="assets/images/simpleLogo.png" alt="Logo"></a>
                        </div>



                        <div class="fxt-transformY-50 fxt-transition-delay-2">
                            <h1>Welcome</h1>
                        </div>
                        <div class="fxt-transformY-50 fxt-transition-delay-3">
                            <p></p>
                        </div>
                    </div>
                    <div class="fxt-bottom-content">

                        <div class="fxt-transformY-50 fxt-transition-delay-11">
                            <p>Don't have an account?<a href="register.jsp" class="switcher-text inline-text">Register</a></p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-6 col-12 fxt-bg-color">
                <div class="fxt-content">
                    <div class="fxt-form">
                        <div class="fxt-transformY-50 fxt-transition-delay-12">
                            <h2>Login into your account</h2>
                        </div>
                        <form action="login" method="post">
                            <div class="form-group">
                                <div class="fxt-transformY-50 fxt-transition-delay-14">
                                    <input type="email" class="form-control" name="email" placeholder="Email Address" required="required">
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="fxt-transformY-50 fxt-transition-delay-15">
                                    <input id="password" type="password" class="form-control" name="password" placeholder="********" required="required">
                                    <i toggle="#password" class="fa fa-fw fa-eye toggle-password field-icon"></i>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="fxt-transformY-50 fxt-transition-delay-16">
                                    <div class="fxt-checkbox-area">
                                        <div class="checkbox">
                                            <input id="checkbox1" type="checkbox">
                                            <label for="checkbox1">Keep me logged in</label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="fxt-transformY-50 fxt-transition-delay-17">
                                    <button type="submit" class="fxt-btn-fill" value="Login">Log in</button>












                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>





<!-- jquery-->
<script src="assets/js/jquery-3.5.0.min.js"></script>
<!-- Bootstrap js -->
<script src="assets/js/bootstrap.min.js"></script>
<!-- Imagesloaded js -->
<script src="assets/js/imagesloaded.pkgd.min.js"></script>
<!-- Validator js -->
<script src="assets/js/validator.min.js"></script>
<!-- Custom Js -->
<script src="assets/js/main.js"></script>

</body>

</html>