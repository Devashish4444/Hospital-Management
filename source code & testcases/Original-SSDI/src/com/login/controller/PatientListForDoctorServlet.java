package com.login.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;

import com.google.gson.Gson;
import com.login.bean.BookAppointmentBean;
import com.login.bean.DoctorDetailsBean;
import com.login.dao.PatientDetailsDao;
import com.login.util.IConnectionData;

/**
 * Servlet implementation class PatientListForDoctor
 */
public class PatientListForDoctorServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private IConnectionData connection;

	public  PatientListForDoctorServlet() {
		
		connection = IConnectionData.getInstance("");
		System.out.println(" In Default Constructor of Reg Servlet");
		}
	public  PatientListForDoctorServlet(IConnectionData connection) {
			
		   this.connection=connection;
		}

	
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
		Object obj = request.getSession().getAttribute("fullName");
		System.out.println("Displaying value in Doctor object" + obj);

		String fullName = (String) obj;
		
		DoctorDetailsBean doctorDetailsBean = new DoctorDetailsBean();
		doctorDetailsBean.setDoctorName(fullName);
		
		System.out.println("Doctor Full Name is"+fullName);
		//IConnectionData connection = IConnectionData.getInstance("") ;
		PatientDetailsDao patientDetailsDao = new PatientDetailsDao(connection);
			
		JSONArray arrayObj = null;
		List<BookAppointmentBean> patientList = null;
		try {

			System.out.println("In Servlet class");

			patientList = patientDetailsDao.getPatientListForDoctor(doctorDetailsBean);
			if (patientList != null && patientList.size() > 0) {
				System.out.println("Total Patient Records Fetch From Db Are= " + patientList.size());
			} else {
				System.out.println("No Patient Records Are Present In Db");
			}

			arrayObj = new JSONArray(patientList);
			String jObj = new Gson().toJson(arrayObj);
			System.out.println(jObj);

			/***** Preparing The Output Response *****/
			response.setContentType("text/html");
			response.setCharacterEncoding("UTF-8");
			response.getWriter().write(jObj);

		} catch (IOException ex) {
			ex.printStackTrace();
		}

	}
		
	}



