<%@ page import="com.uh.rachel.util.DataHandler" %>
<%@ page import="java.util.Vector" %>
<%@ page import="com.uh.rachel.util.tableClasses.requestsTable" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Requests</title>
</head>
<body>
<table>
  <tr>
    <th>Request ID</th>
    <th>Org ID</th>
    <th>Member ID</th>
  </tr>

  <% Vector<requestsTable> v = DataHandler.getRequestsTable();
    for (requestsTable c : v) {
  %>

  <tr>
    <td><%= String.valueOf(c.getRequestId())%></td>
    <td><%= String.valueOf(c.getOrgId())%></td>
    <td><%= String.valueOf(c.getMemberid())%></td>
  </tr>

  <%
    }
  %>

</table>
</body>
</html>
