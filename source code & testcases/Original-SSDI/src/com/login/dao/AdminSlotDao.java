package com.login.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Time;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.login.bean.BookAppointmentBean;
import com.login.util.ConnectionUtility;
import com.login.util.IConnectionData;

public class AdminSlotDao {
	
	private IConnectionData conn_data;
	
	public AdminSlotDao(IConnectionData conn_data) {
	 this.conn_data = conn_data;
	 }
	
	public String updateSlot(BookAppointmentBean bookAppointmentBean)
	 {
		
	 String doctorName = bookAppointmentBean.getDoctorName();
	 Date Appointment_Date= bookAppointmentBean.getAppointment_Date();
	 Time SlotTime= bookAppointmentBean.getAppointment_Time();
	   
	 System.out.println("In Admin Slot DAO:");
	 System.out.println(doctorName);
	 System.out.println(Appointment_Date);
	 System.out.println(SlotTime); 	 
	 Connection con = null;
	 PreparedStatement preparedStatement = null;

	     java.sql.Date sqlDate = new java.sql.Date(Appointment_Date.getTime());
	     System.out.println("Time in java.sql.Date is : " + sqlDate);
	 try
	 { 
		 
	//ConnectionData conn_data = new ConnectionData();
	con= ConnectionUtility.getConnection(conn_data);
	 String query = "Delete from slot where doctor_name =? and date =? and slot_fromtime=?";
	 preparedStatement = con.prepareStatement(query); //Making use of prepared statements here to insert bunch of data
	 preparedStatement.setString(1, doctorName);
	 preparedStatement.setDate(2, sqlDate);
	 preparedStatement.setTime(3, SlotTime);
	 int i= preparedStatement.executeUpdate();
	 System.out.println(i);
	 
	 if (i!=0) {
		 return "Success"; 
	 }  	
	 }
	 
	 catch(SQLException e)
	 {
	 e.printStackTrace();
	 }
	 return "Please check the details you have entered and Try Again !!";
}
	
   public List<BookAppointmentBean> getSlotsListFromDb(BookAppointmentBean bookAppointmentBean) {	
		 
			
		 ResultSet resultSet = null;
		 Connection con = null;
		 PreparedStatement preparedStatement = null;
		 
 
         String doctorName = bookAppointmentBean.getDoctorName();
		 Date Appointment_Date= bookAppointmentBean.getAppointment_Date();
		 //Time SlotTime= bookAppointmentBean.getAppointment_Time();
	 
		  java.sql.Date sqlDate = new java.sql.Date(Appointment_Date.getTime());
		     System.out.println("Time in java.sql.Date is : " + sqlDate);
		     System.out.println("Doctor Name " + doctorName);
		 
		     
	List<BookAppointmentBean> getSlotsListFromDb = new ArrayList<BookAppointmentBean>();
			try {
				  con= ConnectionUtility.getConnection(conn_data);
				 //con = DBConnection.createConnection();
				 
                System.out.println("Before calling slot sql1");
				 
				 String query = "select slot_fromtime from slot where doctor_name=? and date =? order by slot_fromtime";
                
				preparedStatement = con.prepareStatement(query); //Making use of prepared statements here to insert bunch of data
           	    preparedStatement.setString(1,doctorName);
           	    preparedStatement.setDate(2,sqlDate);
           	    System.out.println("Before calling slot sql with Values"+doctorName+sqlDate);
           	    resultSet= preparedStatement.executeQuery();
				
           	    System.out.println("After calling"+resultSet);
				 while(resultSet.next())
				 {
      				 bookAppointmentBean = new BookAppointmentBean();					
					 bookAppointmentBean.setAppointment_Time(resultSet.getTime("slot_FromTime"));
						
					 getSlotsListFromDb.add(bookAppointmentBean);
					 
				System.out.println("Slots List "+getSlotsListFromDb);
				}
			} catch (SQLException sqlExObj) {
				sqlExObj.printStackTrace();
			} finally {
				//disconnectDb();
			}
			return getSlotsListFromDb;
		}
	 
	
}
	
	

	
