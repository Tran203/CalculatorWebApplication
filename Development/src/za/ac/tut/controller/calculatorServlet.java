package za.ac.tut.controller;

import za.ac.tut.model.Calculation;
import java.io.IOException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.ServletException;
import javax.servlet.RequestDispatcher;

public class calculatorServlet extends HttpServlet{
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException,ServletException{
		//get values entered by the user
		Integer num1 = Integer.parseInt(request.getParameter("num1"));
		Integer num2 = Integer.parseInt(request.getParameter("num2"));
		//cal the method to perform the calculations
		Calculation cal = new Calculation();
		Integer result = cal.Add(num1,num2);
		
		//set Attributes *make it easy to use them again
		request.setAttribute("num1", num1);
		request.setAttribute("num2", num2);
		request.setAttribute("result", result);
		
		//allow data to  be display back to the user *RequestDispatcher
		RequestDispatcher disp = request.getRequestDispatcher("output_values.jsp");
		//forward
		disp.forward(request,response);	
	}
}