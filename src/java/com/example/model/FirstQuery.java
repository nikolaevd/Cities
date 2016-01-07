package com.example.model;

import java.util.List;
import java.sql.*;
import java.util.ArrayList;

public class FirstQuery{
    
    public List<FirstData> getData(String city, String language){
        Connection connection = null;
        String sql = null;
        ResultSet resultSet = null;
        List<FirstData> dataList = new ArrayList<>();
         
        try{
            connection = CitiesDB.getConnection();
            
            sql = "SELECT c.city, n.nationality, p.population, l.language\n" +
            "FROM nationality n\n" +
                "JOIN population p ON n.id = p.nationality_id\n" +
                "JOIN cities c ON c.id = p.city_id\n" +
                "JOIN national_languages nl ON n.id = nl.nationality_id\n" +
                "JOIN languages l ON l.id = nl.language_id\n" +
            "WHERE c.city = '" + city + "' AND l.language = '" + language + "'";
            
            resultSet = connection.createStatement().executeQuery(sql);
            
            while(resultSet.next()){
                FirstData data = new FirstData();
                data.setCity(resultSet.getString("city"));
                data.setLanguage(resultSet.getString("language"));
                data.setNationality(resultSet.getString("nationality"));
                data.setPopulation(resultSet.getInt("population"));
                dataList.add(data);
            }
            
            resultSet.close();
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