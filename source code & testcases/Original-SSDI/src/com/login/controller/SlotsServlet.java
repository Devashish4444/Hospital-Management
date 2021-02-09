package com.login.controller;

import java.io.IOException;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.List;
import java.util.Locale;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;

import com.google.gson.Gson;
import com.login.bean.BookAppointmentBean;
import com.login.dao.AdminSlotDao;
import com.login.util.DateConvert;
import com.login.util.IConnectionData;


public class SlotsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	private IConnectionData connection;

	public  SlotsServlet() {
		
		connection = IConnectionData.getInstance("");
		System.out.println(" In Default Constructor of Reg Servlet");
		}
	public  SlotsServlet(IConnectionData connection) {
			
		   this.connection=connection;
		}

public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
{
	 String Appointment_Date= request.getParameter("Appointment_Date");	
	 String doctorName = request.getParameter("dcsource");
	
	 if (doctorName==null)
	 {
		 Object obj = request.getSession().getAttribute("fullName");
		 doctorName=(String) obj; 
	 }
	 
	 DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd",Locale.US);
	   	 
	 LocalDate date = LocalDate.parse(Appointment_Date,formatter);
		
	 System.out.println("doctorName "+doctorName);
	 System.out.println("Appointment_Date "+Appointment_Date);
	 System.out.println("Converted date value "+date);
	 
	 DateConvert dateConvert = new DateConvert();
	 java.util.Date AppointmentDate=dateConvert.convertToDateViaInstant(date);	
		
	 System.out.println("In Slot servlet.. About to set values");
	 
	 BookAppointmentBean bookAppointmentBean = new BookAppointmentBean();
	 
	 bookAppointmentBean.setDoctorName(doctorName);
	 bookAppointmentBean.setAppointment_Date(AppointmentDate);
	 
	 
	 JSONArray arrayObj = null;
		List<BookAppointmentBean> getSlotsList = null;
		try {
			
			System.out.println("In Servlet class");
            
			//IConnectionData connection = IConnectionData.getInstance("") ;
			AdminSlotDao adminSlotDao =new AdminSlotDao(connection);

			getSlotsList = adminSlotDao.getSlotsListFromDb(bookAppointmentBean);
			if(getSlotsList != null && getSlotsList.size() > 0) {				
				System.out.println("Total Slots Fetch From Db Are= " + getSlotsList.size());
			} 
			else {
				System.out.println("No Slot Records Are Present In Db");
			}

			arrayObj = new JSONArray(getSlotsList);
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
