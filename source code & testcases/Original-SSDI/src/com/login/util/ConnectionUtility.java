package com.login.util;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectionUtility {
	
	public static Connection getConnection (IConnectionData data)
	{
		Connection con= null;
		
		try {
			
			con=DriverManager.getConnection(data.getURL(), data.getUser(),data.getPassword());
		}catch (Exception e)
		{
			e.printStackTrace();	
		
		}
		return con;
	}
	
	

}
