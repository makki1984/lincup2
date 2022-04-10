<%@ page import="com.uh.rachel.util.DataHandler" %>
<%@ page import="java.util.Vector" %>
<%@ page import="com.uh.rachel.util.tableClasses.eventsTable" %>
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
        <h1 class="text-center text-dark"><b>Events</b></h1>
        <div class="col-lg-12  row justify-content-center">
            <div class="row">
                <div class="col-md-12 mb-3">
                    <div class="card">
                        <div class="card-header">
                            <span><i class="bi bi-table"></i></span> Events </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table id="eventsTable" class="table table-striped dataTable" style="width: 100%">
                                    <thead>
                                    <tr>
                                        <th>Event ID</th>
                                        <th>Name</th>
                                        <th>Type</th>
                                        <th>City</th>
                                        <th>State</th>
                                        <th>Date</th>
                                        <th>Interests</th>

                                    </tr>
                                        <% Vector<eventsTable> v = DataHandler.getEvents(); for (eventsTable c : v) { %>
                                    <tr>
                                        <td><%= String.valueOf(c.getEventId())%>
                                        </td>
                                        <td><%= String.valueOf(c.getEventName())%>
                                        </td>
                                        <td><%= String.valueOf(c.getEventType())%>
                                        </td>
                                        <td><%= String.valueOf(c.getEventCity())%>
                                        </td>
                                        <td><%= String.valueOf(c.getEventState())%>
                                        </td>
                                        <td><%= String.valueOf(c.getEventDate())%>
                                        </td>
                                        <td><%= String.valueOf(c.getInterest1())%>
                                            , <%= String.valueOf(c.getInterest2())%>,
                                            <%= String.valueOf(c.getInterest3())%>
                                            , <%= String.valueOf(c.getInterest4())%>
                                        </td>
                                    </tr>
                                        <% } %>


                                    <tfoot>
                                    <tr>
                                        <th>Event ID</th>
                                        <th>Name</th>
                                        <th>Type</th>
                                        <th>City</th>
                                        <th>State</th>
                                        <th>Date</th>
                                        <th>Interests</th>
                                    </tr>
                                    </tfoot>
                                </table>
                            </div>
                        </div>
                    </div>
                                <!-- Add Event -->

                                <button class="btn btn-primary" type="button" data-bs-toggle="offcanvas"
                                        data-bs-target="#offcanvasRight" aria-controls="offcanvasRight">Add Event
                                </button>

                                <div class="offcanvas offcanvas-end" tabindex="-1" id="offcanvasRight"
                                     aria-labelledby="offcanvasRightLabel">
                                    <div class="offcanvas-header">
                                        <h5 id="offcanvasRightLabel">Add New Event</h5>
                                        <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas"
                                                aria-label="Close"></button>
                                    </div>
                                    <div class="offcanvas-body">

                                        <form action="insertEvents" id="insertForm" method="post">
                                            <div class="row mb-4">


                                                <div class="col">
                                                    <div class="form-outline">
                                                        <label class="form-label">Event
                                                            ID</label>

                                                        <input name="eventIdInput" type="text" class="form-control">
                                                    </div>
                                                </div>
                                                <div class="col">
                                                    <div class="form-outline">
                                                        <label class="form-label">Event
                                                            Name</label>
                                                        <input name="eventNameInput" type="text" class="form-control">
                                                    </div>
                                                </div>

                                                <label class="form-label">Event Type
                                                </label>


                                                <input name="eventTypeInput" type="text" class="form-control">
                                                <label class="form-label">City
                                                </label>
                                                <input name="eventCityInput" type="text" class="form-control">
                                                <label class="form-label">State
                                                </label>
                                                <input name="eventStateInput" type="text" class="form-control">
                                                <label class="form-label">Date
                                                </label>
                                                <input name="eventDateInput" type="date" class="form-control">
                                                <label class="form-label">Interest 1
                                                </label>
                                                <input name="interest1Input" type="text" class="form-control">
                                                <label class="form-label">Interest 2
                                                </label>
                                                <input name="interest2Input" type="text" class="form-control">
                                                <label class="form-label">Interest 3
                                                </label>
                                                <input name="interest3Input" type="text" class="form-control">
                                                <label class="form-label">Interest 4
                                                </label>
                                                <input name="interest4Input" type="text" class="form-control">

                                                <button type="submit" class="btn btn-primary">Insert This Row</button>
                                            </div>

                                        </form>


                                        <!--


                                        <button onclick="makeVisible();">Make Form Visible</button>

                                        <form action="deleteEvents" id="deleteForm" style="display:none;" method="post">
                                            <input name="rowToDelete" type="text">
                                            <button type="submit">Delete This Row</button>
                                        </form>




                                        <form action="updateEvents" id="updateForm" style="display:none;" method="post">
                                            <input name="eventIdInput" type="text">
                                            <input name="eventNameInput" type="text">
                                            <input name="eventTypeInput" type="text">
                                            <input name="eventCityInput" type="text">
                                            <input name="eventStateInput" type="text">
                                            <input name="eventDateInput" type="text">
                                            <input name="interest1Input" type="text">
                                            <input name="interest2Input" type="text">
                                            <input name="interest3Input" type="text">
                                            <input name="interest4Input" type="text">
                                            <button type="submit">Update This Row</button>
                                        </form>

                                        Update Event -->

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
