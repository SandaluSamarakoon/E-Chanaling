package com.hospital;

public class Hospital {

	private int hostid;
	private String hostname;
	private String address;
	private String phone;
	
	
	public Hospital(int hostid, String hostname, String address, String phone) {
		super();
		this.hostid = hostid;
		this.hostname = hostname;
		this.address = address;
		this.phone = phone;
	}


	public int getHostid() {
		return hostid;
	}


	public String getHostname() {
		return hostname;
	}


	public String getAddress() {
		return address;
	}


	public String getPhone() {
		return phone;
	}


	
	
	
}
