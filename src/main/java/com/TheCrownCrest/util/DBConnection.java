package com.TheCrownCrest.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {
    // Database credentials
    private static final String URL = "jdbc:mysql://localhost:3306/thecrown"; // Replace with your database name
    private static final String USER = "root"; // Replace with your database username
    private static final String PASSWORD = "Hsp@12345"; // Replace with your database password

    public static Connection getConnection() {
        Connection connection = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver"); // Ensure the correct driver is loaded
            connection = DriverManager.getConnection(URL, USER, PASSWORD);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
            // Handle exception - JDBC Driver not found
        } catch (SQLException e) {
            e.printStackTrace();
            // Handle exception - SQL Connection Error
        }
        return connection;
    }
}
