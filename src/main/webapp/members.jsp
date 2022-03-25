<%@ page import="com.uh.rachel.util.DataHandler" %>
<%@ page import="java.util.Vector" %>
<%@ page import="com.uh.rachel.util.tableClasses.membersTable" %>
<%@ page import="java.sql.Date" %><%--
  Created by IntelliJ IDEA.
  User: rjvoigt
  Date: 3/24/22
  Time: 6:28 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Members</title>
</head>
<body>
    <table>
        <tr>
            <th>Member ID</th>
            <th>First Name</th>
            <th>Last Type</th>
            <th>DOB</th>
            <th>Email</th>
            <th>Pass</th>
            <th>High School</th>
            <th>After Graduation</th>
            <th>Church ID</th>
            <th>Interest 1</th>
            <th>Interest 2</th>
            <th>Interest 3</th>
            <th>Interest 4</th>
            <th>Phone</th>
            <th>Org ID</th>
            <th>School ID</th>
            <th>Admin ID</th>
        </tr>

        <% Vector<membersTable> v = DataHandler.getMembers();
        for (membersTable c : v) {
        %>

        <tr>
            <td><%= String.valueOf(c.getMemberid())%></td>
            <td><%= String.valueOf(c.getFirstName())%></td>
            <td><%= String.valueOf(c.getLastName())%></td>
            <td><%= String.valueOf(c.getDob())%></td>
            <td><%= String.valueOf(c.getEmail())%></td>
            <td><%= String.valueOf(c.getPass())%></td>
            <td><%= String.valueOf(c.getHighSchool())%></td>
            <td><%= String.valueOf(c.getAfterGraduation())%></td>
            <td><%= String.valueOf(c.getChurchID())%></td>
            <td><%= String.valueOf(c.getInterest1())%></td>
            <td><%= String.valueOf(c.getInterest2())%></td>
            <td><%= String.valueOf(c.getInterest3())%></td>
            <td><%= String.valueOf(c.getInterest4())%></td>
            <td><%= String.valueOf(c.getPhone())%></td>
            <td><%= Integer.valueOf(c.getOrgid())%></td>
            <td><%= Integer.valueOf(c.getSchoolid())%></td>
            <td><%= Integer.valueOf(c.getAdminId())%></td>
        </tr>

        <%
        }
        %>

    </table>
</body>
</html>
