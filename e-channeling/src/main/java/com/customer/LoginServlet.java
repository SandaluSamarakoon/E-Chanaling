package com.customer;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
/*import javax.servlet.RequestDispatcher;*/
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		PrintWriter out = response.getWriter();
		response.setContentType("text/html");

		HttpSession session = request.getSession();

		String email = request.getParameter("uemail");
		String password = request.getParameter("password");
		// boolean isTrue;
		int cusval;
		int adval;

		session.setAttribute("email", email);
		// isTrue = CustomerDBUtil.validate(email, password);
		cusval = CustomerDBUtil.cusvalidate(email, password);
		adval = CustomerDBUtil.advalidate(email, password);

		//System.out.println("cusval in loginServlet"+ cusval);
		//System.out.println("adval in loginServlet"+ adval);
		
		if(cusval ==0 && adval == 0)
		{
			  out.println("<script type='text/javascript'>");
			  out.println("alert('Your are not rejister user or user name or password incorect');");
			  out.println("location='LOGNREJ.jsp'"); out.println("</script>"); 
		}
		
		else if (cusval== 1) {
		  
		  List<Customer> cusDetails = CustomerDBUtil.getCustomer(email);
		  request.setAttribute("cusDetails", cusDetails);
		 
		 RequestDispatcher dis = request.getRequestDispatcher("index2.jsp");
		  dis.forward(request, response); }
		  
		/*
		 * else if(cusval== 0){
		 * 
		 * 
		 * out.println("<script type='text/javascript'>");
		 * out.println("alert('Your username or password is incorrect');");
		 * out.println("location='LOGNREJ.jsp'"); out.println("</script>"); }
		 */
		  
		  
		  else if (adval == 1) {
		 
		  //List<Customer> cusDetails = CustomerDBUtil.getCustomer(email);
		  //request.setAttribute("adDetails", cusDetails);
		  
		  RequestDispatcher dis = request.getRequestDispatcher("dash.jsp");
		  dis.forward(request, response); }
		  
		/*
		 * else if(cusval== 0){
		 * 
		 * 
		 * out.println("<script type='text/javascript'>");
		 * out.println("alert('Your username or password is incorrect');");
		 * out.println("location='LOGNREJ.jsp'"); out.println("</script>"); }
		 */
		
		
		
		/*
		 * if (isTrue == true) {
		 * 
		 * List<Customer> cusDetails = CustomerDBUtil.getCustomer(email);
		 * request.setAttribute("cusDetails", cusDetails);
		 * 
		 * RequestDispatcher dis = request.getRequestDispatcher("index2.jsp");
		 * dis.forward(request, response);
		 * 
		 * out.println("<script type='text/javascript'>");
		 * out.println("alert('Your username or password is incorrect');");
		 * out.println("location='LOGNREJ.jsp'"); out.println("</script>"); }
		 */

		/*
		 * else {
		 * 
		 * out.println("<script type='text/javascript'>");
		 * out.println("alert('Your username or password is incorrect');");
		 * out.println("location='LOGNREJ.jsp'"); out.println("</script>");
		 * 
		 * List<Customer> cusDetails = CustomerDBUtil.getCustomer(email);
		 * request.setAttribute("cusDetails", cusDetails);
		 * 
		 * RequestDispatcher dis = request.getRequestDispatcher("useraccount.jsp");
		 * dis.forward(request, response); }
		 */
		/*
		 * HttpSession session=request.getSession();
		 * session.setAttribute("email",email);
		 */

		/*
		 * try { List<Customer> cusDetails=CustomerDBUtil.validate(email, password);
		 * request.setAttribute("cusDetails", cusDetails); }
		 * 
		 * catch(Exception e) { e.printStackTrace(); } RequestDispatcher dis =
		 * request.getRequestDispatcher("useraccount.jsp"); dis.forward(request,
		 * response);
		 */

	}

}
