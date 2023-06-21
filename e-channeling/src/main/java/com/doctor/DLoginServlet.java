package com.doctor;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/DLoginServlet")
public class DLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");

		HttpSession session = request.getSession();

		String email = request.getParameter("demail");
		String password = request.getParameter("pass");
		boolean isTrue;
		
		session.setAttribute("email", email);
		isTrue = DoctorDBUtil.docvalidate(email, password);
		
		if (isTrue == true) {
			 
			
			 /* List<Doctor> docDetails = DoctorDBUtil.getdoctor(email);
			  request.setAttribute("docDetails", docDetails);*/
			 
			  
			  RequestDispatcher dis = request.getRequestDispatcher("dindex.jsp");
			  dis.forward(request, response);
			  

                }
			 

		
			  else {
			  
			  out.println("<script type='text/javascript'>");
			  out.println("alert('Your are not rejister user or Your username or password is incorrect');");
			  out.println("location='Dlogin.jsp'"); out.println("</script>");
			  
			   
			  
			  }
	}

}
