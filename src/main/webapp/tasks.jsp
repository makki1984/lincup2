<%@ page import="com.uh.rachel.util.DataHandler" %>
<%@ page import="java.util.Vector" %>
<%@ page import="com.uh.rachel.util.tableClasses.tasksTable" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Tasks</title>
</head>
<body>
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
</body>
</html>
