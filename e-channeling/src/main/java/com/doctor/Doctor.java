package com.doctor;

public class Doctor {

	private int userdid;
	private String fname;
	private String lname;
	private String eMail;
	private String phone;
	private String specialization;
	private String qulification;
	private String channelingfee;
	private String password;
	
	
	public Doctor(int userdid, String fname, String lname, String eMail, String phone, String specialization,
			String qulification, String channelingfee, String password) {
		super();
		this.userdid = userdid;
		this.fname = fname;
		this.lname = lname;
		this.eMail = eMail;
		this.phone = phone;
		this.specialization = specialization;
		this.qulification = qulification;
		this.channelingfee = channelingfee;
		this.password = password;
	}


	public int getUserdid() {
		return userdid;
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


	public String getSpecialization() {
		return specialization;
	}


	public String getQulification() {
		return qulification;
	}


	public String getChannelingfee() {
		return channelingfee;
	}


	public String getPassword() {
		return password;
	}



	
	
	
	
}
