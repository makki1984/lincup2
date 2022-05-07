<%@ page import="com.uh.rachel.util.DataHandler" %>
<%@ page import="java.util.Vector" %>
<%@ page import="com.uh.rachel.util.tableClasses.studentOrgTable" %>
<%@ page import="com.uh.rachel.util.tableClasses.membersTable" %>
<%@ page import="com.uh.rachel.util.tableClasses.requestsTable" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>LINCUP - Events</title>

    <!-- Custom fonts for this template-->
    <link href="assets/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
          rel="stylesheet">
    <!-- Custom styles for this template-->
    <link href="assets/css/sb-admin-2.min.css" rel="stylesheet">
    <!-- Custom styles for this page -->
    <link rel="stylesheet" href="https://cdn.datatables.net/1.11.5/css/jquery.dataTables.min.css">


    <style>html, body {
        margin: 0;
        padding: 0;
        font-family: Arial, Helvetica Neue, Helvetica, sans-serif;
        font-size: 14px;
    }


    .card-block {
        font-size: 1em;
        position: relative;
        margin: 0;
        padding: 1em;
        border: none;
        border-top: 1px solid rgba(34, 36, 38, .1);
        box-shadow: none;

    }

    .card {
        font-size: 1em;
        overflow: hidden;
        padding: 5;
        border: none;
        border-radius: .28571429rem;
        box-shadow: 0 1px 3px 0 #d4d4d5, 0 0 0 1px #d4d4d5;
        margin-top: 20px;
    }
    </style>
</head>


<body id="page-top">

<!-- Page Wrapper -->
<div id="wrapper">

    <!-- Sidebar -->
    <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

        <!-- Sidebar - Brand -->
        <a class="sidebar-brand d-flex align-items-center justify-content-center" href="index.jsp">
            <div class="sidebar-brand-icon rotate-n-15">
                <i class="fas fa-people-arrows"></i>
            </div>
            <div class="sidebar-brand-text mx-3">Linc <sup>Up</sup></div>
        </a>

        <!-- Divider -->
        <hr class="sidebar-divider my-0">

        <!-- Nav Item - Dashboard -->
        <li class="nav-item">
            <a class="nav-link" href="dash.jsp">
                <i class="fas fa-fw fa-home"></i>
                <span>Dashboard</span></a>
        </li>

        <!-- Divider -->
        <hr class="sidebar-divider">

        <!-- Heading -->
        <div class="sidebar-heading">
            Menu
        </div>

        <!-- Nav Item - Pages Collapse Menu -->
        <li class="nav-item">
            <a class="nav-link" href="events.jsp">
                <i class="fas fa-fw fa-calendar-alt"></i>
                <span>Events</span>
            </a>
            <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                <div class="bg-white py-2 collapse-inner rounded">
                    <h6 class="collapse-header">Options:</h6>
                    <a class="collapse-item" href="events.jsp">Event List</a>
                    <a class="collapse-item" href="eventSchedule.jsp">Event Calendar</a>

                </div>
            </div>
        </li>

        <!-- Nav Item - Tasks -->
        <li class="nav-item">
            <a class="nav-link " href="tasks.jsp">
                <i class="fas fa-fw fa-wrench"></i>
                <span>Tasks</span>
            </a>


            <!-- Nav Item - Requests -->
        <li class="nav-item">
            <a class="nav-link" href="requests.jsp">
                <i class="fas fa-fw fa-table"></i>
                <span>Requests</span></a>
        </li>

        <!-- Nav Item - Members -->
        <li class="nav-item">
            <a class="nav-link" href="members.jsp">
                <i class="fas fa-fw fa-laugh"></i>
                <span>Members</span></a>
        </li>

        <!-- Nav Item - Student Organizations -->
        <li class="nav-item">
            <a class="nav-link" href="studentOrg.jsp">
                <i class="fas fa-fw fa-user-friends"></i>
                <span>Student Organizations</span></a>
        </li>
        <!-- Nav Item - Matching -->
        <li class="nav-item">
            <a class="nav-link" href="matching.jsp">
                <i class="fas fa-fw fa-search-plus"></i>
                <span>Matching</span></a>
        </li>
        <!-- Divider -->
        <hr class="sidebar-divider d-none d-md-block">

        <!-- Sidebar Toggler (Sidebar) -->
        <div class="text-center d-none d-md-inline">
            <button class="rounded-circle border-0" id="sidebarToggle"></button>
        </div>

    </ul>
    <!-- End of Sidebar -->

    <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">

        <!-- Main Content -->
        <div id="content">

            <!-- Topbar -->
            <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

                <!-- Sidebar Toggle (Topbar) -->
                <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
                    <i class="fa fa-bars"></i>
                </button>


                <!-- Topbar Navbar -->
                <ul class="navbar-nav ml-auto">


                    <div class="topbar-divider d-none d-sm-block"></div>

                    <!-- Nav Item - User Information -->
                    <li class="nav-item dropdown no-arrow">
                        <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button"
                           data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">


                            <i class="fas fa-user fa-lg "></i>
                        </a>
                        <!-- Dropdown - User Information -->
                        <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
                             aria-labelledby="userDropdown">

                            <a class="dropdown-item" href="#" data-bs-toggle="modal" data-bs-target="#logoutModal">
                                <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                                Logout
                            </a>
                        </div>
                    </li>

                </ul>

            </nav>
            <!-- End of Topbar -->

            <!-- Begin Page Content -->
            <div class="container-fluid">
                <h2>Interest Search</h2>
                <hr/>
                <!-- Page Heading -->
                <div class="container">
                    <div class="row">
                        <div class="col-sm-12 mb-3">
                            <input type="text" id="myFilter" class="form-control" onkeyup="myFunction()"
                                   placeholder="Search for interests..">

                        </div>
                        <button class="btn btn-primary"
                                data-bs-toggle="modal" data-bs-target="#addModal">Make Request
                        </button>
                        <div class="row" id="myItems">
                            <div class="col-sm-12 mb-3">
                                <div class="card-deck">
                                    <% Vector<studentOrgTable> a = DataHandler.getStudentOrg();
                                        for (studentOrgTable c : a) {
                                    %>
                                    <div class="card text-center" style="width: 15rem;">
                                        <div class="card-body">
                                            <h5 class="card-title"><%= String.valueOf(c.getOrgName())%>
                                            </h5>
                                            <h6 class="card-subtitle mb-2 text-muted"><%= String.valueOf(c.getCity())%>
                                                , <%= String.valueOf(c.getState())%>
                                            </h6>
                                            <p class="card-text"><%= String.valueOf(c.getInterest1())%>,

                                            <%= String.valueOf(c.getInterest2())%>,

                                           <%= String.valueOf(c.getInterest3())%>,
                                            <%= String.valueOf(c.getInterest4())%>
                                            </p>
                                        </div>


                                        <div class="card-footer">
                                            <center></center>




                                        </div>
                                    </div>
                                    <%
                                        }
                                    %>
                                </div>
                            </div>

                            <div class="modal fade" id="addModal" tabindex="-1" role="dialog"
                                 aria-labelledby="addModalLabel" aria-hidden="false">
                                <div class="modal-dialog modal-dialog-centered" role="document">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title" id="addModalLabel">Request</h5>
                                            <button type="button" class="close" data-bs-dismiss="modal"
                                                    aria-label="Close">
                                                <span aria-hidden="false">&times;</span>

                                            </button>
                                        </div>
                                        <div class="modal-body">

                                            <form action="insertRequests" method="POST">

                                                <div class="form row">
                                                    <div class="form-group col-md-6">
                                                        <label class="form-label">Organization</label>
                                                        <select name="orgIdInput" type="text"
                                                                class="form-control form-control-sm orgIdInput" id="orgIdInput"
                                                                required>
                                                            <% Vector<studentOrgTable> n = DataHandler.getStudentOrg();
                                                                for (studentOrgTable t : n) {
                                                            %>

                                                            <option value="<%= String.valueOf(t.getOrgId())%>"><%= String.valueOf(t.getOrgName())%></option>
                                                            <%
                                                                }
                                                            %>
                                                        </select>

                                                    </div>


                                                    <div class="form-group col-md-6">
                                                        <label class="form-label">Member</label>

                                                        <select name="memberIdInput" type="text"
                                                                class="form-control form-control-sm memberIdInput " id="memberIdInput"
                                                                required>
                                                            <% Vector<membersTable> b = DataHandler.getMembers();
                                                                for (membersTable l : b) {
                                                            %>


                                                            <option value="<%= String.valueOf(l.getMemberid())%>"><%= String.valueOf(l.getFirstName())%>&nbsp;<%= String.valueOf(l.getLastName())%></option>
                                                            <%
                                                                }
                                                            %>
                                                        </select>

                                                    </div>
                                                </div>



                                                <div class="modal-footer">
                                                    <button type="button" class="btn btn-secondary"
                                                            data-bs-dismiss="modal">I've Changed My Mind
                                                    </button>

                                                    <button type="submit" class="btn btn-primary">Request
                                                    </button>
                                                </div>

                                            </form>

                                        </div>

                                    </div>





