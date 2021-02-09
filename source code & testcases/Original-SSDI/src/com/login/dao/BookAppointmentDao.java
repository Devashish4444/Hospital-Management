package com.login.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Time;
import java.util.Date;

import com.login.bean.BookAppointmentBean;
import com.login.bean.LoginBean;
import com.login.util.ConnectionUtility;
import com.login.util.IConnectionData;

public class BookAppointmentDao {
	
	private IConnectionData conn_data;
	
	public BookAppointmentDao(IConnectionData conn_data) {
	 this.conn_data = conn_data;
	 }
	
 public String bookAppointment(BookAppointmentBean bookAppointmentBean)
	 {
     
	 String DoctorName =bookAppointmentBean.getDoctorName();
     String PatientName =bookAppointmentBean.getPatientName();
	 String Specialist =bookAppointmentBean.getSpecialist();
	 Date Appointment_Date=bookAppointmentBean.getAppointment_Date();
	 Time Appointment_Time=bookAppointmentBean.getAppointment_Time();
	 String Problem_Description=bookAppointmentBean.getProblem_Description();
	 String Comments=bookAppointmentBean.getComments();
	 
	 LoginBean loginBean= new LoginBean();
	 
	 String firstName=loginBean.getFirstName();

	 System.out.println("In DAO servlet.. About to set values");
	 System.out.println(Specialist);
	 System.out.println(Appointment_Date);
	 System.out.println(Appointment_Time);
	 
	 Connection con = null;
	 PreparedStatement preparedStatement = null;

	 //java.util.Date uDate = new java.util.Date();
    // System.out.println("Time in java.util.Date is : " + uDate);
     
     java.sql.Date sqlDate = new java.sql.Date(Appointment_Date.getTime());
     System.out.println("Time in java.sql.Date is : " + sqlDate);
          
	 try
	 { 
	
	    //ConnectionData conn_data = new ConnectionData();
		con= ConnectionUtility.getConnection(conn_data);
	 
	 String query = "insert into AppointmentDetails(ID,PatientName,DoctorName,Specialist,Appointment_Date,Appointment_Time,Problem_Description,Comments) values (NULL,?,?,?,?,?,?,?)"; 
	 preparedStatement = con.prepareStatement(query); //Making use of prepared statements here to insert bunch of data
	 preparedStatement.setString(1, PatientName);
	 preparedStatement.setString(2, DoctorName);
	 preparedStatement.setString(3, Specialist);
	 preparedStatement.setDate(4, sqlDate);
	 preparedStatement.setTime(5,Appointment_Time);
	 preparedStatement.setString(6, Problem_Description);
	 preparedStatement.setString(7, Comments);

	 int i= preparedStatement.executeUpdate();
	 
	 if (i!=0)  //Just to ensure data has been inserted into the database
	 return "Success"; 
	 }
	 catch(SQLException e)
	 {
	 e.printStackTrace();
	 }
	 
	 return "Please check the details you have entered and Try Again !!"; 
	 }

}
