
package com.example.model.set;

import com.example.model.CitiesDB;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

public class FifthSet {
    
    public static int setData(String nationality_id, String language_id){
        
        Connection connection = null;
        Statement statement = null;
        
        try{
            connection = CitiesDB.getConnection();
            
            String sql = "INSERT INTO national_languages (nationality_id, language_id)\n" +
                "VALUES (" + Integer.parseInt(nationality_id) + ", " + Integer.parseInt(language_id) + ")";
            
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
