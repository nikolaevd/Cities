
package com.example.conroller.set;

import com.example.model.set.FourthSet;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class FourthSetHandler extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        
        int fourthSet = FourthSet.setData(request.getParameter("id"), request.getParameter("language"));
        
        request.setAttribute("fourthSet", fourthSet);
        RequestDispatcher view = request.getRequestDispatcher("result.jsp");
        view.forward(request, response);
        
    }

}
