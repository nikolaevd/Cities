package com.example.conroller.qet;

import com.example.model.get.FirstQuery;
import java.util.List;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



public class FirstQueryHandler extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        
        List result = FirstQuery.getData(request.getParameter("city"), request.getParameter("language"));
        
        request.setAttribute("first", result);
        RequestDispatcher view = request.getRequestDispatcher("result.jsp");
        view.forward(request, response); 
        
    }

}
