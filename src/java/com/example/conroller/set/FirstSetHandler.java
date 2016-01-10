
package com.example.conroller.set;

import com.example.model.set.FirstSet;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class FirstSetHandler extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        
        FirstSet.setData(request.getParameter("id"), request.getParameter("city"), request.getParameter("year"), request.getParameter("area"));
        
        request.setAttribute("firstSet", "true");
        RequestDispatcher view = request.getRequestDispatcher("result.jsp");
        view.forward(request, response);    
    }
    
}
