package Com.Product;

import java.io.InputStream;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

public class ProductDBUtill {

	private static boolean isSuccess;
	private static Connection con=null;
	private static Statement stmt = null;
	private static ResultSet rs=null;

	public static boolean insertproduct(String BRANDNAME,String CATEGORY,InputStream PRODUCTIMAGE,String DESCRIPTION) {
		
		boolean isSuccess=false;
		
		
		try {
			
			con = DBConnect.getConnection();
			stmt=con.createStatement();	
			String sql="insert into product values (0,'"+BRANDNAME+"','"+CATEGORY+"','"+PRODUCTIMAGE+"','"+DESCRIPTION+"')";
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
