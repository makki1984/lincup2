package com.uh.rachel.util;

//import com.uh.rachel.util.reportClasses.*;
//import com.uh.rachel.util.tableClasses.*;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.Date;
import java.util.Vector;

public class DataHandler {
    //Ramiro
   /*public static Vector<existingConditionsMedicationsTable> getExistingConditionsMedications() {
        Vector<existingConditionsMedicationsTable> v = new Vector<>();
        try {
            Connection connection = ConnectionProvider.getConnection();
            PreparedStatement statement = connection.prepareStatement("SELECT * FROM existingConditionsMedications");
            ResultSet result = statement.executeQuery();

            while (result.next()) {
                v.add(new existingConditionsMedicationsTable(
                        result.getInt("customerNumber"),
                        result.getString("other")));
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return v;
    }*/
}
