package com.login.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.Locale;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.login.bean.BookAppointmentBean;
import com.login.dao.DoctorManageTimingsDao;
import com.login.util.DateConvert;
import com.login.util.IConnectionData;

public class DoctorManageTimings extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private IConnectionData connection;

	public  DoctorManageTimings() {
		
		connection = IConnectionData.getInstance("");
		System.out.println(" In Default Constructor of Reg Servlet");
		}
	public  DoctorManageTimings(IConnectionData connection) {
			
		   this.connection=connection;
		}

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		Object obj = request.getSession().getAttribute("email");
		System.out.println("Displaying value in Doctor object" + obj);

		String email = (String) obj;

	//String selectDoctor = request.getParameter("selectDoctor");
	String Appointment_Date = request.getParameter("Appointment_Date");
	String slotTime = request.getParameter("Slot_Time");

	//System.out.println(selectDoctor);
	System.out.println(Appointment_Date);
	System.out.println(slotTime);

	try {

		DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd",Locale.US);

		LocalDate date = LocalDate.parse(Appointment_Date, formatter);

		DateConvert dateConvert = new DateConvert();
		java.util.Date AppointmentDate = dateConvert.convertToDateViaInstant(date);

		System.out.println("java.util.date" + AppointmentDate);

		SimpleDateFormat formatter1 = new SimpleDateFormat("hh:mm:ss");

		java.util.Date d = formatter1.parse(slotTime);

		System.out.println("Extracted java.util time " + d);

		java.sql.Time sqlSlotTime = new java.sql.Time(d.getTime());

		System.out.println("New time after" + sqlSlotTime);

		BookAppointmentBean bookAppointmentBean = new BookAppointmentBean();

		bookAppointmentBean.setEmail(email);
		bookAppointmentBean.setAppointment_Date(AppointmentDate);
		bookAppointmentBean.setAppointment_Time(sqlSlotTime);

		//IConnectionData connection = IConnectionData.getInstance("") ;
		
		DoctorManageTimingsDao doctorTimings = new DoctorManageTimingsDao(connection);

		String result = doctorTimings.updateSlot(bookAppointmentBean);

		System.out.println(result);

		/**** Preparing The Output Response ****/
		response.setContentType("text/html");
		response.setCharacterEncoding("UTF-8");
		PrintWriter out = response.getWriter();
		out.write(result);

	} catch (ParseException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}

	
	}
	
}
