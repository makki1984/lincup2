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
}
