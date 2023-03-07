/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Student
 */
public class CalculatorServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //get values from the user
        Integer num1 = Integer.parseInt(request.getParameter("num1"));
        Integer num2 = Integer.parseInt(request.getParameter("num2"));
        Character op = (request.getParameter("operator")).charAt(0);
        
        //Perform Arithmetic operations
        ArithmeticOperator ap = new ArithmeticOperator();
        String result = ap.getResult(num1,num2,op);
        
        //RequestDispatcher
        RequestDispatcher disp = request.getRequestDispatcher("output.jsp");
        disp.forward(request, response);
    }
}
