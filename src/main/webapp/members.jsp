<%@ page import="com.uh.rachel.util.DataHandler" %>
<%@ page import="java.util.Vector" %>
<%@ page import="com.uh.rachel.util.tableClasses.membersTable" %>
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

    <title>LINCUP - Members</title>
    <link rel="stylesheet" href="assets/css/login.css">

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
    td {
        width:0.1%;

    }

    .hidetext { -webkit-text-security: disc; /* Default */ }
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
                           data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">


                            <i class="fas fa-user fa-lg "></i>
                        </a>
                        <!-- Dropdown - User Information -->
                        <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
                             aria-labelledby="userDropdown">


                            <a class="dropdown-item" href="#" data-toggle="modal" data-target="#logoutModal">
                                <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                                Logout
                            </a>
                        </div>
                    </li>

                </ul>

            </nav>
            <!-- End of Topbar -->

            <!-- Begin Page Content -->
            <div class="container-fluid mt-5 pt-5">

                <!-- Page Heading -->
                <h2>Members</h2>
                <hr/>
                <div class="row justify-content-center">


                        <div class="card shadow">
                            <div class="card-header">
                                <button class="btn btn-primary"
                                        data-bs-toggle="modal" data-bs-target="#addModal">Add Member</button>
                            </div>
                            <div class="card-body">

                                <div class="modal fade" id="addModal" tabindex="-1" role="dialog"
                                     aria-labelledby="addModalLabel" aria-hidden="false">
                                    <div class="modal-dialog modal-dialog-centered" role="document">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h5 class="modal-title" id="addModalLabel">Add Member</h5>
                                                <button type="button" class="close" data-bs-dismiss="modal"
                                                        aria-label="Close">
                                                    <span aria-hidden="false">&times;</span>

                                                </button>
                                            </div>
                                            <div class="modal-body">

                                                <form action="insertMembers" method="post" >

                                                        <div class="form row">

                                                            <div class="form-group col-md-4">
                                                                <label class="form-label">Member ID</label>

                                                                <input name="memberIdInput" type="text"
                                                                       class="form-control form-control-sm memberIdInput"
                                                                       required ></div>


                                                            <div class="form-group col-md-4">
                                                                <label class="form-label">First Name</label>
                                                                <input name="firstNameInput" type="text"
                                                                       class="form-control form-control-sm firstNameInput"
                                                                       required>
                                                            </div>


                                                            <div class="form-group col-md-4">
                                                                <label class="form-label">Last Name</label>
                                                                <input name="lastNameInput" type="text"
                                                                       class="form-control form-control-sm lastNameInput"
                                                                       required>
                                                            </div>
                                                        </div>

                                                        <!--                          -->
                                                        <div class="form row">

                                                            <div class="form-group col-md-4">

                                                                <label class="form-label">DOB
                                                                </label>
                                                                <input name="dobInput" type="date"
                                                                       class="form-control form-control-sm dobInput"
                                                                       required>
                                                            </div>


                                                            <div class="form-group col-md-4">

                                                                <label class="form-label">Email
                                                                </label>
                                                                <input name="emailInput" type="text"
                                                                       class="form-control form-control-sm emailInput"
                                                                       required>

                                                            </div>

                                                            <div class="form-group col-md-4">
                                                                <label class="form-label">Password
                                                                </label>
                                                                <input name="passInput" type="password"
                                                                       class="form-control form-control-sm passInput"
                                                                       required>

                                                            </div>
                                                        </div>

                                                        <div class="form row">

                                                            <div class="form-group col-md-4">

                                                                <label class="form-label">High School
                                                                </label>
                                                                <input name="highSchoolInput" type="text"
                                                                       class="form-control form-control-sm highSchoolInput"
                                                                       required>
                                                            </div>


                                                            <div class="form-group col-md-4">

                                                                <label class="form-label">After Graduation
                                                                </label>
                                                                <input name="afterGraduationInput"
                                                                       type="text"
                                                                       class="form-control form-control-sm afterGraduationInput"
                                                                       required>

                                                            </div>

                                                            <div class="form-group col-md-4">
                                                                <label class="form-label">Church
                                                                </label>
                                                                <input name="churchNameInput" type="text"
                                                                       class="form-control form-control-sm churchNameInput"
                                                                       required>

                                                            </div>
                                                        </div>

                                                        <div class="form row">

                                                            <div class="form-group col-md-6 ml-auto
