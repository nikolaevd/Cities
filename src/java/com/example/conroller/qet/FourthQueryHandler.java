
package com.example.conroller.qet;

import com.example.model.get.FourthQuery;
import java.io.IOException;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class FourthQueryHandler extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        
        List result = FourthQuery.getData(request.getParameter("city"));
        
        request.setAttribute("fourth", result);
        RequestDispatcher view = request.getRequestDispatcher("result.jsp");
        view.forward(request, response); 
        
    }

}
