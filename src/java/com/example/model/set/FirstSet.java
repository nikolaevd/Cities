
package com.example.model.set;

import com.example.model.CitiesDB;
import java.sql.*;

public class FirstSet {
    
    public static int setData(String id, String city, String year, String area){
        
        Connection connection = null;
        Statement statement = null;
        
        try{
            connection = CitiesDB.getConnection();
            
            String sql = "INSERT INTO cities (id, city, year, area) VALUES (\n" +
                Integer.parseInt(id) + ", '" + city + "', " + Integer.parseInt(year) + ", " + Integer.parseInt(area) + ")";
            
            statement = connection.createStatement();
            statement.execute(sql);
            
            statement.close();
            connection.close();
            
            return 1;
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
        
        return 0;
        
    }
    
}
