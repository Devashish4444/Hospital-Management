package com.login.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import com.login.bean.LoginBean;
import com.login.util.ConnectionUtility;
import com.login.util.IConnectionData;

public class LoginDao {

	
	private IConnectionData conn_data;
	
	public LoginDao(IConnectionData conn_data) {
	 this.conn_data = conn_data;
	 }
	

	public String authenticateUser(LoginBean loginBean) {

		System.out.println(" In DAO class");
		String userName = loginBean.getUserName();
		String password = loginBean.getPassword();

		System.out.println(userName);
		System.out.println(password);

		Connection con = null;
		Statement statement = null;
		ResultSet resultSet = null;

		String userNameDB = "";
		String passwordDB = "";
		String roleDB = "";

		try {
			//con = DBConnection.createConnection();
			
			con= ConnectionUtility.getConnection(conn_data);
			
			statement = con.createStatement();
			resultSet = statement.executeQuery("select email,password,role from users where email='" + userName + "'");

			while (resultSet.next()) {

				userNameDB = resultSet.getString("email");
				passwordDB = resultSet.getString("password");
				roleDB = resultSet.getString("role");
				System.out.println(roleDB);
				System.out.println(userNameDB);
				System.out.println(passwordDB);
				if (userName.equals(userNameDB) && password.equals(passwordDB) && roleDB.equals("Admin"))
					return "Admin_Role";
				else if (userName.equals(userNameDB) && password.equals(passwordDB) && roleDB.equals("Doctor"))
					return "Doctor_Role";
				else if (userName.equals(userNameDB) && password.equals(passwordDB) && roleDB.equals("patient"))
					return "Patient_Role";
			}
		} catch (SQLException e) {
			
			e.printStackTrace();
			return "Invalid user credentials";
		}
		return "Invalid user credentials";
	}

	public String retrieveName(LoginBean loginBean) {

		String userName = loginBean.getUserName();
		System.out.println(userName);
		System.out.println("In NAME getting");
		
		Connection con = null;
		Statement statement = null;
		ResultSet resultSet = null;

		String fullName = "";
		try {
			
			con= ConnectionUtility.getConnection(conn_data);
			//con = DBConnection.createConnection();
			statement = con.createStatement();
			resultSet = statement.executeQuery("select concat (firstname,' ',lastname) as 'Name' from users where email='" + userName + "'");
			System.out.println(resultSet);
			while (resultSet.next()) {

				fullName = resultSet.getString("Name");

			}
			
			//System.out.println(fullName);
			return fullName;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return "UserName Not Found";
	}

}