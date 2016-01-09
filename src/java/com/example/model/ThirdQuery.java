
package com.example.model;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class ThirdQuery {
    
    public static List<ThirdObj> getData(String population){
        Connection connection = null;
        Statement statement = null;
        ResultSet resultSet = null;
        List<ThirdObj> dataList = new ArrayList<>();
         
        try{
            connection = CitiesDB.getConnection();
            
            String sql = "SELECT c.city, c.year, c.area, SUM(p.population) as population \n" +
                "FROM population p\n" +
                    "JOIN nationality n ON n.id = p.nationality_id\n" +
                    "JOIN cities c ON c.id = p.city_id\n" +
                "GROUP BY c.city, c.year, c.area\n" +
                    "HAVING SUM(p.population) > " + Integer.parseInt(population);
            
            statement = connection.createStatement();
            resultSet = statement.executeQuery(sql);
            
            while(resultSet.next()){
                ThirdObj data = new ThirdObj();
                data.setCity(resultSet.getString("city"));
                data.setYear(resultSet.getInt("year"));
                data.setArea(resultSet.getInt("area"));
                data.setArea(resultSet.getInt("population"));
                dataList.add(data);
            }
            
            resultSet.close();
            statement.close();
            connection.close();
            
        }
        catch(SQLException e){
            e.printStackTrace();
        }
        catch(Exception e){
            e.printStackTrace();
        }
    
        return dataList;
    }
     
}
