package com.uh.rachel.util;

import com.uh.rachel.util.tableClasses.membersTable;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.*;

public class RegistrationModel {
    public static long nextPk(){
        String DRIVER="com.mysql.cj.jdbc.Driver";
        String CONNECTION="jdbc:mysql://newdb.cnzbit2ghk9h.us-east-2.rds.amazonaws.com:3306/sunlight";
        String USER="admin";
        String PASSWORD="sunlight";
        Connection conn;
        long pk = 0;
        try {
            conn = DriverManager.getConnection(CONNECTION, USER, PASSWORD);
            PreparedStatement statement = conn.prepareStatement("select Max(memberid) from members");
            ResultSet rs = statement.executeQuery();
            while(rs.next()){
                pk = rs.getLong(1);
            }
        } catch (Exception e){
            e.printStackTrace();
        }
        return pk+1;
    }


    public static long addMember (membersTable member) {
        int i = 0;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        String CONNECTION="jdbc:mysql://newdb.cnzbit2ghk9h.us-east-2.rds.amazonaws.com:3306/sunlight";
        String USER="admin";
        String PASSWORD="sunlight";
        try {
            Connection conn = DriverManager.getConnection(CONNECTION, USER, PASSWORD);
            PreparedStatement statement = conn.prepareStatement("insert into sunlight.members (memberid, firstName, lastName, phone, dob, churchName, highSchool, afterGraduation, email, pass, interest1, interest2, interest3, interest4, orgId, adminId, eventId) values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
            statement.setLong(1, nextPk());
            statement.setString(2, member.getFirstName());
            statement.setString(3, member.getLastName());
            statement.setString(4, member.getPhone());
            statement.setDate(5, new java.sql.Date(member.getDob().getTime()));
            statement.setString(6, member.getChurchName());
            statement.setString(7, member.getHighSchool());
            statement.setString(8, member.getAfterGraduation());
            statement.setString(9, member.getEmail());
            statement.setString(10, member.getPass());
            statement.setString(11, member.getInterest1());
            statement.setString(12, member.getInterest2());
            statement.setString(13, member.getInterest3());
            statement.setString(14, member.getInterest4());
            statement.setInt(15, member.getOrgid());
            statement.setInt(16, member.getAdminId());
            statement.setInt(17, member.getEventId());

            i = statement.executeUpdate();

        } catch (Exception e) {
            e.printStackTrace();
        }
        return i;
    }
}
