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
            for(FirstObj data : first){  
                out.println("<br/><b>Город:</b> " + data.getCity()+ "; <b>национальность:</b> " + data.getNationality() + "; <b>население:</b> " + data.getPopulation());  
            }  
        }
        
        List<SecondObj> second = (List<SecondObj>) request.getAttribute("second");
        if(second!=null){
            for(SecondObj data : second){  
                out.println("<br/><b>Город:</b> " + data.getCity()+ "; <b>год основания:</b> " + data.getYear()+ "; <b>площадь кв.км.:</b> " + data.getArea());  
            }  
        }
        
        List<ThirdObj> third = (List<ThirdObj>) request.getAttribute("third");
        if(third!=null){
            for(ThirdObj data : third){  
                out.println("<br/><b>Город:</b> " + data.getCity()+ "; <b>год основания:</b> " + data.getYear()+ "; <b>площадь кв.км.:</b> " + data.getArea());  
            }  
        }
        
        List<FourthObj> fourth = (List<FourthObj>) request.getAttribute("fourth");
        if(fourth!=null){
            for(FourthObj data : fourth){  
                out.println("<br/><b>национальность:</b> " + data.getNationality() + "; <b>век зарождения государственности:</b> " + data.getIncipience() + "; <b>людей проживает в заданном городе:</b> " + data.getPopulation());  
            }  
        }
        
        String firstSet = (String) request.getAttribute("firstSet");
        if(firstSet!=null){
            out.println("Данные успешно добавлены в базу.");
        }
        
        %>
        </p>
    </body>
</html>