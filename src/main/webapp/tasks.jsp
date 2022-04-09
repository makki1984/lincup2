<%@ page import="com.uh.rachel.util.DataHandler" %>
<%@ page import="java.util.Vector" %>
<%@ page import="com.uh.rachel.util.tableClasses.tasksTable" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Tasks</title>

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
</body>
</html>