">
                                                                <label class="form-label">Interest 1
                                                                </label>
                                                                <input name="interest1Input" type="text"
                                                                       class="form-control form-control-sm interest1Input"
                                                                       required>
                                                            </div>
                                                            <div class="form-group col-md-6 ml-auto
">
                                                                <label class="form-label">Interest 2
                                                                </label>
                                                                <input name="interest2Input" type="text"
                                                                       class="form-control form-control-sm interest2Input"
                                                                >
                                                            </div>
                                                        </div>

                                                        <div class="form row">
                                                            <div class="form-group col-md-6">
                                                                <label class="form-label">Interest 3
                                                                </label>
                                                                <input name="interest3Input" type="text"
                                                                       class="form-control form-control-sm interest3Input"
                                                                >
                                                            </div>
                                                            <div class="form-group col-md-6">
                                                                <label class="form-label">Interest 4
                                                                </label>
                                                                <input name="interest4Input" type="text"
                                                                       class="form-control form-control-sm interest4Input"
                                                                >
                                                            </div>
                                                        </div>

                                                        <div class="form row">

                                                            <div class="form-group col-md-4">

                                                                <label class="form-label">Phone
                                                                </label>
                                                                <input name="phoneInput" type="text"
                                                                       class="form-control form-control-sm phoneInput"
                                                                       required>
                                                            </div>


                                                            <div class="form-group col-md-2">

                                                                <label class="form-label">Org ID
                                                                </label>
                                                                <input name="orgIdInput" type="text"
                                                                       class="form-control form-control-sm orgIdInput"
                                                                       required>

                                                            </div>

                                                            <div class="form-group col-md-6">
                                                                <label class="form-label">Admin ID
                                                                </label>
                                                                <input name="adminIdInput" type="text"
                                                                       class="form-control form-control-sm adminIdInput"
                                                                       required>

                                                            </div>
                                                            <div class="form-group col-md-6">
                                                                <label class="form-label">Event ID
                                                                </label>
                                                                <input name="eventIdInput" type="text"
                                                                       class="form-control form-control-sm eventIdInput"
                                                                       required>

                                                            </div>
                                                        </div>
                                                    <div class="modal-footer">
                                                        <button type="button" class="btn btn-secondary"
                                                                data-bs-dismiss="modal">Cancel
                                                        </button>

                                                        <button type="submit" class="btn btn-primary">Add New Member
                                                        </button>
                                                    </div>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="table-wrap">
                                    <div style="height:690px">


                                    <table id="membersTable"
                                           class="table-striped " style="width: 100%"

                                    >
                                        <thead>
                                        <tr >
                                            <th >Member ID</th>
                                            <th colspan="2">Name</th>

                                            <th >DOB</th>
                                            <th >Email</th>
                                            <th >Pass</th>
                                            <th >High School</th>
                                            <th >After Graduation</th>
                                            <th >Church Name</th>
                                            <th  colspan="4">Interests</th>


                                            <th >Phone</th>
                                            <th >Org ID</th>
                                            <th >Admin ID</th>
                                            <th >Event ID</th>
                                            <th >Actions</th>

                                        </tr>

                                        </thead>
                                        <tbody>
                                        <% Vector<membersTable> v = DataHandler.getMembers();
                                            for (membersTable c : v) {
                                        %>

                                        <tr>
                                            <td class="member-id"><%= Integer.valueOf(c.getMemberid())%>
                                            </td>
                                            <td class="member-first"><%= String.valueOf(c.getFirstName())%>
                                            </td>
                                            <td class="member-last"><%= String.valueOf(c.getLastName())%>
                                            </td>
                                            <td class="member-dob"><%= String.valueOf(c.getDob())%>
                                            </td>
                                            <td class="member-email"><%= String.valueOf(c.getEmail())%>
                                            </td>
                                            <td class="member-pass hidetext" ><%= String.valueOf(c.getPass())%>
                                            </td>
                                            <td class="member-hs"><%= String.valueOf(c.getHighSchool())%>
                                            </td>
                                            <td class="member-ag"><%= String.valueOf(c.getAfterGraduation())%>
                                            </td>
                                            <td class="member-church"><%= String.valueOf(c.getChurchName())%>
                                            </td>
                                            <td class="member-int1"><%= String.valueOf(c.getInterest1())%>
                                            </td>
                                            <td class="member-int2"><%= String.valueOf(c.getInterest2())%>
                                            </td>
                                            <td class="member-int3"><%= String.valueOf(c.getInterest3())%>
                                            </td>
                                            <td class="member-int4"><%= String.valueOf(c.getInterest4())%>
                                            </td>
                                            <td class="member-phone"><%= String.valueOf(c.getPhone())%>
                                            </td>
                                            <td class="ord-id"><%= Integer.valueOf(c.getOrgid())%>
                                            </td>
                                            <td class="admin-id"><%= Integer.valueOf(c.getAdminId())%>
                                            </td>
                                            <td class="event-id"><%= Integer.valueOf(c.getEventId())%>
                                            </td>
                                            <td>

                                                <span style="padding-left:10px;">        </span>

                                                <i class="fas fa-trash delete_member" style="color: royalblue"
                                                   data-bs-toggle="modal" data-bs-target="#deleteModal"></i>

                                                <div class="modal fade" id="deleteModal" tabindex="-1" role="dialog"
                                                     aria-labelledby="deleteModalLabel" aria-hidden="true">
                                                    <div class="modal-dialog modal-dialog-centered">
                                                        <div class="modal-content">
                                                            <div class="modal-header">
                                                                <h5 class="modal-title" id="deleteModalLabel">Delete
                                                                    Member</h5>
                                                                <button type="button" class="close"
                                                                        data-bs-dismiss="modal"
                                                                        aria-label="Close">
                                                                </button>
                                                            </div>
                                                            <div class="modal-body">
                                                                <form action="deleteMembers" method="post">
                                                                    <div class="form-group">
                                                                        <label class="col-form-label">Member
                                                                            ID:</label>
                                                                        <input name="memberIdDelete" type="text"
                                                                               class="form-control memberIdDelete" readonly
                                                                               required>
                                                                    </div>

                                                                    <div class="modal-footer">
                                                                        <button type="button" class="btn btn-secondary"
                                                                                data-bs-dismiss="modal">Cancel
                                                                        </button>
                                                                        <button type="submit" class="btn btn-primary">
                                                                            Delete
                                                                            Member
                                                                        </button>
                                                                    </div>
                                                                </form>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>

                                                <span style="padding-left:20px;">        </span>


                                                <i class="fas fa-edit update_member" style="color: royalblue"
                                                   data-bs-toggle="modal" data-bs-target="#updateModal"></i>


                                                <div class="modal fade" id="updateModal" tabindex="-1" role="dialog"
                                                     aria-labelledby="updateModalLabel" aria-hidden="true">
                                                    <div class="modal-dialog modal-dialog-centered">
                                                        <div class="modal-content">
                                                            <div class="modal-header">
                                                                <h5 class="modal-title" id="updateModalLabel">Update
                                                                    Member</h5>
                                                                <button type="button" class="close"
                                                                        data-bs-dismiss="modal"
                                                                        aria-label="Close">x
                                                                </button>
                                                            </div>
                                                            <div class="modal-body">

                                                                <form action="updateMembers" id="updateForm"
                                                                      method="post">

                                                                    <div class="form row">

                                                                        <div class="form-group col-md-4">
                                                                            <label class="form-label">Member ID</label>

                                                                            <input name="memberIdInput" type="text"
                                                                                   class="form-control form-control-sm memberIdInput"
                                                                                   required readonly></div>


                                                                        <div class="form-group col-md-4">
                                                                            <label class="form-label">First Name</label>
                                                                            <input name="firstNameInput" type="text"
                                                                                   class="form-control form-control-sm firstNameInput"
                                                                                   required>
                                                                        </div>


                                                                        <div class="form-group col-md-4">
                                                                            <label class="form-label">Last Name</label>
                                                                            <input name="lastNameInput" type="text"
                                                                                   class="form-control form-control-sm lastNameInput"
                                                                                   required>
                                                                        </div>
                                                                    </div>

                                                                    <!--                          -->
                                                                    <div class="form row">

                                                                        <div class="form-group col-md-4">

                                                                            <label class="form-label">DOB
                                                                            </label>
                                                                            <input name="dobInput" type="date"
                                                                                   class="form-control form-control-sm dobInput"
                                                                                   required>
                                                                        </div>


                                                                        <div class="form-group col-md-4">

                                                                            <label class="form-label">Email
                                                                            </label>
                                                                            <input name="emailInput" type="text"
                                                                                   class="form-control form-control-sm emailInput"
                                                                                   required>

                                                                        </div>

                                                                        <div class="form-group col-md-4">
                                                                            <label class="form-label">Password
                                                                            </label>
                                                                            <input name="passInput" type="password"
                                                                                   class="form-control form-control-sm passInput"
                                                                                   required>

                                                                        </div>
                                                                    </div>

                                                                    <div class="form row">

                                                                        <div class="form-group col-md-4">

                                                                            <label class="form-label">High School
                                                                            </label>
                                                                            <input name="highSchoolInput" type="text"
                                                                                   class="form-control form-control-sm highSchoolInput"
                                                                                   required>
                                                                        </div>


                                                                        <div class="form-group col-md-4">

                                                                            <label class="form-label">After Graduation
                                                                            </label>
                                                                            <input name="afterGraduationInput"
                                                                                   type="text"
                                                                                   class="form-control form-control-sm afterGraduationInput"
                                                                                   required>

                                                                        </div>

                                                                        <div class="form-group col-md-4">
                                                                            <label class="form-label">Church
                                                                            </label>
                                                                            <input name="churchNameInput" type="text"
                                                                                   class="form-control form-control-sm churchNameInput"
                                                                                   required>

                                                                        </div>
                                                                    </div>

                                                                    <div class="form row">

                                                                        <div class="form-group col-md-6 ml-auto
">
                                                                            <label class="form-label">Interest 1
                                                                            </label>
                                                                            <input name="interest1Input" type="text"
                                                                                   class="form-control form-control-sm interest1Input"
                                                                                   required>
                                                                        </div>
                                                                        <div class="form-group col-md-6 ml-auto
">
                                                                            <label class="form-label">Interest 2
                                                                            </label>
                                                                            <input name="interest2Input" type="text"
                                                                                   class="form-control form-control-sm interest2Input"
                                                                                   >
                                                                        </div>
                                                                    </div>

                                                                    <div class="form row">
                                                                        <div class="form-group col-md-6">
                                                                            <label class="form-label">Interest 3
                                                                            </label>
                                                                            <input name="interest3Input" type="text"
                                                                                   class="form-control form-control-sm interest3Input"
                                                                                   >
                                                                        </div>
                                                                        <div class="form-group col-md-6">
                                                                            <label class="form-label">Interest 4
                                                                            </label>
                                                                            <input name="interest4Input" type="text"
                                                                                   class="form-control form-control-sm interest4Input"
                                                                                   >
                                                                        </div>
                                                                    </div>

                                                                    <div class="form row">

                                                                        <div class="form-group col-md-4">

                                                                            <label class="form-label">Phone
                                                                            </label>
                                                                            <input name="phoneInput" type="text"
                                                                                   class="form-control form-control-sm phoneInput"
                                                                                   required>
                                                                        </div>


                                                                        <div class="form-group col-md-2">

                                                                            <label class="form-label">Org ID
                                                                            </label>
                                                                            <input name="orgIdInput" type="text"
                                                                                   class="form-control form-control-sm orgIdInput"
                                                                                   required>

                                                                        </div>

                                                                        <div class="form-group col-md-6">
                                                                            <label class="form-label">Admin ID
                                                                            </label>
                                                                            <input name="adminIdInput" type="text"
                                                                                   class="form-control form-control-sm adminIdInput"
                                                                                   required>

                                                                        </div>
                                                                        <div class="form-group col-md-6">
                                                                            <label class="form-label">Event ID
                                                                            </label>
                                                                            <input name="eventIdInput" type="text"
                                                                                   class="form-control form-control-sm eventIdInput"
                                                                                   required>

                                                                        </div>
                                                                    </div>

                                                                    <div class="modal-footer">
                                                                        <button type="button" class="btn btn-secondary"
                                                                                data-bs-dismiss="modal">Cancel
                                                                        </button>

                                                                        <button type="submit" class="btn btn-primary">
                                                                            Update Member
                                                                        </button>
                                                                    </div>
                                                                </form>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </td>

                                        </tr>
                                        <% } %>
                                        </tbody>
                                        <tfoot>
                                        <tr>
                                            <th >Member ID</th>
                                            <th colspan="2">Name</th>


                                            <th >DOB</th>
                                            <th >Email</th>
                                            <th >Pass</th>
                                            <th >High School</th>
                                            <th >After Graduation</th>
                                            <th >Church Name</th>
                                            <th  colspan="4">Interests</th>


                                            <th >Phone</th>
                                            <th >Org ID</th>
                                            <th >Admin ID</th>
                                            <th >Event ID</th>
                                            <th >Actions</th>
                                        </tr>
                                        </tfoot>
                                    </table>
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
                <button class="close" type="button" data-bs-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">×</span>
                </button>
            </div>
            <div class="modal-body">Select "Logout" below if you are ready to end your current session.
            </div>
            <div class="modal-footer">
                <button class="btn btn-secondary" type="button" data-bs-dismiss="modal">Cancel</button>
                <a class="btn btn-primary" href="login.jsp">Logout</a>
            </div>
        </div>
    </div>
