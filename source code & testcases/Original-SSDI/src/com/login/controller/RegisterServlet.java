package com.login.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.login.bean.RegisterBean;
import com.login.dao.RegisterDao;
import com.login.util.IConnectionData;
  
public class RegisterServlet extends HttpServlet {

private static final long serialVersionUID = 1L;
private IConnectionData connection;

public  RegisterServlet() {
    
	connection = IConnectionData.getInstance("") ;
	System.out.println(" In Default Constructor of Reg Servlet");
	}
public  RegisterServlet(IConnectionData connection) {
		
	   this.connection=connection;
	}
	
public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// Copying all the input parameters in to local variables
		
		System.out.println(" In Do Get Servlet");

		String firstName = request.getParameter("firstName");
		String lastName = request.getParameter("lastName");
		String email = request.getParameter("email");
		String contact = request.getParameter("contact");
		String password = request.getParameter("password");
		String gender = request.getParameter("gender");
		String address1 = request.getParameter("address1");
		String address2 = request.getParameter("address2");
		String city = request.getParameter("city");
		String state = request.getParameter("state");
		String zipcode = request.getParameter("zipcode");
	
     	System.out.println(email);
		System.out.println(firstName);
		System.out.println(lastName);

		RegisterBean registerBean = new RegisterBean();
		// Using Java Beans - An easiest way to play with group of related data
		registerBean.setFirstName(firstName);
		registerBean.setLastName(lastName);
		registerBean.setEmail(email);
		registerBean.setContact(contact);
		registerBean.setPassword(password);
		registerBean.setGender(gender);
		registerBean.setAddress1(address1);
		registerBean.setAddress2(address2);
		registerBean.setCity(city);
		registerBean.setState(state);
		registerBean.setZipcode(zipcode);
		
		    System.out.println("Con Data "+connection);
			RegisterDao registerDao = new RegisterDao(connection);
			String userRegistered = registerDao.registerUser(registerBean);

			System.out.println(userRegistered);

			/**** Preparing The Output Response ****/
			response.setContentType("text/html");
			response.setCharacterEncoding("UTF-8");
			PrintWriter out = response.getWriter();
			out.write(userRegistered);

		}
		
		// The core Logic of the Registration application is present here. We are going
		// to insert user data in to the database.
	
}