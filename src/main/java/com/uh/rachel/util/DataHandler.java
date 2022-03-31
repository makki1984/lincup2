package com.uh.rachel.util;

import com.uh.rachel.util.reportClasses.*;
import com.uh.rachel.util.tableClasses.*;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.Date;
import java.util.Vector;

public class DataHandler {
    //Rachel
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

    public static void insertMembersRowByID(int memberIdInput, String firstNameInput, String lastNameInput, String dobInput, String emailInput, String passInput, String highSchoolInput, String afterGraduationInput, String churchNameInput, String interest1Input, String interest2Input, String interest3Input, String interest4Input, String phoneInput, int orgIdInput, int adminIdInput, int eventIdInput) {
        try {
            Connection conn = ConnectionProvider.getConnection();
            PreparedStatement preparedStatement = conn.prepareStatement("INSERT INTO membersTable (memberid, firstName, lastName, dob, email, pass, highSchool, afterGraduation, churchName, interest1, interest2, interest3, interest4, phone, orgId, adminId, eventId) VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)");
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

    public static void updateMembersRowByID(int memberIdInput, String firstNameInput, String lastNameInput, String dobInput, String emailInput, String passInput, String highSchoolInput, String afterGraduationInput, String churchNameInput, String interest1Input, String interest2Input, String interest3Input, String interest4Input, String phoneInput, int orgIdInput, int adminIdInput, int eventIdInput) {
        try {
            Connection conn = ConnectionProvider.getConnection();
            PreparedStatement preparedStatement = conn.prepareStatement("UPDATE membersTable SET firstName=?, lastName=?, dob=?, email=?, pass=?, highSchool=?, afterGraduation=?, churchName=?, interest1=?, interest2=?, interest3=?, interest4=?, phone=?, orgId=?, adminId=?, eventId=? WHERE memberid=?");
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

    public static void deleteMembersRowByID(int memberIdDelete) {
        try {
            Connection conn = ConnectionProvider.getConnection();
            PreparedStatement preparedStatement = conn.prepareStatement("DELETE FROM members WHERE memberId=?");
            preparedStatement.setInt(1, memberIdDelete);
            preparedStatement.executeUpdate();
            preparedStatement.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}