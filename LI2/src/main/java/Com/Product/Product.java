package Com.Product;

public class Product {
	
	private int PID;
	private String BRANDNAME;
	private String CATEGORY;
	private String PRODUCTIMAGE;
	private String DESCRIPTION;
	
	
	public Product(int pID, String bRANDNAME, String cATEGORY, String pRODUCTIMAGE, String dESCRIPTION) {
		super();
		PID = pID;
		BRANDNAME = bRANDNAME;
		CATEGORY = cATEGORY;
		PRODUCTIMAGE = pRODUCTIMAGE;
		DESCRIPTION = dESCRIPTION;
	}


	
	public int getPID() {
		return PID;
	}


	public String getBRANDNAME() {
		return BRANDNAME;
	}


	public String getCATEGORY() {
		return CATEGORY;
	}


	public String getPRODUCTIMAGE() {
		return PRODUCTIMAGE;
	}


	public String getDESCRIPTION() {
		return DESCRIPTION;
	}


	public void setPID(int pID) {
		PID = pID;
	}


	public void setBRANDNAME(String bRANDNAME) {
		BRANDNAME = bRANDNAME;
	}


	public void setCATEGORY(String cATEGORY) {
		CATEGORY = cATEGORY;
	}


	public void setPRODUCTIMAGE(String pRODUCTIMAGE) {
		PRODUCTIMAGE = pRODUCTIMAGE;
	}


	public void setDESCRIPTION(String dESCRIPTION) {
		DESCRIPTION = dESCRIPTION;
	}
	
	
	
	

}
