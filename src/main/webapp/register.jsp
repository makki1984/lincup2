<%--
  Created by IntelliJ IDEA.
  User: Quinn
  Date: 4/8/2022
  Time: 6:07 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
     style="background-image: url(images/background2.jpg); background-size: cover; height: 100vh">
    <div class="container">
        <div class="row align-items-center vh-100">
            <div class="col-5 mx-auto">

                <!-- Registration Card-->
                <div class="card" style="width: 30rem;">
                    <img class="card-img-left" src="images\frontImage.jpg" alt="Card image cap">
                    <div class="card-body">
                        <h5 class="card-title" style="text-align: center;">LINC-UP Registration</h5>
                        <br>
                        <form action="registration" class="row g-3 needs-validation" method="post" >

                            <!-- First Name -->
                            <div class="col-md-4">
                                <label for="firstNameInput" class="form-label">First name</label>
                                <input type="text" class="form-control" id="firstNameInput" name="firstName" placeholder="First"
                                       required>
                                <div class="valid-feedback">
                                    Looks good!
                                </div>
                            </div>

                            <!-- Last Name -->
                            <div class="col-md-4">
                                <label for="lastNameInput" class="form-label">Last name</label>
                                <input type="text" class="form-control" id="lastNameInput" placeholder="Last" name="lastName"
                                       required>
                                <div class="valid-feedback">
                                    Looks good!
                                </div>
                            </div>
                            <!-- Phone Number-->
                            <div class="col-md-4">
                                <label for="phoneInput" class="form-label">Phone</label>
                                <input type="phone" class="form-control" id="phoneInput" name="phone" placeholder="Phone #"
                                       required>
                                <div class="invalid-feedback">
                                    Please provide a valid phone number.
                                </div>
                            </div>

                            <!-- DOB -->
                            <div class="col-md-6">
                                <label for="dobInput" class="form-label">Date of Birth</label>
                                <input class="form-control" type="date" id="dobInput" name="dob" required>
                                <div class="invalid-feedback">
                                    Please enter a date.
                                </div>
                            </div>

                            <!-- Church -->

                            <div class="col-md-6">
                                <label for="churchNameInput" class="form-label">Church</label>
                                <select class="form-select" id="churchNameInput" name="churchName" required>
                                    <option selected disabled value="">Choose...</option>
                                    <option>Church 1</option>
                                    <option>Church 2</option>
                                </select>
                                <div class="invalid-feedback">
                                    Please select a valid Church.
                                </div>
                            </div>
                            <!-- High School -->

                            <div class="col-md-6">
                                <label for="highSchoolInput" class="form-label">Current High School</label>
                                <select class="form-select" id="highSchoolInput" name="highSchool" required>
                                    <option selected disabled value="">Choose...</option>
                                    <option>Summerwood High School</option>
                                    <option>North Shore High School</option>
                                </select>
                                <div class="invalid-feedback">
                                    Please provide a valid high school.
                                </div>
                            </div>
                            <!-- College -->

                            <div class="col-md-6">
                                <label for="afterGraduationInput" class="form-label">After Graduation College</label>
                                <select class="form-select" id="afterGraduationInput" name="afterGraduation" required>
                                    <option selected disabled value="">Choose...</option>
                                    <option>University of Houston</option>
                                    <option>University of Texas</option>
                                </select>
                                <div class="invalid-feedback">
                                    Please provide a valid College.
                                </div>
                            </div>

                            <!-- Email -->

                            <div class="col-md-6">
                                <label for="emailInput" class="form-label">Email</label>
                                <input type="text"  class="form-control" id="emailInput" name="email" placeholder="email@example.com" required>
                                <div class="invalid-feedback">
                                    Please enter a email.
                                </div>
                            </div>
                            <!-- Password-->
                            <div class="col-md-6">
                                <label for="passInput" class="form-label">Password</label>
                                <div class="col-sm-10">
                                    <input type="password" class="form-control" id="passInput" name="pass" required>
                                    <div class="invalid-feedback">
                                        Please enter a password.
                                    </div>
                                </div>
                            </div>

                            <!-- Interests-->
                            <div class="col-md-12" style="text-align: center;">
                                <label for="interest1Input" class="form-label">Select Interests (hold crtl for
                                    multiple)</label>
                                <select class="form-select" name="interests"  multiple aria-label="multiple select example" required>
                                    <option>Music</option>
                                    <option>Outdoors</option>
                                    <option>Crafts</option>
                                    <option>Volunteering</option>
                                </select>


                                <!-- Submit-->
                            </div>

                            <input type="hidden" name="orgId" value="1">
                            <input type="hidden" name="adminId" value="1">
                            <input type="hidden" name="eventId" value="1">

                            <div class="col-12" style="text-align: center;">
                                <button class="btn btn-primary" type="submit">Submit form</button>
                            </div>
                        </form>


                    </div>
                    <!--Go To Login-->

                    <div class="card-footer"><small class="text-muted">

                        <div class="text-center">
                            <a class="loginlink" href="login.jsp">Already have an
                                account? Login!</a>
                        </div>
                    </small></p>

                    </div>
                </div>

                <!-- Javascript -->
                <script src="js/registration.js"></script>


                <!-- Bootstrap Bundle with Popper -->
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
                        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
                        crossorigin="anonymous"></script>
</body>

<script src="./js/bootstrap.bundle.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/chart.js@3.0.2/dist/chart.min.js"></script>
<script src="./js/jquery-3.5.1.js"></script>
<script src="./js/jquery.dataTables.min.js"></script>
<script src="./js/dataTables.bootstrap5.min.js"></script>
<script src="./js/script.js"></script>
</body>
</html>