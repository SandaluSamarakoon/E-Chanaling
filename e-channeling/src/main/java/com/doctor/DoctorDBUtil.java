package com.doctor;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.customer.Customer;
import com.customer.DBConnect;

public class DoctorDBUtil {
	
	private static boolean isSuccess;
	private static Connection con=null;
	private static Statement stmt = null;
	private static ResultSet rs=null;

	public static boolean docvalidate (String eMail, String pass){
		
		
		try {
			con = DBConnect.getConnection();
			stmt=con.createStatement();	
			String sql="select * from doctor where email='"+eMail+"'";
			rs=stmt.executeQuery(sql);
			
	
				if(rs.next()) {
					isSuccess = true;
				}else {
					isSuccess = false;
				}
			
				
		}
		catch (Exception e){
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
		
	
	
	  public static boolean insertdoctor(String fname,String lname,String
	  email,String phone,String specialization,String qualification,String
	  channelingfee,String password) {
	  
	  boolean isSuccess=false;
	  
	  
	  try {
	  
	  con = DBConnect.getConnection(); stmt=con.createStatement(); String
	  sql="insert into doctor values (0,'"+fname+"','"+lname+"','"+email+"','"+
	  phone+"','"+specialization+"','"+qualification+"','"+channelingfee+"','"+
	  password+"')"; int rs=stmt.executeUpdate(sql);
	  
	  if(rs >0) {
	  
	  isSuccess = true; } else {
	  
	  isSuccess = false; }
	  
	  } catch(Exception e) {
	  
	  e.printStackTrace();
	  
	  
	  }
	  
	  return isSuccess; }
	 

}
