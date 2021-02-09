package com.login.util;

public class TestConnectionData implements IConnectionData {

	
	private static final String url="jdbc:mysql://localhost:3306/hms1";
	
	private static final String user="root";
	
	private static final String password="password";
	
	private static final String env = "test";
	
	
	@Override
	public String getURL() {
		// TODO Auto-generated method stub
		return url;
	}

	@Override
	public String getUser() {
		// TODO Auto-generated method stub
		return user;
	}

	@Override
	public String getPassword() {
		// TODO Auto-generated method stub
		return password;
	}

	@Override
	public String getEnv() {
		
		return env;
	}
	
	

	
	
	
}
