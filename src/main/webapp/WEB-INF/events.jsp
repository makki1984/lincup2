<%@ page import="com.uh.rachel.util.DataHandler" %>
<%@ page import="java.util.Vector" %>
<%@ page import="com.uh.rachel.util.tableClasses.eventsTable" %>
<%@ page import="java.sql.Date" %>
<%@ page import="java.sql.Blob" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Events</title>
</head>
<body>
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
        <th>Picture</th>
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
        <td><%= Date.valueOf(c.getEventDate())%></td>
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
