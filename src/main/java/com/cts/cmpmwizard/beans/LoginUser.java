package com.cts.cmpmwizard.beans;

public class LoginUser {

	private String id;
	private String password;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	public String toString(){
		return "UserID:"+this.id;
	}
	
}
