package com.hospital;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import com.customer.DBConnect;

public class HospitalDBUtil {
	
	private static boolean isSuccess;
	private static Connection con=null;
	private static Statement stmt = null;
	private static ResultSet rs=null;

	public static boolean inserthospital(String hostname,String address,String phone) {
		
		boolean isSuccess=false;
		
		
		try {
			
			con = DBConnect.getConnection();
			stmt=con.createStatement();	
			String sql="insert into hospital values (0,'"+hostname+"','"+address+"','"+phone+"')";
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
}
