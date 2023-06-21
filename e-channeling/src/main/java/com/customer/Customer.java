package com.customer;

public class Customer {

	private int userpid;
	private String fname;
	private String lname;
	private String eMail;
	private String phone;
	private String password;
	
	
	public Customer(int userpid, String fname, String lname, String eMail, String phone, String password) {
		super();
		this.userpid = userpid;
		this.fname = fname;
		this.lname = lname;
		this.eMail = eMail;
		this.phone = phone;
		this.password = password;
	}


	public int getUserpid() {
		return userpid;
	}


	public String getFname() {
		return fname;
	}


	public String getLname() {
		return lname;
	}


	public String geteMail() {
		return eMail;
	}


	public String getPhone() {
		return phone;
	}


	public String getPassword() {
		return password;
	}


	
		
	
}
