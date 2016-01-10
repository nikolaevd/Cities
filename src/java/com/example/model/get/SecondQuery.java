
package com.example.model.get;

import com.example.model.CitiesDB;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class SecondQuery {
    
    public static List<SecondObj> getData(String nationality){
        Connection connection = null;
        Statement statement = null;
        ResultSet resultSet = null;
        List<SecondObj> dataList = new ArrayList<>();
         
        try{
            connection = CitiesDB.getConnection();
            
            String sql = "SELECT c.city, c.year, c.area\n" +
                "FROM cities c\n" +
                    "JOIN population p ON c.id = p.city_id\n" +
                    "JOIN nationality n ON n.id = p.nationality_id\n" +
                "WHERE n.nationality = '" + nationality + "'";
            
            statement = connection.createStatement();
            resultSet = statement.executeQuery(sql);
            
            while(resultSet.next()){
                SecondObj data = new SecondObj();
                data.setCity(resultSet.getString("city"));
                data.setYear(resultSet.getInt("year"));
                data.setArea(resultSet.getInt("area"));
                dataList.add(data);
            }
            
            resultSet.close();
            statement.close();
            connection.close();
            
        }
        catch(SQLException e){
            e.printStackTrace();
        }
        catch(ClassNotFoundException e){
            e.printStackTrace();
        }
    
        return dataList;
    }
}
