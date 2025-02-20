<%--
  Created by IntelliJ IDEA.
  User: rjvoigt
  Date: 10/27/20
  Time: 9:38 PM
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>LINCUP2 Extension</title>
    <meta name="description" content="An interactive getting started guide for Brackets.">
    <link rel="stylesheet" href="main.css">
</head>
<body class ="body">
<div data-collape="medium" data-animation="default" data-duration="400" role="banner" class="navbar w-nar">
    <div class="container w-container">
        <a href="#" class="w-nav-brand">
            <nav role="navigation" class="nav-menu w-nav-menu">
                <a href="http://localhost:8080/lincup2/" class="nav-link-2 w-nav-link">Home</a>
            </nav>
            <div class="w-nav-buttom">
                <div class="w-icon-nav-menu"> </div>
            </div>
        </a>
    </div>
</div>

<h3>Welcome to the Karma Massage Extension Site!</h3>
<p>
    Here, you are able to cancel existing appointments, look through our frequently asked questions and for more information, please submit a query to us.
<p>
    Please use the navigation bar above to fulfill your desire.
</p>

<p>
    Thank you for choosing Karma Massage!
</p>

<button onclick="makeVisible();">Make Reports Visible</button>

<div>
    <p> Reports </p>
    <a href="http://localhost:8080/lincup2/report1.jsp">Report 1</a>
</div>

<div>
    <p> Editing Tables </p>
    <a href="http://localhost:8080/lincup2/addOns.jsp">Edit Add-Ons</a>
</div>

</body>
</html>
