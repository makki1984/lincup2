<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html class="no-js" lang="">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>LINC UP | Register</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">

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
                            <p>Already have an account?<a href="login.jsp" class="switcher-text inline-text">Login</a></p>
                        </div>
                    </div>
                </div>
            </div>








            <div class="col-md-6 col-12 fxt-bg-color">
                <div class="fxt-content">
                    <div class="fxt-form">
                        <div class="fxt-transformY-50 fxt-transition-delay-12">
                            <h2>Create an account</h2>
                        </div>
                        <form action="registration" class="row g-3 needs-validation" method="post" >

                            <div class="row">

                                <div class="fxt-transformY-50 fxt-transition-delay-14 form-group col-md-6">
                                    <input type="text" id="firstNameInput" class="form-control" name="firstName" placeholder="First" required="required">
                                </div>
                                <div class="fxt-transformY-50 fxt-transition-delay-14 form-group col-md-6">
                                    <input type="text"  class="form-control" id="lastNameInput" placeholder="Last" name="lastName" required="required">
                                </div>
                            </div>
                            <div class="fxt-transformY-50 fxt-transition-delay-14 col-md-6">
                                <input type="phone" class="form-control" id="phoneInput" name="phone" placeholder="Phone"
                                       required="required">

                            </div>


                            <div class="fxt-transformY-50 fxt-transition-delay-14 col-md-6">
                                <input class="form-control" type="date" id="dobInput" name="dob" required="required">
                            </div>

                            <div class="form-group">
                                <div class="fxt-transformY-50 fxt-transition-delay-14 col">
                                    <input type="email" class="form-control" name="email" placeholder="Email Address" required="required">
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="fxt-transformY-50 fxt-transition-delay-15 col">
                                    <input type="password" class="form-control" id="passInput" name="pass" placeholder="********" required="required">
                                    <i toggle="#password" class="fa fa-fw fa-eye toggle-password field-icon"></i>
                                </div>
                            </div>




                            <!-- High School -->

                            <div class="fxt-transformY-50 fxt-transition-delay-14 col">
                                <select class="form-select" id="highSchoolInput" name="highSchool" required>
                                    <option selected disabled value="">High School</option>
                                    <option>Summerwood High School</option>
                                    <option>North Shore High School</option>
                                </select>
                                <div class="invalid-feedback">
                                    Please provide a valid high school.
                                </div>
                            </div>
                            <!-- College -->

                            <div class="fxt-transformY-50 fxt-transition-delay-14 col">
                                <select class="form-select" id="afterGraduationInput" name="afterGraduation" required>
                                    <option selected disabled value="">College</option>
                                    <option>University of Houston</option>
                                    <option>University of Texas</option>
                                </select>
                                <div class="invalid-feedback">
                                    Please provide a valid College.
                                </div>
                            </div>

                            <!-- Church -->

                            <div class="fxt-transformY-50 fxt-transition-delay-14 col">
                                <select class="form-select" id="churchNameInput" name="churchName" required>
                                    <option selected disabled value="">Church</option>
                                    <option>Church 1</option>
                                    <option>Church 2</option>
                                </select>
                                <div class="invalid-feedback">
                                    Please select a valid Church.
                                </div>
                            </div>


                            <!-- <div class="input-group">
                                 <span class="input-group-text">Your Interests</span>
                                 <input type="text" placeholder="Interest" name="interest1" class="form-control">
                                 <input type="text" placeholder="Interest" name="interest2" class="form-control">

                             </div>
                             <div class="input-group">
                                 <span class="input-group-text">More Interests</span>
                                 <input type="text" placeholder="Interest" name="interest3" class="form-control">
                                 <input type="text" placeholder="Interest" name="interest4" class="form-control">
                             </div>
--> <label class="form-label fxt-transformY-50 fxt-transition-delay-14">Select Up to 4 Interests!(hold crtl for
                            multiple)</label>
                            <select class="form-select fxt-transformY-50 fxt-transition-delay-14" multiple name="interests" required="required">
                                <option>Music</option>
                                <option>Outdoors</option>
                                <option>Crafts</option>
                                <option>Volunteering</option>
                                <option>Social</option>
                                <option>Health</option>
                                <option>Exercise</option>
                                <option>Cooking</option>
                                <option>Programming</option>
                                <option>Networking</option>
                                <option>Dancing</option>
                                <option>Writing</option>
                                <option>Sports</option>
                                <option>Theater</option>
                                <option>Video Games</option>
                                <option>Traveling</option>
                            </select>




                            <input type="hidden" name="orgId" value="1">
                            <input type="hidden" name="adminId" value="1">
                            <input type="hidden" name="eventId" value="1">

                            <div class="form-group">
                                <div class="fxt-transformY-50 fxt-transition-delay-17">
                                    <button type="submit" class="fxt-btn-fill prim">Register</button>
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

<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>

</body>

</html>