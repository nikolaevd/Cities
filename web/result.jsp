<%@page import="mypackage.CitiesDB, java.sql.* "%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Result</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <% ResultSet rs = new CitiesDB().start(request.getParameter("city"), request.getParameter("language")); 
        while(rs.next()){
            rs.getString("city");
            rs.getString("nationality");
            rs.getInt("population");
            rs.getString("language");
        }%>
    </body>
</html>
