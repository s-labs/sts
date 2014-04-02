package com.sts.school;

import java.util.List;

import com.main.sts.login.Login;


public interface SchoolService {

	
	
	public Login getPassword(String password);
	
	public Login changePassword(String c_pass,String c_newpass);
} 
