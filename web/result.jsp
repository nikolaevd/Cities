<%@page import="com.example.model.get.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 

<html>
    <body>
        <p>
        <%
        
        List<FirstObj> first = (List<FirstObj>) request.getAttribute("first");
        if(first!=null){
            if(first.size() > 0){
                for(FirstObj data : first){  
                    out.println("<br/><b>Город:</b> " + data.getCity()+ "; <b>национальность:</b> " + data.getNationality() + "; <b>население:</b> " + data.getPopulation());  
                }  
            }
            else{
                out.println("Не удалось выполнить запрос. Убедитесь в корректности вводимых данных.");
            }            
        }
        
        List<SecondObj> second = (List<SecondObj>) request.getAttribute("second");
        if(second!=null){
            if(second.size() > 0){
                for(SecondObj data : second){  
                    out.println("<br/><b>Город:</b> " + data.getCity()+ "; <b>год основания:</b> " + data.getYear()+ "; <b>площадь кв.км.:</b> " + data.getArea());  
                }  
            }
            else{
                out.println("Не удалось выполнить запрос. Убедитесь в корректности вводимых данных.");
            }      
        }
        
        List<ThirdObj> third = (List<ThirdObj>) request.getAttribute("third");
        if(third!=null){
            if(third.size() > 0){
                for(ThirdObj data : third){  
                    out.println("<br/><b>Город:</b> " + data.getCity()+ "; <b>год основания:</b> " + data.getYear()+ "; <b>площадь кв.км.:</b> " + data.getArea());  
                }  
            }
            else{
                out.println("Не удалось выполнить запрос. Убедитесь в корректности вводимых данных.");
            }
        }
        
        List<FourthObj> fourth = (List<FourthObj>) request.getAttribute("fourth");
        if(fourth!=null){
            if(fourth.size() > 0){
                for(FourthObj data : fourth){  
                    out.println("<br/><b>национальность:</b> " + data.getNationality() + "; <b>век зарождения государственности:</b> " + data.getIncipience() + "; <b>людей проживает в заданном городе:</b> " + data.getPopulation());  
                }  
            }
            else{
                out.println("Не удалось выполнить запрос. Убедитесь в корректности вводимых данных.");
            }
        }
        
        Integer firstSet = (Integer) request.getAttribute("firstSet");
        if(firstSet!=null){
            if(firstSet == 1){
                out.println("Данные успешно добавлены в базу.");
            }
            else{
                out.println("Не удалось добавить данные. Убедитесь в корректности вводимых данных.");
            }  
        }
        
        Integer secondSet = (Integer) request.getAttribute("secondSet");
        if(secondSet!=null){
            if(secondSet == 1){
                out.println("Данные успешно добавлены в базу.");
            }
            else{
                out.println("Не удалось добавить данные. Убедитесь в корректности вводимых данных.");
            }  
        }
        
        Integer thirdSet = (Integer) request.getAttribute("thirdSet");
        if(thirdSet!=null){
            if(thirdSet == 1){
                out.println("Данные успешно добавлены в базу.");
            }
            else{
                out.println("Не удалось добавить данные. Убедитесь в корректности вводимых данных.");
            }  
        }
        
        Integer fourthSet = (Integer) request.getAttribute("fourthSet");
        if(fourthSet!=null){
            if(fourthSet == 1){
                out.println("Данные успешно добавлены в базу.");
            }
            else{
                out.println("Не удалось добавить данные. Убедитесь в корректности вводимых данных.");
            }  
        }
        
        Integer fifthSet = (Integer) request.getAttribute("fifthSet");
        if(fifthSet!=null){
            if(fifthSet == 1){
                out.println("Данные успешно добавлены в базу.");
            }
            else{
                out.println("Не удалось добавить данные. Убедитесь в корректности вводимых данных.");
            }  
        }
        
        %>
        </p>
    </body>
</html>