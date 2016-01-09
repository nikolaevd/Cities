package com.example.model;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class FirstQuery{
    
    public static List<FirstObj> getData(String city, String language){
        Connection connection = null;
        Statement statement = null;
        ResultSet resultSet = null;
        List<FirstObj> dataList = new ArrayList<>();
         
        try{
            connection = CitiesDB.getConnection();
            
            String sql = "SELECT c.city, n.nationality, p.population\n" +
            "FROM nationality n\n" +
                "JOIN population p ON n.id = p.nationality_id\n" +
                "JOIN cities c ON c.id = p.city_id\n" +
                "JOIN national_languages nl ON n.id = nl.nationality_id\n" +
                "JOIN languages l ON l.id = nl.language_id\n" +
            "WHERE c.city = '" + city + "' AND l.language = '" + language + "'";
            
            statement = connection.createStatement();
            resultSet = statement.executeQuery(sql);
            
            while(resultSet.next()){
                FirstObj data = new FirstObj();
                data.setCity(resultSet.getString("city"));
                data.setNationality(resultSet.getString("nationality"));
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
