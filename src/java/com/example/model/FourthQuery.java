
package com.example.model;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class FourthQuery {
    
    public static List<FourthObj> getData(String city){
        Connection connection = null;
        Statement statement = null;
        ResultSet resultSet = null;
        List<FourthObj> dataList = new ArrayList<>();
         
        try{
            connection = CitiesDB.getConnection();
            
            String sql = "SELECT n.nationality, n.incipience, p.population\n" +
                "FROM nationality n\n" +
                    "JOIN population p ON n.id = p.nationality_id\n" +
                    "JOIN cities c ON c.id = p.city_id\n" +
                "WHERE n.incipience = (SELECT MIN(n.incipience) FROM nationality n) AND c.city = '" + city + "'";

            statement = connection.createStatement();
            resultSet = statement.executeQuery(sql);
            
            while(resultSet.next()){
                FourthObj data = new FourthObj();
                data.setNationality(resultSet.getString("nationality"));
                data.setIncipience(resultSet.getInt("incipience"));
                data.setPopulation(resultSet.getInt("population"));
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
