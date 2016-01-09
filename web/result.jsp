<%@page import="com.example.model.FourthObj"%>
<%@page import="com.example.model.ThirdObj"%>
<%@page import="com.example.model.SecondObj"%>
<%@page import="com.example.model.FirstObj"%>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 

<html>
    <body>
        <h1 align="center">Final Data JSP View</h1>
        <p>
        <%
        
        List<FirstObj> first = (List<FirstObj>) request.getAttribute("first");
        if(first!=null){
            for(FirstObj data : first){  
                out.println("<br/>" + data.getCity()+ " " + data.getLanguage()+ " " + data.getNationality() + " " + data.getPopulation());  
            }  
        }
        
        List<SecondObj> second = (List<SecondObj>) request.getAttribute("second");
        if(second!=null){
            for(SecondObj data : second){  
                out.println("<br/>" + data.getCity()+ " " + data.getYear()+ " " + data.getArea() + " " + data.getNationality());  
            }  
        }
        
        List<ThirdObj> third = (List<ThirdObj>) request.getAttribute("third");
        if(third!=null){
            for(ThirdObj data : third){  
                out.println("<br/>" + data.getCity()+ " " + data.getYear()+ " " + data.getArea() + " " + data.getPopulation());  
            }  
        }
        
        List<FourthObj> fourth = (List<FourthObj>) request.getAttribute("fourth");
        if(fourth!=null){
            for(FourthObj data : fourth){  
                out.println("<br/>" + data.getNationality() + " " + data.getIncipience());  
            }  
        }
        
        %>
        </p>
    </body>
</html>