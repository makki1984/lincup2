<%@ page import="com.uh.rachel.util.DataHandler" %>
<%@ page import="java.util.Vector" %>
<%@ page import="com.uh.rachel.util.tableClasses.tasksTable" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>LINCUP - Tasks</title>

  <!-- Custom fonts for this template-->
  <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">
  <!-- Custom styles for this template-->
  <link href="css/sb-admin-2.min.css" rel="stylesheet">
  <!-- Custom styles for this page -->
  <link rel="stylesheet" href="https://cdn.datatables.net/1.11.5/css/jquery.dataTables.min.css">

  <style>html, body {
    margin: 0;
    padding: 0;
    font-family: Arial, Helvetica Neue, Helvetica, sans-serif;
    font-size: 14px;
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

        <h1 class="text-center text-dark"><b>Tasks</b></h1>
        <div class="row justify-content-center">
          <div class="col-md-10 mb-3">


            <div class="card shadow mb-4">
              <div class="card-header align-items-end py-3">
                <i class="fas fa-plus fa-2x" style="color: royalblue" data-bs-toggle="modal" data-bs-target="#addModal"></i>

              </div>
              <div class="card-body">


                <!-- Add Event -->


                <div class="modal fade" id="addModal" tabindex="-1" role="dialog"
                     aria-labelledby="addModalLabel" aria-hidden="true">
                  <div class="modal-dialog modal-dialog-centered" role="document">
                    <div class="modal-content">
                      <div class="modal-header">
                        <h5 class="modal-title" id="addModalLabel">Add Task</h5>
                        <button type="button" class="close" data-dismiss="modal"
                                aria-label="Close">
                          <span aria-hidden="true">&times;</span>

                        </button>
                      </div>
                      <div class="modal-body">

                        <form action="insertTasks" id="insertForm" method="post">

                          <div class="form row">

                            <div class="form-group col-md-4">
                              <label class="form-label">Task ID</label>

                              <input name="taskIdInput" type="text"
                                     class="form-control form-control-sm taskIdInput" required>
                            </div>


                            <div class="form-group col-md-4">
                              <label class="form-label">Task Name</label>
                              <input name="taskNameInput" type="text"
                                     class="form-control form-control-sm taskNameInput" required>
                            </div>


                            <div class="form-group col-md-4">
                              <label class="form-label">Task Date</label>
                              <input name="taskDateInput" type="text"
                                     class="form-control form-control-sm taskDateInput" required>
                            </div>
                          </div>

                          <!--                          -->
                          <div class="form row">

                            <div class="form-group col-md-12">

                              <label class="form-label">Description
                              </label>
                              <textarea name="taskDescriptionInput" type="text"
                                        class="form-control form-control-sm taskDescriptionInput" rows="3" required></textarea>
                            </div>
                          </div>

                          <div class="form row">
                            <div class="form-group col-md-4">

                              <label class="form-label">Member ID
                              </label>
                              <input name="MemberIdInput" type="text"
                                     class="form-control form-control-sm MemberIdInput" required>

                            </div>

                            <div class="form-group col-md-4">
                              <label class="form-label">Event ID
                              </label>
                              <input name="EventIdInput" type="text"
                                     class="form-control form-control-sm EventIdInput" required>

                            </div>
                            <div class="form-group col-md-4">
                              <label class="form-label">Status
                              </label>
                              <select name="taskStatusInput" type="text"
                                      class="form-control form-control-sm taskStatusInput" required>
                                <option>Active</option>
                                <option>Completed</option>
                                <option>Canceled</option>
                              </select>
                            </div>
                          </div>

                          <div class="modal-footer">
                            <button type="button" class="btn btn-secondary"
                                    data-dismiss="modal">Cancel
                            </button>

                            <button type="submit" class="btn btn-primary">Insert New Task
                            </button>
                          </div>
                        </form>
                      </div>
                    </div>
                  </div>
                </div>


                <div>
                  <table id="taskTable"
                         class="display"
                         style="width:100%"


                  >
                    <thead>
                    <tr >
                      <th>Task ID</th>
                      <th>Task Name</th>
                      <th>Task Date</th>
                      <th>Description</th>
                      <th>Member ID</th>
                      <th>Event ID</th>
                      <th>Status</th>
                      <th class="text-center">Actions</th>

                    </tr>

                    </thead>
                    <tbody>

                    <% Vector<tasksTable> v = DataHandler.getTasks();
                      for (tasksTable c : v) {
                    %>

                    <tr>
                      <td class="task-id"><%= String.valueOf(c.getTaskId())%></td>
                      <td class="task-name"><%= String.valueOf(c.getTaskName())%></td>
                      <td class="task-date"><%= String.valueOf(c.getTaskDate())%></td>
                      <td class="desc"><%= String.valueOf(c.getDescription())%></td>
                      <td class="memb-id"><%= String.valueOf(c.getMemberid())%></td>
                      <td class="event-id"><%= String.valueOf(c.getEventId())%></td>
                      <td class="stat"><%= String.valueOf(c.getStatus())%></td>
                      <td>

                        <span style="padding-left:20px;">        </span>

                        <i class="fas fa-trash delete_task" style="color: royalblue" data-bs-toggle="modal" data-bs-target="#deleteModal"></i>

                        <div class="modal fade" id="deleteModal" tabindex="-1" role="dialog"
                             aria-labelledby="deleteModalLabel" aria-hidden="true">
                          <div class="modal-dialog modal-dialog-centered">
                            <div class="modal-content">
                              <div class="modal-header">
                                <h5 class="modal-title" id="deleteModalLabel">Delete Task</h5>
                                <button type="button" class="close" data-bs-dismiss="modal"
                                        aria-label="Close">
                                </button>
                              </div>
                              <div class="modal-body">
                                <form action="deleteTasks" method="post">
                                  <div class="form-group">
                                    <label class="col-form-label">Event
                                      ID:</label>
                                    <input name="taskIdDelete" type="text" class="form-control taskIdDelete" readonly required>
                                  </div>

                                  <div class="modal-footer">
                                    <button type="button" class="btn btn-secondary"
                                            data-bs-dismiss="modal">Cancel
                                    </button>
                                    <button type="submit" class="btn btn-primary">Delete
                                      Task
                                    </button>
                                  </div>
                                </form>
                              </div>
                            </div>
                          </div>
                        </div>

                        <span style="padding-left:20px;">        </span>


                        <i class="fas fa-edit update_task" style="color: royalblue" data-bs-toggle="modal" data-bs-target="#updateModal"></i>


                        <div class="modal fade" id="updateModal" tabindex="-1" role="dialog"
                             aria-labelledby="updateModalLabel" aria-hidden="true">
                          <div class="modal-dialog modal-dialog-centered">
                            <div class="modal-content">
                              <div class="modal-header">
                                <h5 class="modal-title" id="updateModalLabel">Update Task</h5>
                                <button type="button" class="close" data-bs-dismiss="modal"
                                        aria-label="Close">
                                </button>
                              </div>
                              <div class="modal-body">

                                <form action="updateTasks" id="updateForm" method="post">

                                  <div class="form row">

                                    <div class="form-group col-md-4">
                                      <label class="form-label">Task ID</label>

                                      <input name="taskIdInput" type="text"
                                             class="form-control form-control-sm taskIdInput" required readonly>
                                    </div>


                                    <div class="form-group col-md-4">
                                      <label class="form-label">Task Name</label>
                                      <input name="taskNameInput" type="text"
                                             class="form-control form-control-sm taskNameInput" required>
                                    </div>


                                    <div class="form-group col-md-4">
                                      <label class="form-label">Task Date</label>
                                      <input name="taskDateInput" type="text"
                                             class="form-control form-control-sm taskDateInput" required>
                                    </div>
                                  </div>

                                  <!--                          -->
                                  <div class="form row">

                                    <div class="form-group col-md-12">

                                      <label class="form-label">Description
                                      </label>
                                      <textarea name="taskDescriptionInput" type="text"
                                                class="form-control form-control-sm taskDescriptionInput" rows="3" required> </textarea>
                                    </div>
                                  </div>

                                    <div class="form row">
                                    <div class="form-group col-md-4">

                                      <label class="form-label">Member ID
                                      </label>
                                      <input name="MemberIdInput" type="text"
                                             class="form-control form-control-sm MemberIdInput" required>

                                    </div>

                                    <div class="form-group col-md-4">
                                      <label class="form-label">Event ID
                                      </label>
                                      <input name="EventIdInput" type="text"
                                             class="form-control form-control-sm EventIdInput" required>

                                    </div>
                                      <div class="form-group col-md-4">
                                        <label class="form-label">Status
                                        </label>
                                        <select name="taskStatusInput" type="text"
                                               class="form-control form-control-sm taskStatusInput" required>
                                          <option>Active</option>
                                          <option>Completed</option>
                                          <option>Canceled</option>
                                        </select>
                                      </div>
                                  </div>

                                  <div class="modal-footer">
                                    <button type="button" class="btn btn-secondary"
                                            data-bs-dismiss="modal">Cancel
                                    </button>

                                    <button type="submit" class="btn btn-primary">Update Task
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
                      <th>Task ID</th>
                      <th>Task Name</th>
                      <th>Task Date</th>
                      <th>Description</th>
                      <th>Member ID</th>
                      <th>Event ID</th>
                      <th>Status</th>
                      <th class="text-center">Actions</th>
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
<script src="vendor/jquery/jquery.min.js"></script>
<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

<!-- Core plugin JavaScript-->
<script src="vendor/jquery-easing/jquery.easing.min.js"></script>

<!-- Custom scripts for all pages-->
<script src="js/sb-admin-2.min.js"></script>

<!-- Page level plugins -->



<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

<script src="https://unpkg.com/bootstrap-table@1.19.1/dist/bootstrap-table.min.js"></script>


<script src="https://cdn.datatables.net/1.11.5/js/jquery.dataTables.min.js"></script>


<script>

  $(document).ready( function () {
    $('#taskTable').DataTable();
  } );


  $(function() {

    $(document).ready(function() {
      $('.delete_task').hover(function () {
        $tr = $(this).closest('tr');
      })
    })

    var deleteModal = document.getElementById('deleteModal')
    deleteModal.addEventListener('show.bs.modal', function () {

      var modalTitle = deleteModal.querySelector('.modal-title')
      var modalBodyInput = deleteModal.querySelector('.taskIdDelete')

      modalTitle.textContent = 'Delete Task ' + $('.task-id',$tr).text() +'?'
      modalBodyInput.value = $('.task-id',$tr).text()


    })
  })

  $(function() {

    $(document).ready(function() {
      $('.update_task').hover(function () {
        $tr = $(this).closest('tr');
      })
    })

    var updateModal = document.getElementById('updateModal')
    updateModal.addEventListener('show.bs.modal', function () {

      var modalTitle = updateModal.querySelector('.modal-title')
      var modalIDInput = updateModal.querySelector('.taskIdInput')
      var modalnameInput = updateModal.querySelector('.taskNameInput')
      var modeldateInput = updateModal.querySelector('.taskDateInput')
      var modaldescInput = updateModal.querySelector('.taskDescriptionInput')
      var modalmemInput = updateModal.querySelector('.MemberIdInput')
      var modaleventnput = updateModal.querySelector('.EventIdInput')
      var modalstatInput = updateModal.querySelector('.taskStatusInput')



      modalTitle.textContent = 'Update Task ' + $('.task-id',$tr).text() +'?'
      modalIDInput.value = $('.task-id',$tr).text()
      modalnameInput.value = $('.task-name',$tr).text()
      modeldateInput.value = $('.task-date',$tr).text()
      modaldescInput.value = $('.desc',$tr).text()
      modalmemInput.value = $('.memb-id',$tr).text()
      modaleventnput.value = $('.event-id',$tr).text()
      modalstatInput.value = $('.stat',$tr).text()





    })
  })


</script>
</body>

</html>