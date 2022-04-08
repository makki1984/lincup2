<%@ page import="com.uh.rachel.util.DataHandler" %>
<%@ page import="java.util.Vector" %>
<%@ page import="com.uh.rachel.util.tableClasses.taskStepsTable" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Task Steps</title>
</head>
<body>
<table>
  <tr>
    <th>Task Steps ID</th>
    <th>Task ID</th>
    <th>Task Name</th>
    <th>Member ID</th>
  </tr>

  <% Vector<taskStepsTable> v = DataHandler.getTaskSteps();
    for (taskStepsTable c : v) {
  %>

  <tr>
    <td><%= String.valueOf(c.getTaskStepsId())%></td>
    <td><%= String.valueOf(c.getTaskId())%></td>
    <td><%= String.valueOf(c.getTaskName())%></td>
    <td><%= String.valueOf(c.getMemberid())%></td>

  </tr>

  <%
    }
  %>

</table>
</body>
</html>
