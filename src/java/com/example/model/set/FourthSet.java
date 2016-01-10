
package com.example.model.set;

import com.example.model.CitiesDB;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

public class FourthSet {
    
    public static int setData(String id, String language){
        
        Connection connection = null;
        Statement statement = null;
        
        try{
            connection = CitiesDB.getConnection();
            
            String sql = "INSERT INTO languages (id, language)\n" +
                "VALUES (" + Integer.parseInt(id) + ", '" + language + "')";
            
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
