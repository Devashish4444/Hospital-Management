package com.login.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import com.login.bean.BookAppointmentBean;
import com.login.bean.DoctorDetailsBean;
import com.login.util.ConnectionUtility;
import com.login.util.IConnectionData;

public class PatientDetailsDao {
	
	private  IConnectionData conn_data;
  
	public PatientDetailsDao (IConnectionData conn_data) {
	  System.out.println(" In DAO Param Constructor");
	  this.conn_data=conn_data; 
	  }
	 
	
 public  List<BookAppointmentBean> getPatientListFromDb() {	
	
		 Connection con = null;
		 Statement statement = null;
		 ResultSet resultSet = null;
	   
		 BookAppointmentBean bookApppointmentBean = null;
			List<BookAppointmentBean> getPatientList = new ArrayList<BookAppointmentBean>();
			try {
				
				//ConnectionData conn_data = new ConnectionData();
				con= ConnectionUtility.getConnection(conn_data);
				// con = DBConnection.createConnection();
				 statement = con.createStatement();
				 
				 //PreparedStatement preparedStatement = null;
				 //con = DBConnection.createConnection();
				 System.out.println("Before calling sql");
				 
                 resultSet = statement.executeQuery("SELECT ID,PatientName,Specialist,Appointment_Date,Appointment_Time,Problem_Description,Comments FROM AppointmentDetails");
				 System.out.println("After calling"+resultSet);
				 while(resultSet.next())
				 {
				
				bookApppointmentBean = new BookAppointmentBean();
				bookApppointmentBean.setPatientName(resultSet.getString("PatientName"));
				bookApppointmentBean.setSpecialist(resultSet.getString("Specialist"));
				bookApppointmentBean.setAppointment_Date(resultSet.getDate("Appointment_Date"));
				bookApppointmentBean.setAppointment_Time(resultSet.getTime("Appointment_Time"));
				bookApppointmentBean.setProblem_Description(resultSet.getString("Problem_Description"));
				bookApppointmentBean.setComments(resultSet.getString("Comments"));
									 
				getPatientList.add(bookApppointmentBean);
				System.out.println(getPatientList);
				}
			} catch (SQLException sqlExObj) {
				sqlExObj.printStackTrace();
			} finally {
				//disconnectDb();
			}
			return getPatientList;
		} 

 
 public  List<BookAppointmentBean> getPatientListForDoctor(DoctorDetailsBean doctorDetailsBean) {	
		
	 Connection con = null;
	 Statement statement = null;
	 ResultSet resultSet = null;
   
	 String doctorName = doctorDetailsBean.getDoctorName();
	 System.out.println("Doctor Name in DAO ");

	 PreparedStatement preparedStatement = null;
	 
	 BookAppointmentBean bookApppointmentBean = null;
		List<BookAppointmentBean> getPatientList = new ArrayList<BookAppointmentBean>();
		try {
			
			 con= ConnectionUtility.getConnection(conn_data);
		     statement = con.createStatement();
			 System.out.println("Before calling sql");	 
			 String query = "SELECT ID,PatientName,Appointment_Date,Appointment_Time,Problem_Description,Comments FROM AppointmentDetails WHERE DoctorName=?";
              preparedStatement = con.prepareStatement(query); //Making use of prepared statements here to insert bunch of data
        	  preparedStatement.setString(1,doctorName);
        	  resultSet= preparedStatement.executeQuery(); 
             System.out.println("After calling"+resultSet);
			 while(resultSet.next())
			 {
			bookApppointmentBean = new BookAppointmentBean();
			bookApppointmentBean.setPatientName(resultSet.getString("PatientName"));
			bookApppointmentBean.setAppointment_Date(resultSet.getDate("Appointment_Date"));
			bookApppointmentBean.setAppointment_Time(resultSet.getTime("Appointment_Time"));
			bookApppointmentBean.setProblem_Description(resultSet.getString("Problem_Description"));
			bookApppointmentBean.setComments(resultSet.getString("Comments"));
								 
			getPatientList.add(bookApppointmentBean);
			System.out.println(getPatientList);
			}
		} catch (SQLException sqlExObj) {
			sqlExObj.printStackTrace();
		} finally {
			//disconnectDb();
		}
		return getPatientList;
	} 
 
 
 
 public  List<BookAppointmentBean> getMyListFromDb(BookAppointmentBean bookAppointmentBean) {	
		
	 Connection con = null;
	 Statement statement = null;
	 ResultSet resultSet = null;
	 
	 String patientName = bookAppointmentBean.getPatientName();
	 
	 System.out.println("Doctor Name in DAO ");
	 
	 PreparedStatement preparedStatement = null;
	 
	 BookAppointmentBean bookApppointmentBean = null;
		List<BookAppointmentBean> getPatientList = new ArrayList<BookAppointmentBean>();
		try {
			
			//ConnectionData conn_data = new ConnectionData();
			con= ConnectionUtility.getConnection(conn_data);
			// con = DBConnection.createConnection();
			 statement = con.createStatement();
			 
			 //PreparedStatement preparedStatement = null;
			 //con = DBConnection.createConnection();
			 System.out.println("Before calling sql");
			 
            String query = "SELECT ID,PatientName,DoctorName,Specialist,Appointment_Date,Appointment_Time,Problem_Description,Comments FROM AppointmentDetails where PatientName=?";
             preparedStatement = con.prepareStatement(query); //Making use of prepared statements here to insert bunch of data
       	     preparedStatement.setString(1,patientName);
       	     resultSet= preparedStatement.executeQuery(); 
             
             
             System.out.println("After calling"+resultSet);
			 while(resultSet.next())
			 {
			
			bookApppointmentBean = new BookAppointmentBean();
			bookApppointmentBean.setPatientName(resultSet.getString("PatientName"));
			bookApppointmentBean.setDoctorName(resultSet.getString("DoctorName"));
			bookApppointmentBean.setSpecialist(resultSet.getString("Specialist"));
			bookApppointmentBean.setAppointment_Date(resultSet.getDate("Appointment_Date"));
			bookApppointmentBean.setAppointment_Time(resultSet.getTime("Appointment_Time"));
			bookApppointmentBean.setProblem_Description(resultSet.getString("Problem_Description"));
			bookApppointmentBean.setComments(resultSet.getString("Comments"));
								 
			getPatientList.add(bookApppointmentBean);
			System.out.println(getPatientList);
			}
		} catch (SQLException sqlExObj) {
			sqlExObj.printStackTrace();
		} finally {
			//disconnectDb();
		}
		return getPatientList;
	} 
 
}
