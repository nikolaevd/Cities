package com.example.model;

import java.sql.*;

public class CitiesDB {
    
    static final String DB_URL = "jdbc:postgresql://localhost:5432/cities";
    static final String USER = "postgres";
    static final String PASS = "Iqex1234";
    
    public static Connection getConnection() throws SQLException, Exception {
        
        String driverName = "org.postgresql.Driver";
        Class.forName(driverName);  
        Connection connection = DriverManager.getConnection(DB_URL, USER, PASS);
        return connection;
       
    }
    
}
