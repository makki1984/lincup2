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
    <option value="deleteRow">Delete Member</option>
    <option value="insertRow">Insert Member</option>
    <option value="updateRow">Update Member</option>
</select>

<button onclick="makeVisible();">Make Form Visible</button>

<form action="deleteMembers" id="deleteForm" style="display:none;" method="post">
    <input name="memberIdDelete" type="text">
    <button type="submit">Delete This Row</button>
</form>

<form action="insertMembers" id="insertForm" style="display:none;" method="post">
    <input name="memberIdInput" type="text">
    <input name="firstNameInput" type="text">
    <input name="lastNameInput" type="text">
    <input name="dobInput" type="text">
    <input name="emailInput" type="text">
    <input name="passInput" type="text">
    <input name="highSchoolInput" type="text">
    <input name="afterGraduationInput" type="text">
    <input name="churchNameInput" type="text">
    <input name="interest1Input" type="text">
    <input name="interest2Input" type="text">
    <input name="interest3Input" type="text">
    <input name="interest4Input" type="text">
    <input name="phoneInput" type="text">
    <input name="orgIdInput" type="text">
    <input name="adminIdInput" type="text">
    <input name="eventIdInput" type="text">
    <button type="submit">Insert This Row</button>
</form>

<form action="updateMembers" id="updateForm" style="display:none;" method="post">
    <input name="memberIdInput" type="text">
    <input name="firstNameInput" type="text">
    <input name="lastNameInput" type="text">
    <input name="dobInput" type="text">
    <input name="emailInput" type="text">
    <input name="passInput" type="text">
    <input name="highSchoolInput" type="text">
    <input name="afterGraduationInput" type="text">
    <input name="churchNameInput" type="text">
    <input name="interest1Input" type="text">
    <input name="interest2Input" type="text">
    <input name="interest3Input" type="text">
    <input name="interest4Input" type="text">
    <input name="phoneInput" type="text">
    <input name="orgIdInput" type="text">
    <input name="adminIdInput" type="text">
    <input name="eventIdInput" type="text">
    <button type="submit">Update This Row</button>
</form>

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
            <th>Church Name</th>
            <th>Interest 1</th>
            <th>Interest 2</th>
            <th>Interest 3</th>
            <th>Interest 4</th>
            <th>Phone</th>
            <th>Org ID</th>
            <th>Admin ID</th>
            <th>Event ID</th>
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
            <td><%= String.valueOf(c.getChurchName())%></td>
            <td><%= String.valueOf(c.getInterest1())%></td>
            <td><%= String.valueOf(c.getInterest2())%></td>
            <td><%= String.valueOf(c.getInterest3())%></td>
            <td><%= String.valueOf(c.getInterest4())%></td>
            <td><%= String.valueOf(c.getPhone())%></td>
            <td><%= Integer.valueOf(c.getOrgid())%></td>
            <td><%= Integer.valueOf(c.getAdminId())%></td>
            <td><%= Integer.valueOf(c.getEventId())%></td>
        </tr>

        <%
        }
        %>

    </table>
</body>
</html>
