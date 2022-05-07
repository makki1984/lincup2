<%@ page import="com.uh.rachel.util.DataHandler" %>
<%@ page import="java.util.Vector" %>
<%@ page import="com.uh.rachel.util.tableClasses.requestsTable" %>
<%@ page import="com.uh.rachel.util.reportClasses.report3" %>
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

  <title>LINCUP - Requests</title>

  <!-- Custom fonts for this template-->
  <link href="assets/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">
  <!-- Custom styles for this template-->
  <link href="assets/css/sb-admin-2.min.css" rel="stylesheet">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-wEmeIV1mKuiNpC+IOBjI7aAzPcEZeedi5yW5f2yOq55WWLwNGmvvx4Um1vskeMj0" crossorigin="anonymous">


  <!-- Custom styles for this page -->
  <link rel="stylesheet" href="https://cdn.datatables.net/1.11.5/css/jquery.dataTables.min.css">

  <style>html, body {
    margin: 0;
    padding: 0;
    font-family: Arial, Helvetica Neue, Helvetica, sans-serif;
    font-size: 14px;
  }
  .badge.badge-secondary{
    background-color: mediumseagreen;
    position: absolute;
    top: -5px;
    right: -5px;
  }</style>
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
        <i class="fas fa-fw fa-tachometer-alt"></i>
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
        <h2>Open Requests</h2>
        <hr/>
        <!-- Page Heading -->
        <div class="container">
          <div class="row">
            <div class="col-sm-12 mb-3">

            </div>
            <div class="row" id="myItems">
              <div class="col-sm-20 mb-10">
                <div class="card-deck">
                  <% Vector<report3> a = DataHandler.getReport3();
                    for (report3 c : a) {
                  %>
                  <div class="card text-center" style="width: 15rem;">
                    <div class="card-body">
                      <h5><span class="badge badge-secondary"><%= String.valueOf(c.getRequestsPackage().getRequestId())%> </span></h5>
                      <h4 class="card-title"><%= String.valueOf(c.getMembersPackage().getFirstName())%>&nbsp;<%= String.valueOf(c.getMembersPackage().getLastName())%>
                      </h4>
                      <h6 class="card-subtitle mb-2 text-muted"><%= String.valueOf(c.getStudentOrgPackage().getOrgName())%>
                        , <%= String.valueOf(c.getStudentOrgPackage().getUniversity())%>
                      </h6>

                    </div>


                    <div class="card-footer">
                      <center></center>
                      <small class="text-muted" >Awaiting Approval</small>



                    </div>
                  </div>
                  <%
                    }
                  %>
                </div>
              </div>




        </div>
      </div>

        </div>

    </div>
      <!-- /.container-fluid -->

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


<!-- Bootstrap core JavaScript-->
<script src="assets/js/jquery/jquery.min.js"></script>
<script src="assets/js/bootstrap.bundle.min.js"></script>

<!-- Core plugin JavaScript-->
<script src="assets/js/jquery-easing/jquery.easing.min.js"></script>

<!-- Custom scripts for all pages-->
<script src="assets/js/sb-admin-2.min.js"></script>

<!-- Page level plugins -->



<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>



<script src="https://cdn.datatables.net/1.11.5/js/jquery.dataTables.min.js"></script>
<script>

  $(document).ready( function () {
    $('#Table').DataTable( {

      "ordering": false


    } );
  } );
</script>
</body>

</html>
