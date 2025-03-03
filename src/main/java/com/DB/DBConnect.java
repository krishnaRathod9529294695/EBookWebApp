package com.DB;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnect {
	
    private static Connection conn = null;

    public static Connection getConn() {
        try {
            // Load MySQL JDBC Driver
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Establish Connection (Assign it to 'conn')
            conn = DriverManager.getConnection("jdbc:mysql:///ebook", "root", "killer");

        } catch (Exception e) {
            e.printStackTrace();
        }
        return conn;
    }
}

