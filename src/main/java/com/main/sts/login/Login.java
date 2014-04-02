package com.main.sts.login;

import org.springframework.data.mongodb.core.mapping.Document;

@Document
public class Login {

	private String login_id;
	private String password;
	private String role;
	private String school_id;
	
	public String getLogin_id() {
		return login_id;
	}
	public void setLogin_id(String login_id) {
		this.login_id = login_id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	public String getSchool_id() {
		return school_id;
	}
	public void setSchool_id(String school_id) {
		this.school_id = school_id;
	}
	
	@Override
	public String toString() {
		return "Login [login_id=" + login_id + ", password=" + password
				+ ", role=" + role + ", school_id=" + school_id + "]";
	}
	
	
}
