<%@ page import="com.uh.rachel.util.DataHandler" %>
<%@ page import="com.uh.rachel.util.tableClasses.studentOrgTable" %>
<%@ page import="java.util.Vector" %><%--
  Created by IntelliJ IDEA.
  User: Makki
  Date: 4/4/2022
  Time: 11:51 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Student Org</title>
</head>
<body>
<table>
    <tr>
        <th>Org ID</th>
        <th>City</th>
        <th>State</th>
        <th>University</th>
        <th>Org Name</th>
        <th>Interest 1</th>
        <th>Interest 2</th>
        <th>Interest 3</th>
        <th>Interest 4</th>
    </tr>

    <% Vector<studentOrgTable> v = DataHandler.getStudentOrg();
        for (studentOrgTable c : v) {
    %>

    <tr>
        <td><%= String.valueOf(c.getOrgId())%></td>
        <td><%= String.valueOf(c.getCity())%></td>
        <td><%= String.valueOf(c.getState())%></td>
        <td><%= String.valueOf(c.getUniversity())%></td>
        <td><%= String.valueOf(c.getOrgName())%></td>
        <td><%= String.valueOf(c.getInterest1())%></td>
        <td><%= String.valueOf(c.getInterest2())%></td>
        <td><%= String.valueOf(c.getInterest3())%></td>
        <td><%= String.valueOf(c.getInterest4())%></td>

    <%
        }
    %>

</table>
</body>
</html>
