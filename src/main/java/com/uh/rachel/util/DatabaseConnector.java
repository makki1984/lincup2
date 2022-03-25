package com.uh.rachel.util;

import java.sql.Connection;
import java.sql.DriverManager;
import static com.uh.rachel.util.DatabaseConnector.USERNAME;

public class DatabaseConnector {
    static String DRIVER = "com.mysql.cj.jdbc.Driver";
    static String CONNECTION_URL = "jdbc:mysql://wordpress.cnzbit2ghk9h.us-east-2.rds.amazonaws.com:3306/sunlight";
    static String USERNAME="admin";
    static String PASSWORD="sunlight";
}