package com.login.bean;

import java.sql.Time;
import java.util.Date;

public class DoctorDetailsBean {
	
	private String DoctorName;
	private String Specialisation;
	private String email;
	private Date ModifyDate;
	private Time FROMTIME;
	private Time TOTIME;
	
	public String getDoctorName() {
		return DoctorName;
	}
	public void setDoctorName(String doctorName) {
		DoctorName = doctorName;
	}
	public String getSpecialisation() {
		return Specialisation;
	}
	public void setSpecialisation(String specialisation) {
		Specialisation = specialisation;
	}
	public Date getModifyDate() {
		return ModifyDate;
	}
	public void setModifyDate(Date modifyDate) {
		ModifyDate = modifyDate;
	}
	public Time getFROMTIME() {
		return FROMTIME;
	}
	public void setFROMTIME(Time fROMTIME) {
		FROMTIME = fROMTIME;
	}
	public Time getTOTIME() {
		return TOTIME;
	}
	public void setTOTIME(Time tOTIME) {
		TOTIME = tOTIME;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}

}
