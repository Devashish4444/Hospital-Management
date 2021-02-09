package com.login.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.login.bean.RegisterBean;
import com.login.util.ConnectionUtility;
import com.login.util.IConnectionData;

public class RegisterDao {

	private IConnectionData conn_data;
	
	
	  public RegisterDao (IConnectionData conn_data) {
	  System.out.println(" In DAO Param Constructor");
	  this.conn_data=conn_data; 
	  }
	 
	public String registerUser(RegisterBean registerBean) {
		String firstName = registerBean.getFirstName();
		String lastName = registerBean.getLastName();
		String email = registerBean.getEmail();
		String contact = registerBean.getContact();
		String password = registerBean.getPassword();
		String gender = registerBean.getGender();
		String address1 = registerBean.getAddress1();
		String address2 = registerBean.getAddress2();
		String city = registerBean.getCity();
		String state = registerBean.getState();
		String zipcode = registerBean.getZipcode();

		System.out.println(email);
		System.out.println(firstName);
		System.out.println(gender);

		Connection con = null;
		PreparedStatement preparedStatement = null;

		try {
			//ConnectionData conn_data = new ConnectionData();
			con= ConnectionUtility.getConnection(conn_data);
			String query = "insert into users(USERID,FIRSTNAME,LASTNAME,PASSWORD,EMAIL,CONTACT,GENDER,ADDRESS1,ADDRESS2,CITY,STATE,ZIPCODE) values (NULL,?,?,?,?,?,?,?,?,?,?,?)"; 
			preparedStatement = con.prepareStatement(query); // Making use of prepared statements here to insert bunch of data
			preparedStatement.setString(1, firstName);
			preparedStatement.setString(2, lastName);
			preparedStatement.setString(3, password);
			preparedStatement.setString(4, email);
			preparedStatement.setString(5, contact);
			preparedStatement.setString(6, gender);
			preparedStatement.setString(7, address1);
			preparedStatement.setString(8, address2);
			preparedStatement.setString(9, city);
			preparedStatement.setString(10, state);
			preparedStatement.setString(11, zipcode);

     		int i = preparedStatement.executeUpdate();

			if (i != 0) // Just to ensure data has been inserted into the database
				return "Success";
		} 
		  catch(NullPointerException e) 
        { 
            System.out.print("Caught NullPointerException"); 
            return "Please check the details you have entered and Try Again !!"; 
            
        }
		 
		catch (SQLException e) {
			e.printStackTrace();
		}

		return "Please check the details you have entered and Try Again !!"; // On failure, send a message from here.
	}

}
