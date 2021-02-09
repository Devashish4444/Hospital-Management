package com.login.util;

public interface IConnectionData {
	
	//static String env = null ;

	public String getURL();
	public String getUser();
	public String getPassword();
	public String getEnv();
	
	
	public static IConnectionData getInstance( String env) {
		
		if (env.equals("Test")) {
			return new TestConnectionData();
		}else {
			return new ConnectionData();
		}
		
	}
	
}
