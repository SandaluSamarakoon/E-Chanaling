package com.doctor;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//import com.doctor.DoctorDBUtil;


@WebServlet("/Doctorinsert")
public class Doctorinsert extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		String fname = request.getParameter("fname");
		String lname = request.getParameter("lname");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String specialization = request.getParameter("specialist");
		String qualification = request.getParameter("Qualification");
		String channelingfee = request.getParameter("Fee");
		String pssword = request.getParameter("psw");
		
		boolean isTrue;
		
		isTrue=DoctorDBUtil.insertdoctor(fname, lname, email, phone,specialization,qualification,channelingfee, pssword);
		
		if(isTrue == true) {
			RequestDispatcher dis = request.getRequestDispatcher("index.jsp");
			dis.forward(request, response);
			
			/*
			 * out.println("<script type='text/javascript'>");
			 * out.println("alert('You are add our system');");
			 * out.println("location='LOGNREJ.jsp'"); out.println("</script>");
			 */
		}
		else {
			
			/*
			 * RequestDispatcher dis = request.getRequestDispatcher("Dlogin.jsp");
			 * dis.forward(request, response);
			 */
			
			 out.println("<script type='text/javascript'>");
			 out.println("alert('You are add our system');");
			 out.println("location='adddoctor.jsp'"); out.println("</script>");
		}
		
	}

}
