package com.uh.rachel.util;

import com.uh.rachel.util.reportClasses.*;
import com.uh.rachel.util.tableClasses.*;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Vector;

public class DataHandler {
//Read Operation (CRUD)
    public static Vector<membersTable> getMembers() {
        Vector<membersTable> v = new Vector<>();
        try {
            Connection connection = ConnectionProvider.getConnection();
            PreparedStatement statement = connection.prepareStatement("SELECT * FROM sunlight.members");
            ResultSet result = statement.executeQuery();

            while (result.next()) {
                v.add(new membersTable(
                        result.getInt("memberid"),
                        result.getString("firstName"),
                        result.getString("lastName"),
                        result.getDate("dob"),
                        result.getString("email"),
                        result.getString("pass"),
                        result.getString("highSchool"),
                        result.getString("afterGraduation"),
                        result.getString("churchName"),
                        result.getString("interest1"),
                        result.getString("interest2"),
                        result.getString("interest3"),
                        result.getString("interest4"),
                        result.getString("phone"),
                        result.getInt("orgId"),
                        result.getInt("adminId"),
                        result.getInt("eventId")));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return v;
    }

    public static Vector<eventsTable> getEvents() {
        Vector<eventsTable> v = new Vector<>();
        try {
            Connection connection = ConnectionProvider.getConnection();
            PreparedStatement statement = connection.prepareStatement("SELECT * FROM sunlight.events");
            ResultSet result = statement.executeQuery();

            while (result.next()) {
                v.add(new eventsTable(
                        result.getInt("eventId"),
                        result.getString("eventName"),
                        result.getString("eventType"),
                        result.getString("eventCity"),
                        result.getString("eventState"),
                        result.getString("eventDate"),
                        result.getString("interest1"),
                        result.getString("interest2"),
                        result.getString("interest3"),
                        result.getString("interest4")));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return v;
    }

    public static Vector<eventScheduleTable> getEventSchedule() {
        Vector<eventScheduleTable> v = new Vector<>();
        try {
            Connection connection = ConnectionProvider.getConnection();
            PreparedStatement statement = connection.prepareStatement("SELECT * FROM sunlight.eventSchedule");
            ResultSet result = statement.executeQuery();

            while (result.next()) {
                v.add(new eventScheduleTable(
                        result.getInt("eventScheduleId"),
                        result.getInt("eventId"),
                        result.getInt("memberid"),
                        result.getString("eventName"),
                        result.getString("eventType")));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return v;
    }

    public static Vector<requestsTable> getRequestsTable() {
        Vector<requestsTable> v = new Vector<>();
        try {
            Connection connection = ConnectionProvider.getConnection();
            PreparedStatement statement = connection.prepareStatement("SELECT * FROM sunlight.requests");
            ResultSet result = statement.executeQuery();

            while (result.next()) {
                v.add(new requestsTable(
                        result.getInt("requestId"),
                        result.getInt("orgId"),
                        result.getInt("memberid")));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return v;
    }

    public static Vector<studentOrgTable> getStudentOrg() {
        Vector<studentOrgTable> v = new Vector<>();
        try {
            Connection connection = ConnectionProvider.getConnection();
            PreparedStatement statement = connection.prepareStatement("SELECT * FROM sunlight.studentOrg");
            ResultSet result = statement.executeQuery();

            while (result.next()) {
                v.add(new studentOrgTable(
                        result.getInt("orgId"),
                        result.getString("city"),
                        result.getString("state"),
                        result.getString("university"),
                        result.getString("orgName"),
                        result.getString("interest1"),
                        result.getString("interest2"),
                        result.getString("interest3"),
                        result.getString("interest4")));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return v;
    }

    public static Vector<tasksTable> getTasks() {
        Vector<tasksTable> v = new Vector<>();
        try {
            Connection connection = ConnectionProvider.getConnection();
            PreparedStatement statement = connection.prepareStatement("SELECT * FROM sunlight.tasks");
            ResultSet result = statement.executeQuery();

            while (result.next()) {
                v.add(new tasksTable(
                        result.getInt("taskId"),
                        result.getString("taskName"),
                        result.getString("taskDate"),
                        result.getString("description"),
                        result.getInt("memberid"),
                        result.getInt("eventId"),
                        result.getString("status")));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return v;
    }

    public static Vector<taskStepsTable> getTaskSteps() {
        Vector<taskStepsTable> v = new Vector<>();
        try {
            Connection connection = ConnectionProvider.getConnection();
            PreparedStatement statement = connection.prepareStatement("SELECT * FROM sunlight.taskSteps");
            ResultSet result = statement.executeQuery();

            while (result.next()) {
                v.add(new taskStepsTable(

                        result.getInt("taskStepsId"),
                        result.getInt("taskId"),
                        result.getString("taskName"),
                        result.getInt("memberid")));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return v;
    }
//End of Read Operations (CRUD)

//Create Operations (CRUD)
    public static void insertMembersRowByID(int memberIdInput, String firstNameInput, String lastNameInput, String dobInput, String emailInput, String passInput, String highSchoolInput, String afterGraduationInput, String churchNameInput, String interest1Input, String interest2Input, String interest3Input, String interest4Input, String phoneInput, int orgIdInput, int adminIdInput, int eventIdInput) {
        try {
            Connection conn = ConnectionProvider.getConnection();
            PreparedStatement preparedStatement = conn.prepareStatement("INSERT INTO sunlight.members (memberid, firstName, lastName, dob, email, pass, highSchool, afterGraduation, churchName, interest1, interest2, interest3, interest4, phone, orgId, adminId, eventId) VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)");
            preparedStatement.setInt(1, memberIdInput);
            preparedStatement.setString(2, firstNameInput);
            preparedStatement.setString(3, lastNameInput);
            preparedStatement.setString(4, dobInput);
            preparedStatement.setString(5, emailInput);
            preparedStatement.setString(6, passInput);
            preparedStatement.setString(7, highSchoolInput);
            preparedStatement.setString(8, afterGraduationInput);
            preparedStatement.setString(9, churchNameInput);
            preparedStatement.setString(10, interest1Input);
            preparedStatement.setString(11, interest2Input);
            preparedStatement.setString(12, interest3Input);
            preparedStatement.setString(13, interest4Input);
            preparedStatement.setString(14, phoneInput);
            preparedStatement.setInt(15, orgIdInput);
            preparedStatement.setInt(16, adminIdInput);
            preparedStatement.setInt(17, eventIdInput);

            preparedStatement.executeUpdate();
            preparedStatement.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static void insertEventsRowByID( int eventIdInput, String eventNameInput, String eventTypeInput, String eventCityInput, String eventStateInput, String eventDateInput, String interest1Input, String interest2Input, String interest3Input, String interest4Input) {
        try {
            Connection conn = ConnectionProvider.getConnection();
            PreparedStatement ps = conn.prepareStatement("INSERT INTO sunlight.events ( eventId, eventName, eventType, eventCity, eventState, eventDate, interest1, interest2, interest3, interest4) VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?)");
            ps.setInt(1, eventIdInput);
            ps.setString(2, eventNameInput);
            ps.setString(3, eventTypeInput);
            ps.setString(4, eventCityInput);
            ps.setString(5, eventStateInput);
            ps.setString(6, eventDateInput);
            ps.setString(7, interest1Input);
            ps.setString(8, interest2Input);
            ps.setString(9, interest3Input);
            ps.setString(10, interest4Input);
            ps.executeUpdate();
            ps.close();
        } catch (Exception e) {e.printStackTrace();}
    }

    public static void insertOrgsRowByID( int orgIdInput, String cityInput, String stateInput, String universityInput, String orgNameInput, String interest1Input, String interest2Input, String interest3Input, String interest4Input) {
        try {
            Connection conn = ConnectionProvider.getConnection();
            PreparedStatement ps = conn.prepareStatement("INSERT INTO sunlight.studentOrg ( orgId, city, state, university, orgName, interest1, interest2, interest3, interest4) VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?)");
            ps.setInt(1, orgIdInput);
            ps.setString(2, cityInput);
            ps.setString(3, stateInput);
            ps.setString(4, universityInput);
            ps.setString(5, orgNameInput);
            ps.setString(6, interest1Input);
            ps.setString(7, interest2Input);
            ps.setString(8, interest3Input);
            ps.setString(9, interest4Input);
            ps.executeUpdate();
            ps.close();
        } catch (Exception e) {e.printStackTrace();}
    }

    public static void insertTasksRowByID(int taskIdInput, String taskNameInput, String taskDateInput, String taskDescriptionInput, int MemberIdInput, int EventIdInput, String taskStatusInput){
        try {
            Connection conn = ConnectionProvider.getConnection();
            PreparedStatement ps = conn.prepareStatement("INSERT INTO sunlight.tasks (taskId, taskName, taskDate, description, memberid, eventId, status) VALUES(?, ?, ?, ?, ?, ?, ?)");
            ps.setInt(1, taskIdInput);
            ps.setString(2, taskNameInput);
            ps.setString(3, taskDateInput);
            ps.setString(4, taskDescriptionInput);
            ps.setInt(5, MemberIdInput);
            ps.setInt(6, EventIdInput);
            ps.setString(7, taskStatusInput);
            ps.executeUpdate();
            ps.close();
        } catch (Exception e) {e.printStackTrace();}
    }

    public static void insertRequestsRowByID(int orgIdInput, int memberIdInput) {
        try {
            Connection conn = ConnectionProvider.getConnection();
            PreparedStatement ps = conn.prepareStatement("INSERT INTO sunlight.requests (orgId, memberid) VALUES(?, ?)");
            ps.setInt(1, orgIdInput);
            ps.setInt(2, memberIdInput);
            ps.executeUpdate();
            ps.close();
        } catch (Exception e) {e.printStackTrace();}
    }


// End of Create Operations (CRUD)

// Update Operations (CRUD)
    public static void updateMembersRowByID(int memberIdInput, String firstNameInput, String lastNameInput, String dobInput, String emailInput, String passInput, String highSchoolInput, String afterGraduationInput, String churchNameInput, String interest1Input, String interest2Input, String interest3Input, String interest4Input, String phoneInput, int orgIdInput, int adminIdInput, int eventIdInput) {
        try {
            Connection conn = ConnectionProvider.getConnection();
            PreparedStatement ps = conn.prepareStatement("UPDATE sunlight.members SET firstName=?, lastName=?, dob=?, email=?, pass=?, highSchool=?, afterGraduation=?, churchName=?, interest1=?, interest2=?, interest3=?, interest4=?, phone=?, orgId=?, adminId=?, eventId=? WHERE memberid=?");
            ps.setInt(17, memberIdInput);
            ps.setString(1, firstNameInput);
            ps.setString(2, lastNameInput);
            ps.setString(3, dobInput);
            ps.setString(4, emailInput);
            ps.setString(5, passInput);
            ps.setString(6, highSchoolInput);
            ps.setString(7, afterGraduationInput);
            ps.setString(8, churchNameInput);
            ps.setString(9, interest1Input);
            ps.setString(10, interest2Input);
            ps.setString(11, interest3Input);
            ps.setString(12, interest4Input);
            ps.setString(13, phoneInput);
            ps.setInt(14, orgIdInput);
            ps.setInt(15, adminIdInput);
            ps.setInt(16, eventIdInput);

            ps.executeUpdate();
            ps.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static void updateEventsRowByID(int eventIdInput, String eventNameInput, String eventTypeInput, String eventCityInput, String eventStateInput, String eventDateInput, String interest1Input, String interest2Input, String interest3Input, String interest4Input) {
        try {
            Connection conn = ConnectionProvider.getConnection();
            PreparedStatement ps = conn.prepareStatement("UPDATE sunlight.events SET eventName=?, eventType=?, eventCity=?, eventState=?, eventDate=?, interest1=?, interest2=?, interest3=?, interest4=?  WHERE eventId=?");
            ps.setInt(10, eventIdInput);
            ps.setString(1, eventNameInput);
            ps.setString(2, eventTypeInput);
            ps.setString(3, eventCityInput);
            ps.setString(4, eventStateInput);
            ps.setString(5, eventDateInput);
            ps.setString(6, interest1Input);
            ps.setString(7, interest2Input);
            ps.setString(8, interest3Input);
            ps.setString(9, interest4Input);

            ps.executeUpdate();
            ps.close();
        } catch (Exception e) {e.printStackTrace();}
    }

    public static void updateRequestsRowByID(int requestIdInput, int orgIdInput, int memberIdInput) {
        try {
            Connection conn = ConnectionProvider.getConnection();
            PreparedStatement ps = conn.prepareStatement("UPDATE sunlight.requests SET requestId=?, orgId=? WHERE memberid=?");
            ps.setInt(1, requestIdInput);
            ps.setInt(2, orgIdInput);
            ps.setInt(3, memberIdInput);
        } catch (Exception e) {e.printStackTrace();}
    }

    public static void updateTasksRowByID(int taskIdInput, String taskNameInput, String taskDateInput, String taskDescriptionInput, int MemberIdInput, int EventIdInput, String taskStatusInput){
        try {
            Connection conn = ConnectionProvider.getConnection();
            PreparedStatement ps = conn.prepareStatement("UPDATE sunlight.tasks SET taskName=?, taskdate=?, description=?, memberid=?, eventId=?, status=? WHERE taskId=?");
            ps.setInt(7, taskIdInput);
            ps.setString(1, taskNameInput);
            ps.setString(2, taskDateInput);
            ps.setString(3, taskDescriptionInput);
            ps.setInt(4, MemberIdInput);
            ps.setInt(5, EventIdInput);
            ps.setString(6, taskStatusInput);
            ps.executeUpdate();
            ps.close();
        } catch (Exception e) {e.printStackTrace();}
    }
//End of Update Operations (CRUD)

//Delete Operations (CRUD)
    public static void deleteMembersRowByID(int memberIdDelete) {
        try {
            Connection conn = ConnectionProvider.getConnection();
            PreparedStatement ps = conn.prepareStatement("DELETE FROM sunlight.members WHERE memberid=?");
            ps.setInt(1, memberIdDelete);
            ps.executeUpdate();
            ps.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static void deleteEventsRowByID(int rowToDelete) {
        try {
            Connection conn = ConnectionProvider.getConnection();
            PreparedStatement ps = conn.prepareStatement("DELETE FROM sunlight.events WHERE eventId=?");
            ps.setInt(1, rowToDelete);
            ps.executeUpdate();
            ps.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static void deleteRequestsRowByID(int RequestIdDelete) {
        try {
            Connection conn = ConnectionProvider.getConnection();
            PreparedStatement ps = conn.prepareStatement("DELETE FROM sunlight.requests WHERE requestId=?");
            ps.setInt(1, RequestIdDelete);
            ps.executeUpdate();
            ps.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static void deleteTasksRowByID(int taskIdDelete){
        try {
            Connection conn = ConnectionProvider.getConnection();
            PreparedStatement ps = conn.prepareStatement("DELETE FROM sunlight.tasks WHERE taskId=?");
            ps.setInt(1, taskIdDelete);
            ps.executeUpdate();
            ps.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }


//End of Delete Operations (CRUD)

    public static Vector<report3> getReport3() {
        Vector<report3> v = new Vector<>();
        try {
            Connection connection = ConnectionProvider.getConnection();
            PreparedStatement statement = connection.prepareStatement("SELECT * FROM sunlight.requests JOIN sunlight.members ON requests.memberid = members.memberid join sunlight.studentOrg ON requests.orgId = studentOrg.orgId ");
            ResultSet result = statement.executeQuery();

            while (result.next()) {
                v.add(new report3(
                        new requestsTable(result.getInt("requestId")),
                        new membersTable(result.getInt("memberid"),
                        result.getString("firstname"),
                        result.getString("lastname")),
                        new studentOrgTable(result.getString("orgName"),
                                result.getString("university"),
                        result.getInt("orgId"))));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return v;
    }

    public static Vector<report1> getReport1() {
        Vector<report1> v = new Vector<>();
        try {
            Connection connection = ConnectionProvider.getConnection();
            PreparedStatement statement = connection.prepareStatement("SELECT * FROM sunlight.members JOIN sunlight.events ON events.eventId = members.eventId ");
            ResultSet result = statement.executeQuery();

            while (result.next()) {
                v.add(new report1(

                new membersTable(result.getInt("memberId"),
                        result.getString("firstName"),
                result.getString("lastName"),
                result.getDate("dob"),
                result.getString("email"),
                result.getString("pass"),
                result.getString("highSchool"),
                result.getString("afterGraduation"),
                result.getString("churchName"),
                result.getString("interest1"),
                        result.getString("interest2"),
                        result.getString("interest3"),
                        result.getString("interest4"),
                        result.getString("phone"),
                        result.getInt("orgId"),
                                result.getInt("adminId"),
                                        result.getInt("eventId")),
                new eventsTable(result.getInt("eventId"),
                        result.getString("eventName"))));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return v;
    }







}