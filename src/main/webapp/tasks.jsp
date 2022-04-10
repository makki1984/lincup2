<%@ page import="com.uh.rachel.util.DataHandler" %>
<%@ page import="java.util.Vector" %>
<%@ page import="com.uh.rachel.util.tableClasses.tasksTable" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8"/>
  <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <link rel="stylesheet" href="css/bootstrap.min.css"/>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" />
  <link rel="stylesheet" href="css/dataTables.bootstrap5.min.css"/>
  <link rel="stylesheet" href="css/style.css"/>

  <title>Linc Up</title>
</head>

  <script type="text/javascript">
    function showUp(){
      var valuet = document.getElementById('selection').value;
      if (valuet == "deleteRow"){
        document.getElementId('deleteForm').style.display = "flex";
      }
      if (valuet == "updateRow"){
        document.getElementId('updateForm').style.display = "flex";
      }
      if (valuet == "insertRow"){
        document.getElementId('insertForm').style.display = "flex";
      }

    }
  </script>
</head>
<body>
<!-- Nav Start -->
<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
  <div class="container-fluid">
    <button
            class="navbar-toggler"
            type="button"
            data-bs-toggle="offcanvas"
            data-bs-target="#sidebar"
            aria-controls="offcanvasExample"
    >
      <span class="navbar-toggler-icon" data-bs-target="#sidebar"></span>
    </button>
    <a
            class="navbar-brand me-auto ms-lg-0 ms-3 text-uppercase fw-bold"
            href="#"
    >LINCUP</a>
    <button
            class="navbar-toggler"
            type="button"
            data-bs-toggle="collapse"
            data-bs-target="#topNavBar"
            aria-controls="topNavBar"
            aria-expanded="false"
            aria-label="Toggle navigation"
    >
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="topNavBar">
      <!-- <form class="d-flex ms-auto my-3 my-lg-0">
           <div class="input-group">
               <input
                       class="form-control"
                       type="search"
                       placeholder="Search"
                       aria-label="Search"
               />
               <button class="btn btn-primary" type="submit">
                   <i class="bi bi-search"></i>
               </button>
           </div>
       </form>
       -->
      <ul class="navbar-nav d-flex ms-auto my-3 my-lg-0">
        <li class="nav-item dropdown">
          <a
                  class="nav-link dropdown-toggle ms-2"
                  href="#"
                  role="button"
                  data-bs-toggle="dropdown"
                  aria-expanded="false"
          >
            <i class="bi bi-person-fill"></i>
          </a>
          <ul class="dropdown-menu dropdown-menu-end">
            <li><a class="dropdown-item" href="logout.jsp">Logout</a></li>
            <!--    <li><a class="dropdown-item" href="/user.html">Your Profile</a></li> -->
          </ul>
        </li>
      </ul>
    </div>
  </div>
</nav>
<!-- top navigation bar -->
<div class="offcanvas offcanvas-start sidebar-nav bg-dark" tabindex="-1" id="sidebar" style="width: 170px;">
  <div class="offcanvas-body p-0">
    <nav class="navbar-dark">
      <ul class="navbar-nav">
        <li>

        </li>
        </br>
        <li>
          <a href="home.jsp" class="nav-link px-3">
            <span class="me-2"><i class="bi bi-house"></i></span>
            <span>Dashboard</span>
          </a>
        </li>
        <li class="my-4">
          <hr class="dropdown-divider bg-light"/>
        </li>
        <li>
          <div class="text-muted small fw-bold text-uppercase px-3 mb-3">
            Menu
          </div>
        </li>
        <li>

          <div class="collapse" id="layouts">
            <ul class="navbar-nav ps-3">
              <li>

              </li>
            </ul>
          </div>
        </li>
        <li>
          <a href="events.jsp" class="nav-link px-3">
            <span class="me-2"><i class="bi bi-calendar-check-fill"></i></span>
            <span>Events</span>
          </a>
        </li>

        </li>
        <li>
          <a href="matching.jsp" class="nav-link px-3">
            <span class="me-2"><i class="bi bi-clipboard"></i></span>
            <span>Matching</span>
          </a>
        </li>
        <li>
          <a href="requests.jsp" class="nav-link px-3">
            <span class="me-2"><i class="bi bi-table"></i></span>
            <span>Requests</span>
          </a>
        </li>
        <li>
          <a href="tasks.jsp" class="nav-link px-3">
            <span class="me-2"><i class="bi bi-list-task"></i></span>
            <span>Tasks</span>
          </a>
        </li>
        <li>
          <a href="members.jsp" class="nav-link px-3">
            <span class="me-2"><i class="bi bi-people"></i></span>
            <span>Members</span>
          </a>
        </li>
      </ul>
    </nav>
  </div>
