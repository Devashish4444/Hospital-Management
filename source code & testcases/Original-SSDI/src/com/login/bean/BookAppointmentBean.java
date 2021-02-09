package com.login.bean;

import java.util.Date;
import java.sql.Time;

public class BookAppointmentBean {

	 private String PatientName;
	 private String DoctorName;
	 private String Email;
	 private String Specialist;
	 private Date Appointment_Date;
	 private Time Appointment_Time;
	 private String Problem_Description;
	 private String Comments;
	 
	public String getSpecialist() {
		return Specialist;
	}
	public void setSpecialist(String specialist) {
		Specialist = specialist;
	}
	public Date getAppointment_Date() {
		return Appointment_Date;
	}
	public void setAppointment_Date(Date appointment_Date) {
		Appointment_Date = appointment_Date;
	}
	public Time getAppointment_Time() {
		return Appointment_Time;
	}
	public void setAppointment_Time(Time appointment_Time) {
		Appointment_Time = appointment_Time;
	}
	public String getProblem_Description() {
		return Problem_Description;
	}
	public void setProblem_Description(String problem_Description) {
		Problem_Description = problem_Description;
	}
	public String getComments() {
		return Comments;
	}
	public void setComments(String comments) {
		Comments = comments;
	}
	public String getPatientName() {
		return PatientName;
	}
	public void setPatientName(String patientName) {
		PatientName = patientName;
	}
	public String getDoctorName() {
		return DoctorName;
	}
	public void setDoctorName(String doctorName) {
		DoctorName = doctorName;
	}
	public String getEmail() {
		return Email;
	}
	public void setEmail(String email) {
		Email = email;
	}
	
	
}
