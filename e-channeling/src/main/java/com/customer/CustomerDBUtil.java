package com.customer;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class CustomerDBUtil {
	
	private static boolean isSuccess;
	private static Connection con=null;
	private static Statement stmt = null;
	private static ResultSet rs=null;

//	public static boolean validate (String eMail, String pass){
//		
//		
//		try {
//			con = DBConnect.getConnection();
//			stmt=con.createStatement();	
//			String sql="select * from customer where email='"+eMail+"'";
//			rs=stmt.executeQuery(sql);
//			
//	
//				if(rs.next()) {
//					isSuccess = true;
//			}else {
//					isSuccess = false;
//				}
//			
//				
//		}
//	catch (Exception e){
//			e.printStackTrace();
//	}
//	
//		return isSuccess;
		
	/*	ArrayList<Customer> cus = new ArrayList<>();
		
		
		try {
			
			con = DBConnect.getConnection();
			stmt=con.createStatement();	
			String sql="select* from customer where email='"+eMail+"' and password='"+password+"'";
			//String sql="select* from customer";
			rs=stmt.executeQuery(sql);
			
			if(rs.next()) {
				
				int userpid =rs.getInt(1);
				String fname = rs.getString(2);
				String lname = rs.getString(3);
				String emailu = rs.getString(4);
				String phone = rs.getString(5);
				String passu = rs.getString(6);
				
				Customer c = new Customer(userpid,fname,lname,emailu,phone,passu);
				
				cus.add(c);
				
				
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
	
		
		return cus;*/
	//}
	
	
	public static int cusvalidate (String eMail, String pass){
		
		//int count=0;
		int vali=0;
		System.out.println("email"+eMail);
		System.out.println("pass"+pass);
		try {
			con = DBConnect.getConnection();
			stmt=con.createStatement();	
			String sql="select * from customer where email like '"+eMail+"' and password like '"+pass+"';";
			System.out.println(sql);
			rs=stmt.executeQuery(sql);
			
	            
				while(rs.next()) {
					vali=+1;
					/*System.out.println("count"+count);
					String email=rs.getString("email");
					String password=rs.getString("password");*/
					
					/*if(email == eMail) {
					
					vali +=5;
					   
					  if(password == pass) {
						  vali +=10;
					  }
					}*/
					
					
					
			}
				
			
				
		}
	catch (Exception e){
			e.printStackTrace();
	}
	
		return vali;
	}
	
	public static List<Customer> getCustomer(String eMail){
		
		ArrayList<Customer> customer = new ArrayList<>();
		
		try {
			con = DBConnect.getConnection();
			stmt=con.createStatement();	
			String sql="select * from customer where email='"+eMail+"'";
			rs=stmt.executeQuery(sql);
			
			while (rs.next()) {
				
				int userpid =rs.getInt(1);
				String fname = rs.getString(2);
				String lname = rs.getString(3);
				String emailu = rs.getString(4);
				String phone = rs.getString(5);
				String passu = rs.getString(6);
				
				Customer cus = new Customer(userpid,fname,lname,emailu,phone,passu);
				
				customer.add(cus);
			}
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		
		return customer;
		
	}
	
	//insert
	
	public static boolean insertcustomer(String fname,String lname,String email,String phone,String password) {
		
		boolean isSuccess=false;
		
		
		try {
			
			con = DBConnect.getConnection();
			stmt=con.createStatement();	
			String sql="insert into customer values (0,'"+fname+"','"+lname+"','"+email+"','"+phone+"','"+password+"')";
			int rs=stmt.executeUpdate(sql);
			
			if(rs >0) {
				
				isSuccess = true;
			}
			else {
				
				isSuccess = false;
			}
			
		}
		catch(Exception e) {
			
			e.printStackTrace();
		
		
	}
		
		return isSuccess;
}
	public static boolean updatecustomer (String uid ,String fname,String lname,String email,String phone,String password)
	{
		try {
			con = DBConnect.getConnection();
			stmt=con.createStatement();	
			String sql="update customer set fname='"+fname+"',lname='"+lname+"',email='"+email+"',phone='"+phone+"', password='"+password+"'"
					    + "where userpid = '"+uid+"'";
			int rs=stmt.executeUpdate(sql);
			
			if(rs>0) {
				
				isSuccess = true;
			}
			else {
				
				isSuccess = false;
			}
			
		}
		catch(Exception e){
			e.printStackTrace();
			
		}
		return isSuccess;
	}
	
	public static List<Customer> getCustomeDetails(String Id){
		
		int convertedID = Integer.parseInt(Id);
		ArrayList<Customer> cus = new ArrayList<>();
		
		try {
			
			con = DBConnect.getConnection();
			stmt=con.createStatement();	
			String sql ="Select * from customer where userpid='"+convertedID+"'";
			rs = stmt.executeQuery(sql);
			
			while(rs.next()){
				int userpid=rs.getInt(1);
				String fname=rs.getString(2);
				String lname=rs.getString(3);
				String email=rs.getString(4);
				String phone=rs.getString(5);
				String password=rs.getString(6);
				
				Customer c = new Customer(userpid,fname,lname,email,phone,password);
				cus.add(c);
				
			}
		}
		catch(Exception e) {
			
			e.printStackTrace();
			
		}
		
		return cus;
	}
	
	public static boolean deleteCustomer(String id) {
		
		int convId = Integer.parseInt(id);
		
		try {
			
			con = DBConnect.getConnection();
			stmt=con.createStatement();
			String sql = "delete from customer where userpid='"+convId+"'";
			int r=stmt.executeUpdate(sql);
			
			if(r>0) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
	//admin
	
	public static int advalidate (String eMail, String pass){
		
		//int count=0;
		int vali=0;
		System.out.println("email"+eMail);
		System.out.println("pass"+pass);
		try {
			con = DBConnect.getConnection();
			stmt=con.createStatement();	
			String sql="select * from admin where email like '"+eMail+"' and password like '"+pass+"';";
			System.out.println(sql);
			rs=stmt.executeQuery(sql);
			
	            
				while(rs.next()) {
					vali=+1;
							
					
			}
				
			
				
		}
	catch (Exception e){
			e.printStackTrace();
	}
	
		return vali;
	}
	

}





