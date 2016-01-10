
package com.example.model.set;

import com.example.model.CitiesDB;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

public class ThirdSet {
    
     public static int setData(String nationality_id, String city_id, String population){
        
        Connection connection = null;
        Statement statement = null;
        
        try{
            connection = CitiesDB.getConnection();
            
            String sql = "INSERT INTO population (nationality_id, city_id, population)\n" +
                "VALUES (" + Integer.parseInt(nationality_id)+ ", " + Integer.parseInt(city_id) + ", " + Integer.parseInt(population) + ")";
            
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
