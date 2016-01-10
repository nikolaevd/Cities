
package com.example.model.set;

import com.example.model.CitiesDB;
import java.sql.*;

public class FirstSet {
    
    public static boolean setData(String id, String city, String year, String area){
        
        Connection connection = null;
        Statement statement = null;
        boolean isSet = false;
        
        try{
            connection = CitiesDB.getConnection();
            
            String sql = "INSERT INTO cities (id, city, year, area) VALUES (\n" +
                Integer.parseInt(id) + ", '" + city + "', " + Integer.parseInt(year) + ", " + Integer.parseInt(area) + ")";
            
            statement = connection.createStatement();
            isSet = statement.execute(sql);
            
            statement.close();
            connection.close();
        }
        catch(SQLException e){
            e.printStackTrace();
        }
        catch(ClassNotFoundException e){
            e.printStackTrace();
        }
        catch(Exception e){
            e.printStackTrace();
        }
        
        return isSet;
        
    }
    
}
