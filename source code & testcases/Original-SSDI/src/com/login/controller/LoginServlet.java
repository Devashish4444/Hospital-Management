
package com.login.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;
import com.login.bean.LoginBean;
import com.login.dao.LoginDao;
import com.login.util.IConnectionData;

public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private IConnectionData connection;

	public  LoginServlet() {
		 connection = IConnectionData.getInstance("") ;
		System.out.println(" In Default Constructor of Reg Servlet");
		}
	public  LoginServlet(IConnectionData connection) {
			
		   this.connection=connection;
		}

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String username = request.getParameter("username");
		String password = request.getParameter("password");

		System.out.println(username);
		System.out.println(password);

		LoginBean loginBean = new LoginBean();

		loginBean.setUserName(username);
		loginBean.setPassword(password);

		LoginDao loginDao = new LoginDao(connection);
		
		System.out.println(" About to call DAO class");

		// calling authenticate user method in login DAO to display pages based on user login
		
		String userValidate = loginDao.authenticateUser(loginBean);
		System.out.println(userValidate);

		// to retrieve the full name of the user who logged in with email id
		
		String fullName = loginDao.retrieveName(loginBean);
		System.out.println(fullName);
		request.setAttribute("fullName", fullName);

		LoginBean loginBean1 = new LoginBean();
		loginBean1.setFirstName(fullName);
		loginBean1.setMessage(userValidate);

		HttpSession session = request.getSession();
		session.setAttribute("fullName", fullName);

		HttpSession session1 = request.getSession();
		session1.setAttribute("email", username);

		// String userValidate1 = new Gson().toJson(userValidate);

		/**** Preparing The Output Response ****/
		// response.setContentType("text/html");
		// response.setCharacterEncoding("UTF-8");
		// PrintWriter out = response.getWriter();
		// out.write(userValidate);
		// out.write(firstName);

		String json = new Gson().toJson(loginBean1);
		response.setContentType("application/json");
		response.getWriter().write(json);
	}
}