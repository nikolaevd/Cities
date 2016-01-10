
package com.example.model.set;

import com.example.model.CitiesDB;
import java.sql.*;

public class SecondSet {
    
    public static int setData(String id, String nationality, String incipience){
        
        Connection connection = null;
        Statement statement = null;
        
        try{
            connection = CitiesDB.getConnection();
            
            String sql = "INSERT INTO nationality (id, nationality, incipience)\n " +
                    " VALUES (" + Integer.parseInt(id) + ", '" + nationality + "', " + incipience + ");";
            
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