</div>
<!-- Nav End -->


<!-- main content -->

<div class="container-fluid">
  <main class="mt-5 pt-5">
    <h1 class="text-center text-dark"><b>Tasks</b></h1>
    <div class="col-lg-12  row justify-content-center">
      <div class="row">
        <div class="col-md-12 mb-3">
          <div class="card">
            <div class="card-header">
              <span><i class="bi bi-list"></i></span> Tasks </div>
            <div class="card-body">



<select id="selection">
  <option value="deleteRow">Delete Task</option>
  <option value="updateRow">Update Task</option>
  <option value="insertRow">Insert Task</option>
</select>

<button onclick="showUp();">Make Form Visible</button>

<form action="deleteTasks" id="deleteForm" style="display:none;" method="post">
  <input name="rowToDelete" type="text">
  <button type="submit">Delete This Row</button>
</form>

<form action="insertTasks" id="insertForm" style="display:none;" method="post">
  <input name="taskIdInput" type="text">
  <input name="taskNameInput" type="text">
  <input name="taskDateInput" type="text">
  <input name="taskDescriptionInput" type="text">
  <input name="MemberIdInput" type="text">
  <input name="EventIdInput" type="text">
  <input name="taskStatusInput" type="text">
  <button type="submit">Insert This Row</button>
</form>

<form action="updateTasks" id="updateForm" style="display:none;" method="post">
  <input name="taskIdInput" type="text">
  <input name="taskNameInput" type="text">
  <input name="taskDateInput" type="text">
  <input name="taskDescriptionInput" type="text">
  <input name="MemberIdInput" type="text">
  <input name="EventIdInput" type="text">
  <input name="taskStatusInput" type="text">
  <button type="submit">Update This Row</button>
</form>



<table>
  <tr>
    <th>Task ID</th>
    <th>Task Name</th>
    <th>Task Date</th>
    <th>Description</th>
    <th>Member ID</th>
    <th>Event ID</th>
    <th>Status</th>
  </tr>

  <% Vector<tasksTable> v = DataHandler.getTasks();
    for (tasksTable c : v) {
  %>

  <tr>
    <td><%= String.valueOf(c.getTaskId())%></td>
    <td><%= String.valueOf(c.getTaskName())%></td>
    <td><%= String.valueOf(c.getTaskDate())%></td>
    <td><%= String.valueOf(c.getDescription())%></td>
    <td><%= String.valueOf(c.getMemberid())%></td>
    <td><%= String.valueOf(c.getEventId())%></td>
    <td><%= String.valueOf(c.getStatus())%></td>

  </tr>

  <%
    }
  %>

</table>
</div>
</div>
</div>
</div>
</div>

</main>
</div>

<script src="./js/bootstrap.bundle.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/chart.js@3.0.2/dist/chart.min.js"></script>
<script src="./js/jquery-3.5.1.js"></script>
<script src="./js/jquery.dataTables.min.js"></script>
<script src="./js/dataTables.bootstrap5.min.js"></script>
<script src="./js/script.js"></script>
<script src="https://cdn.datatables.net/responsive/2.2.9/js/dataTables.responsive.min.js"></script>
<script src="https://cdn.datatables.net/responsive/2.2.9/js/responsive.bootstrap5.min.js"></script>
</body>
</html>