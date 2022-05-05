package com.uh.rachel.util;

import com.uh.rachel.util.tableClasses.membersTable;

import java.sql.*;

public class CheckLogin {
    public membersTable checkLogin(String email, String password) throws SQLException, ClassNotFoundException {
        Class.forName("com.mysql.cj.jdbc.Driver");
        String CONNECTION="jdbc:mysql://newdb.cnzbit2ghk9h.us-east-2.rds.amazonaws.com:3306/sunlight";
        String USER="admin";
        String PASSWORD="sunlight";
        Connection conn = DriverManager.getConnection(CONNECTION, USER, PASSWORD);

        String sql = "SELECT * FROM sunlight.members WHERE email = ? and pass = ?";
        PreparedStatement ps = conn.prepareStatement(sql);
        ps.setString(1, email);
        ps.setString(2, password);

        ResultSet result = ps.executeQuery();

        membersTable member = null;

        if (result.next()){
            member = new membersTable();
            member.setEmail(email);

        }

        conn.close();

        return member;
    }
}