</div>
                            </div>

                        </div>
                    </div>
                </div>


                <!-- /.container-fluid -->

            </div>
        </div>
        <!-- End of Main Content -->

        <!-- Footer -->
        <footer class="sticky-footer bg-white">
            <div class="container my-auto">
                <div class="copyright text-center my-auto">
                    <span>Copyright &copy; LINCUP 2022</span>
                </div>
            </div>
        </footer>
        <!-- End of Footer -->

    </div>
    <!-- End of Content Wrapper -->

</div>
<!-- End of Page Wrapper -->

<!-- Scroll to Top Button-->
<a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
</a>

<!-- Logout Modal-->
<div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
     aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
                <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">×</span>
                </button>
            </div>
            <div class="modal-body">Select "Logout" below if you are ready to end your current session.
            </div>
            <div class="modal-footer">
                <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                <a class="btn btn-primary" href="login.jsp">Logout</a>
            </div>
        </div>
    </div>
</div>

<script src="assets/js/jquery.min.js"></script>
<script src="assets/js/bootstrap.bundle.min.js"></script>

<!-- Core plugin JavaScript-->

<!-- Custom scripts for all pages-->
<script src="assets/js/sb-admin-2.min.js"></script>

<!-- Bootstrap core JavaScript-->

<!-- Core plugin JavaScript-->
<script src="assets/js/jquery-easing/jquery.easing.min.js"></script>

<!-- Custom scripts for all pages-->


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>


<script src="https://cdn.datatables.net/1.11.5/js/jquery.dataTables.min.js"></script>

<script>

    function myFunction() {
        var input, filter, cards, cardContainer, title, i;
        input = document.getElementById("myFilter");
        filter = input.value.toUpperCase();
        cardContainer = document.getElementById("myItems");
        cards = cardContainer.getElementsByClassName("card");
        for (i = 0; i < cards.length; i++) {
            title = cards[i].querySelector(".card-body .card-text");
            if (title.innerText.toUpperCase().indexOf(filter) > -1) {
                cards[i].style.display = "";
            } else {
                cards[i].style.display = "none";
            }
        }
    }
    $(function(){
        $('input[type="text"]').change(function(){
            this.value = $.trim(this.value);
        });
    });


</script>


</body>

</html>