</div>

<!-- Bootstrap core JavaScript-->
<script src="assets/js/jquery.min.js"></script>
<script src="assets/js/bootstrap.bundle.min.js"></script>

<!-- Core plugin JavaScript-->

<!-- Custom scripts for all pages-->
<script src="assets/js/sb-admin-2.min.js"></script>

<!-- Bootstrap core JavaScript-->

<!-- Core plugin JavaScript-->
<script src="assets/js/jquery-easing/jquery.easing.min.js"></script>

<!-- Custom scripts for all pages-->


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>



<script src="https://cdn.datatables.net/1.11.5/js/jquery.dataTables.min.js"></script>


<script>


    $(document).ready(function () {
        $('#membersTable').DataTable( {

            "ordering": false


        } );
    } );

  
    $(function () {

        $(document).ready(function () {
            $('.delete_member').hover(function () {
                $tr = $(this).closest('tr');
            })
        })

        var deleteModal = document.getElementById('deleteModal')
        deleteModal.addEventListener('show.bs.modal', function () {

            var modalTitle = deleteModal.querySelector('.modal-title')
            var modalBodyInput = deleteModal.querySelector('.memberIdDelete')

            modalTitle.textContent = 'Delete Member ' + $('.member-first', $tr).text() + $('.member-last', $tr).text() + '?'
            modalBodyInput.value = $('.member-id', $tr).text()


        })
    })

    $(function () {

        $(document).ready(function () {
            $('.update_member').hover(function () {
                $tr = $(this).closest('tr');
            })
        })

        var updateModal = document.getElementById('updateModal')
        updateModal.addEventListener('show.bs.modal', function () {

            var modalTitle = updateModal.querySelector('.modal-title')
            var modalmemberIdInput = updateModal.querySelector('.memberIdInput')
            var modalfirstNameInput = updateModal.querySelector('.firstNameInput')
            var modallastNameInput = updateModal.querySelector('.lastNameInput')
            var modaldobInput = updateModal.querySelector('.dobInput')
            var modalemailInput = updateModal.querySelector('.emailInput')
            var modalpassInput = updateModal.querySelector('.passInput')
            var modalhighSchoolInput = updateModal.querySelector('.highSchoolInput')
            var modalafterGraduationInput = updateModal.querySelector('.afterGraduationInput')
            var modalchurchNameInput = updateModal.querySelector('.churchNameInput')
            var modalinterest1Input = updateModal.querySelector('.interest1Input')
            var modalinterest2Input = updateModal.querySelector('.interest2Input')
            var modalinterest3Input = updateModal.querySelector('.interest3Input')
            var modalinterest4Input = updateModal.querySelector('.interest4Input')
            var modalphoneInput = updateModal.querySelector('.phoneInput')
            var modalorgIdInput = updateModal.querySelector('.orgIdInput')
            var modaladminIdInput = updateModal.querySelector('.adminIdInput')
            var modaleventIdInput = updateModal.querySelector('.eventIdInput')


            modalTitle.textContent = 'Update Member ' + $('.member-first', $tr).text() + $('.member-last', $tr).text() + ' ?'
            modalmemberIdInput.value = $('.member-id', $tr).text()
            modalfirstNameInput.value = $('.member-first', $tr).text()
            modallastNameInput.value = $('.member-last', $tr).text()
            modaldobInput.value = $('.member-dob', $tr).text()
            modalemailInput.value = $('.member-email', $tr).text()
            modalpassInput.value = $('.member-pass', $tr).text()
            modalhighSchoolInput.value = $('.member-hs', $tr).text()
            modalafterGraduationInput.value = $('.member-ag', $tr).text()
            modalchurchNameInput.value = $('.member-church', $tr).text()
            modalinterest1Input.value = $('.member-int1', $tr).text()
            modalinterest2Input.value = $('.member-int2', $tr).text()
            modalinterest3Input.value = $('.member-int3', $tr).text()
            modalinterest4Input.value = $('.member-int4', $tr).text()
            modalphoneInput.value = $('.member-phone', $tr).text()
            modalorgIdInput.value = $('.ord-id', $tr).text()
            modaladminIdInput.value = $('.admin-id', $tr).text()
            modaleventIdInput.value = $('.event-id', $tr).text()


        })
    })


</script>
</body>

</html>
