<%@ page import="com.uh.rachel.util.DataHandler" %>
<%@ page import="java.util.Vector" %>
<%@ page import="com.uh.rachel.util.tableClasses.eventScheduleTable" %>
<%@ page import="com.uh.rachel.util.tableClasses.eventScheduleTable" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Event Schedule</title>
</head>
<body>
<table>
    <tr>
        <th>Event Schedule ID</th>
        <th>Event ID</th>
        <th>Member ID</th>
        <th>Event Name</th>
        <th>Event Type</th>
    </tr>

    <% Vector<eventScheduleTable> v = DataHandler.getEventSchedule();
        for (eventScheduleTable c : v) {
    %>

    <tr>
        <td><%= String.valueOf(c.getEventScheduleId())%></td>
        <td><%= String.valueOf(c.getEventId())%></td>
        <td><%= String.valueOf(c.getMemberid())%></td>
        <td><%= String.valueOf(c.getEventName())%></td>
        <td><%= String.valueOf(c.getEventType())%></td>
    </tr>

    <%
        }
    %>

</table>
</body>
</html>
