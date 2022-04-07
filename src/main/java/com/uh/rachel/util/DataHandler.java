package com.uh.rachel.util;

import com.uh.rachel.util.tableClasses.*;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.sql.Date;
import java.util.Vector;

public class DataHandler {

   public static Vector<membersTable> getMembers() {
        Vector<membersTable> v = new Vector<>();
        try {
            Connection connection = ConnectionProvider.getConnection();
            PreparedStatement statement = connection.prepareStatement("SELECT * FROM members");
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
            PreparedStatement statement = connection.prepareStatement("SELECT * FROM events");
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
            PreparedStatement statement = connection.prepareStatement("SELECT * FROM eventSchedule");
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
            PreparedStatement statement = connection.prepareStatement("SELECT * FROM requests");
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
            PreparedStatement statement = connection.prepareStatement("SELECT * FROM studentOrg");
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
            PreparedStatement statement = connection.prepareStatement("SELECT * FROM tasks");
            ResultSet result = statement.executeQuery();

            while (result.next()) {
                v.add(new tasksTable(
                        result.getInt("taskId"),
                        result.getString("taskName"),
                        result.getDate("taskDate"),
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
            PreparedStatement statement = connection.prepareStatement("SELECT * FROM taskSteps");
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




    //Makki 04/05/2022 pending//

    public static void deleteEventsRowByID(int rowToDelete) {
        try {
            Connection conn = ConnectionProvider.getConnection();
            PreparedStatement ps = conn.prepareStatement("DELETE FROM members WHERE eventId=?");
            ps.setInt(1, rowToDelete);
            ps.executeUpdate();
            ps.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }



    public static void insertEventsRowByID( int eventIdInput, String eventNameInput, String eventTypeInput, String eventCityInput, String eventStateInput, String eventDateInput, String interest1Input, String interest2Input, String interest3Input, String interest4Input) {
        try {
            Connection conn = ConnectionProvider.getConnection();
            PreparedStatement ps = conn.prepareStatement("INSERT INTO events ( eventId, eventName, eventType, eventCity, eventState, eventDate, interest1, interest2, interest3, interest4) VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?)");
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


    public static void updateEventsRowByID(int eventIdInput, String eventNameInput, String eventTypeInput, String eventCityInput, String eventStateInput, String eventDateInput, String interest1Input, String interest2Input, String interest3Input, String interest4Input) {
        try {
            Connection conn = ConnectionProvider.getConnection();
            PreparedStatement ps = conn.prepareStatement("UPDATE events SET eventName=?, eventType=?, eventCity=?, eventState=?, eventDate=?, interest1=?, interest2=?, interest3=?, interest4=?  WHERE eventId=?");
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













}
