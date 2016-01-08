<%@ page import="java.util.*" %>
<%@ page import="com.example.model.FirstData" %> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 

<html>
    <body>
        <h1 align="center">Final Data JSP View</h1>
        <p>
        <%

        List<FirstData> styles = (List<FirstData>) request.getAttribute("styles");
        if(styles!=null){
            for(FirstData data : styles){  
                out.println("<br/>" + data.getCity()+ " " + data.getLanguage()+ " " + data.getNationality() + " " + data.getPopulation());  
            }  
        } 
        %>
        </p>
    </body>
</html>