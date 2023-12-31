package com.hospital;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hospital.HospitalDBUtil;

@WebServlet("/Hospitalinsert")
public class Hospitalinsert extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String  hostname= request.getParameter("Hname");
		String address = request.getParameter("Address");
		String phone = request.getParameter("Phone");	      
		boolean isTrue;
		
		isTrue=HospitalDBUtil.inserthospital(hostname, address, phone);
		
		if(isTrue == true) {
			RequestDispatcher dis = request.getRequestDispatcher("dash.jsp");
			dis.forward(request, response);
		}
		else {
			RequestDispatcher dis = request.getRequestDispatcher("Dlogin.jsp");
			dis.forward(request, response);
		}
	}

}
