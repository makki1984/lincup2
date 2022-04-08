<%@ page import="com.uh.rachel.util.DataHandler" %>
<%@ page import="java.util.Vector" %>
<%@ page import="com.uh.rachel.util.tableClasses.eventsTable" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Events</title>

    <script type="text/javascript">
        function makeVisible(){
            var valuey = document.getElementById('selection').value;
            if (valuey ==="deleteRow") {
                document.getElementById('deleteForm').style.display = "flex";
            }
            if (valuey == "insertRow") {
                document.getElementById('insertForm').style.display = "flex";
            }
            if (valuey == "updateRow") {}
            document.getElementById('updateForm').style.display = "flex";
        }
    </script>

</head>
<body>

<select id="selection">
    <option value="deleteRow">Delete Customer</option>
    <option value="insertRow">Insert Customer</option>
    <option value="updateRow">Update Customer</option>
</select>

<button onclick="makeVisible();">Make Form Visible</button>

<form action="deleteEvents" id="deleteForm" style="display:none;" method="post">
    <input name="rowToDelete" type="text">
    <button type="submit">Delete This Row</button>
</form>

<form action="insertEvents" id="insertForm" style="display:none;" method="post">
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
    <button type="submit">Insert This Row</button>
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






</head>
</body>

<table>
    <tr>
        <th>Event ID</th>
        <th>Event Name</th>
        <th>Event Type</th>
        <th>Event City</th>
        <th>Event State</th>
        <th>Event Date</th>
        <th>Interest 1</th>
        <th>Interest 2</th>
        <th>Interest 3</th>
        <th>Interest 4</th>
    </tr>

    <% Vector<eventsTable> v = DataHandler.getEvents();
        for (eventsTable c : v) {
    %>

    <tr>
        <td><%= String.valueOf(c.getEventId())%></td>
        <td><%= String.valueOf(c.getEventName())%></td>
        <td><%= String.valueOf(c.getEventType())%></td>
        <td><%= String.valueOf(c.getEventCity())%></td>
        <td><%= String.valueOf(c.getEventState())%></td>
        <td><%= String.valueOf(c.getEventDate())%></td>
        <td><%= String.valueOf(c.getInterest1())%></td>
        <td><%= String.valueOf(c.getInterest2())%></td>
        <td><%= String.valueOf(c.getInterest3())%></td>
        <td><%= String.valueOf(c.getInterest4())%></td>


    </tr>

    <%
        }
    %>

</table>
</body>
</html>
