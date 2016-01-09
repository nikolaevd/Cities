
package com.example.conroller;

import com.example.model.ThirdQuery;
import java.io.IOException;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ThirdQueryHandler extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        
        List result = ThirdQuery.getData(request.getParameter("population"));
        
        request.setAttribute("third", result);
        RequestDispatcher view = request.getRequestDispatcher("result.jsp");
        view.forward(request, response); 

    }

}
