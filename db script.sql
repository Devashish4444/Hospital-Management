DROP DATABASE IF EXISTS HMS;
CREATE DATABASE HMS ;
USE HMS;
DROP TABLE IF EXISTS users;
CREATE TABLE `users` (
  `USERID` int NOT NULL AUTO_INCREMENT,
  `FIRSTNAME` varchar(50) DEFAULT NULL,
  `LASTNAME` varchar(50) DEFAULT NULL,
  `PASSWORD` varchar(50) DEFAULT NULL,
  `EMAIL` varchar(50) PRIMARY KEY,
  `CONTACT` varchar(45) DEFAULT NULL,
  `GENDER` varchar(15) DEFAULT NULL,
  `ADDRESS1` varchar(455) DEFAULT NULL,
  `ADDRESS2` varchar(455) DEFAULT NULL,
  `CITY` varchar(50) DEFAULT NULL,
  `STATE` varchar(50) DEFAULT NULL,
  `ZIPCODE` varchar(50) DEFAULT NULL,
  `ROLE` varchar(255) DEFAULT 'patient',
  UNIQUE KEY `USERID` (`USERID`)
) ;  

DROP TABLE IF EXISTS AppointmentDetails;
CREATE TABLE AppointmentDetails (ID INT auto_increment unique key,
					PatientName VARCHAR(30) ,
                    DoctorName VARCHAR(30),
					Specialist VARCHAR(30) ,
                    Appointment_Date DATE,
					Appointment_Time TIME ,
                    Problem_Description VARCHAR(500) ,
                    Comments VARCHAR(1000) );
                    
DROP TABLE IF EXISTS slot;
CREATE TABLE SLOT(Doctor_id int ,
				  doctor_name varchar(255),
				  email varchar(50),
                  date date, 
                  slot_fromtime time, 
                  slot_totime time); 
 
DROP TABLE IF EXISTS doctordetails;                  
CREATE TABLE `doctordetails` (
  `ID` int(11) DEFAULT NULL,
  `DoctorName` varchar(50) DEFAULT NULL,
  `Specialisation` varchar(30) DEFAULT NULL,
  `Email` varchar(225) DEFAULT NULL,
  `ModifyDate` date DEFAULT NULL,
  `FROMTIME` time DEFAULT NULL,
  `TOTIME` time DEFAULT NULL
);                 
                    
                    
Insert into users values(1, "Andrew", "Roy", "abcd123", "andrewr@gmail.com", "9874531122", "Male", "6200 University Blvd", "apt 657","Charlotte","North Carolina", "28262","Doctor");
Insert into users values(2, "Dale", "Martis", "abcd789", "dalem@gmail.com", "9835890412", "Female",  "David Taylor Road", " ","Charlotte","North Carolina", "28262", "Doctor");
Insert into users values(3, "Bella", "Weasley", "xyz123", "bellaw@gmail.com", "9874531122", "Female", "Malard Creek", " ","Charlotte","North Carolina", "28262", "Doctor");
Insert into users values(4, "Jack", "Gran", "abxy123", "jackg@gmail.com", "9237645122", "Male", "Concord", " ","Charlotte","North Carolina", "28262", "Doctor");
Insert into users values(5, "Harry", "Shaw", "abty123", "harrys@gmail.com", "9569176022", "Male", "Ballentine", " ","Charlotte","North Carolina", "28262", "Doctor");
Insert into users values(6, "Jeff", "Davis", "abcd143", "jeffd@gmail.com", "9874589122", "Male", "Huntersville", " ","Charlotte","North Carolina", "28262", "Doctor");
Insert into users values(7, "Garry", "Smith", "abcd749", "garrys@gmail.com", "9835080412", "Male", "8156 South Tryon Street", " ","Charlotte","North Carolina", "28262", "Doctor");
Insert into users values(8, "Alyssa", "Johnson", "xyz143", "alyssaj@gmail.com", "9896431122", "Female", "Davidson", " ","Charlotte","North Carolina", "28262", "Doctor");
Insert into users values(9, "Trey", "Miller", "abxy183", "treym@gmail.com", "9098945122", "Male", "NODA", " ","Charlotte","North Carolina", "28262", "Doctor");
Insert into users values(10, "Sweety", "Wilson", "abty193", "sweetyw@gmail.com", "9809176022", "Female", "Harrisburg", " ","Charlotte","North Carolina", "28262", "Doctor");
Insert into users values(11, "admin", "admin", "abde123", "HMSadmin@gmail.com", "9090783222", "Male", "Matthews", " ","Charlotte","North Carolina", "28262", "Admin");


insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-11-24","10:00","10:30");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-11-24","10:30","11:00");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-11-24","11:00","11:30");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-11-24","11:30","12:00");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-11-24","13:00","13:30");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-11-24","13:30","14:00");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-11-24","14:00","14:30");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-11-24","14:30","15:00");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-11-24","15:00","15:30");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-11-24","15:30","16:00");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-11-24","16:00","16:30");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-11-24","16:30","17:00");

insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-11-25","10:00","10:30");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-11-25","10:30","11:00");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-11-25","11:00","11:30");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-11-25","11:30","12:00");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-11-25","13:00","13:30");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-11-25","13:30","14:00");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-11-25","14:00","14:30");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-11-25","14:30","15:00");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-11-25","15:00","15:30");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-11-25","15:30","16:00");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-11-25","16:00","16:30");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-11-25","16:30","17:00");

insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-11-26","10:00","10:30");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-11-26","10:30","11:00");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-11-26","11:00","11:30");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-11-26","11:30","12:00");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-11-26","13:00","13:30");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-11-26","13:30","14:00");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-11-26","14:00","14:30");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-11-26","14:30","15:00");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-11-26","15:00","15:30");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-11-26","15:30","16:00");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-11-26","16:00","16:30");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-11-26","16:30","17:00");

insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-11-27","10:00","10:30");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-11-27","10:30","11:00");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-11-27","11:00","11:30");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-11-27","11:30","12:00");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-11-27","13:00","13:30");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-11-27","13:30","14:00");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-11-27","14:00","14:30");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-11-27","14:30","15:00");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-11-27","15:00","15:30");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-11-27","15:30","16:00");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-11-27","16:00","16:30");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-11-27","16:30","17:00");

insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-11-28","10:00","10:30");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-11-28","10:30","11:00");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-11-28","11:00","11:30");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-11-28","11:30","12:00");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-11-28","13:00","13:30");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-11-28","13:30","14:00");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-11-28","14:00","14:30");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-11-28","14:30","15:00");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-11-28","15:00","15:30");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-11-28","15:30","16:00");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-11-28","16:00","16:30");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-11-28","16:30","17:00");

insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-11-29","10:00","10:30");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-11-29","10:30","11:00");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-11-29","11:00","11:30");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-11-29","11:30","12:00");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-11-29","13:00","13:30");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-11-29","13:30","14:00");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-11-29","14:00","14:30");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-11-29","14:30","15:00");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-11-29","15:00","15:30");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-11-29","15:30","16:00");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-11-29","16:00","16:30");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-11-29","16:30","17:00");

insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-11-30","10:00","10:30");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-11-30","10:30","11:00");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-11-30","11:00","11:30");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-11-30","11:30","12:00");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-11-30","13:00","13:30");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-11-30","13:30","14:00");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-11-30","14:00","14:30");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-11-30","14:30","15:00");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-11-30","15:00","15:30");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-11-30","15:30","16:00");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-11-30","16:00","16:30");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-11-30","16:30","17:00");

insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-01","10:00","10:30");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-01","10:30","11:00");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-01","11:00","11:30");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-01","11:30","12:00");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-01","13:00","13:30");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-01","13:30","14:00");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-01","14:00","14:30");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-01","14:30","15:00");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-01","15:00","15:30");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-01","15:30","16:00");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-01","16:00","16:30");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-01","16:30","17:00");


insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-02","10:00","10:30");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-02","10:30","11:00");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-02","11:00","11:30");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-02","11:30","12:00");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-02","13:00","13:30");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-02","13:30","14:00");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-02","14:00","14:30");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-02","14:30","15:00");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-02","15:00","15:30");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-02","15:30","16:00");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-02","16:00","16:30");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-02","16:30","17:00");

insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-03","10:00","10:30");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-03","10:30","11:00");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-03","11:00","11:30");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-03","11:30","12:00");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-03","13:00","13:30");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-03","13:30","14:00");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-03","14:00","14:30");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-03","14:30","15:00");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-03","15:00","15:30");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-03","15:30","16:00");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-03","16:00","16:30");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-03","16:30","17:00");

insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-04","10:00","10:30");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-04","10:30","11:00");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-04","11:00","11:30");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-04","11:30","12:00");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-04","13:00","13:30");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-04","13:30","14:00");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-04","14:00","14:30");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-04","14:30","15:00");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-04","15:00","15:30");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-04","15:30","16:00");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-04","16:00","16:30");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-04","16:30","17:00");


insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-05","10:00","10:30");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-05","10:30","11:00");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-05","11:00","11:30");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-05","11:30","12:00");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-05","13:00","13:30");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-05","13:30","14:00");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-05","14:00","14:30");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-05","14:30","15:00");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-05","15:00","15:30");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-05","15:30","16:00");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-05","16:00","16:30");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-05","16:30","17:00");

insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-06","10:00","10:30");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-06","10:30","11:00");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-06","11:00","11:30");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-06","11:30","12:00");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-06","13:00","13:30");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-06","13:30","14:00");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-06","14:00","14:30");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-06","14:30","15:00");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-06","15:00","15:30");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-06","15:30","16:00");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-06","16:00","16:30");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-06","16:30","17:00");

insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-07","10:00","10:30");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-07","10:30","11:00");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-07","11:00","11:30");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-07","11:30","12:00");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-07","13:00","13:30");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-07","13:30","14:00");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-07","14:00","14:30");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-07","14:30","15:00");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-07","15:00","15:30");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-07","15:30","16:00");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-07","16:00","16:30");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-07","16:30","17:00");


insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-08","10:00","10:30");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-08","10:30","11:00");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-08","11:00","11:30");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-08","11:30","12:00");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-08","13:00","13:30");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-08","13:30","14:00");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-08","14:00","14:30");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-08","14:30","15:00");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-08","15:00","15:30");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-08","15:30","16:00");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-08","16:00","16:30");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-08","16:30","17:00");


insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-09","10:00","10:30");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-09","10:30","11:00");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-09","11:00","11:30");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-09","11:30","12:00");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-09","13:00","13:30");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-09","13:30","14:00");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-09","14:00","14:30");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-09","14:30","15:00");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-09","15:00","15:30");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-09","15:30","16:00");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-09","16:00","16:30");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-09","16:30","17:00");


insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-10","10:00","10:30");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-10","10:30","11:00");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-10","11:00","11:30");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-10","11:30","12:00");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-10","13:00","13:30");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-10","13:30","14:00");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-10","14:00","14:30");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-10","14:30","15:00");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-10","15:00","15:30");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-10","15:30","16:00");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-10","16:00","16:30");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-10","16:30","17:00");

insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-10","10:00","10:30");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-10","10:30","11:00");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-10","11:00","11:30");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-10","11:30","12:00");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-10","13:00","13:30");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-10","13:30","14:00");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-10","14:00","14:30");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-10","14:30","15:00");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-10","15:00","15:30");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-10","15:30","16:00");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-10","16:00","16:30");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-10","16:30","17:00");

insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-11","10:00","10:30");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-11","10:30","11:00");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-11","11:00","11:30");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-11","11:30","12:00");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-11","13:00","13:30");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-11","13:30","14:00");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-11","14:00","14:30");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-11","14:30","15:00");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-11","15:00","15:30");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-11","15:30","16:00");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-11","16:00","16:30");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-11","16:30","17:00");

insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-12","10:00","10:30");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-12","10:30","11:00");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-12","11:00","11:30");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-12","11:30","12:00");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-12","13:00","13:30");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-12","13:30","14:00");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-12","14:00","14:30");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-12","14:30","15:00");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-12","15:00","15:30");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-12","15:30","16:00");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-12","16:00","16:30");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-12","16:30","17:00");

insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-13","10:00","10:30");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-13","10:30","11:00");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-13","11:00","11:30");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-13","11:30","12:00");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-13","13:00","13:30");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-13","13:30","14:00");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-13","14:00","14:30");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-13","14:30","15:00");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-13","15:00","15:30");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-13","15:30","16:00");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-13","16:00","16:30");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-13","16:30","17:00");

insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-14","10:00","10:30");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-14","10:30","11:00");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-14","11:00","11:30");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-14","11:30","12:00");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-14","13:00","13:30");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-14","13:30","14:00");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-14","14:00","14:30");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-14","14:30","15:00");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-14","15:00","15:30");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-14","15:30","16:00");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-14","16:00","16:30");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-14","16:30","17:00");

insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-15","10:00","10:30");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-15","10:30","11:00");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-15","11:00","11:30");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-15","11:30","12:00");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-15","13:00","13:30");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-15","13:30","14:00");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-15","14:00","14:30");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-15","14:30","15:00");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-15","15:00","15:30");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-15","15:30","16:00");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-15","16:00","16:30");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-15","16:30","17:00");

insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-16","10:00","10:30");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-16","10:30","11:00");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-16","11:00","11:30");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-16","11:30","12:00");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-16","13:00","13:30");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-16","13:30","14:00");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-16","14:00","14:30");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-16","14:30","15:00");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-16","15:00","15:30");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-16","15:30","16:00");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-16","16:00","16:30");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-16","16:30","17:00");

insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-17","10:00","10:30");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-17","10:30","11:00");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-17","11:00","11:30");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-17","11:30","12:00");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-17","13:00","13:30");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-17","13:30","14:00");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-17","14:00","14:30");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-17","14:30","15:00");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-17","15:00","15:30");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-17","15:30","16:00");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-17","16:00","16:30");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-17","16:30","17:00");

insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-18","10:00","10:30");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-18","10:30","11:00");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-18","11:00","11:30");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-18","11:30","12:00");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-18","13:00","13:30");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-18","13:30","14:00");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-18","14:00","14:30");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-18","14:30","15:00");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-18","15:00","15:30");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-18","15:30","16:00");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-18","16:00","16:30");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-18","16:30","17:00");

insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-19","10:00","10:30");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-19","10:30","11:00");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-19","11:00","11:30");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-19","11:30","12:00");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-19","13:00","13:30");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-19","13:30","14:00");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-19","14:00","14:30");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-19","14:30","15:00");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-19","15:00","15:30");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-19","15:30","16:00");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-19","16:00","16:30");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-19","16:30","17:00");

insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-20","10:00","10:30");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-20","10:30","11:00");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-20","11:00","11:30");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-20","11:30","12:00");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-20","13:00","13:30");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-20","13:30","14:00");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-20","14:00","14:30");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-20","14:30","15:00");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-20","15:00","15:30");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-20","15:30","16:00");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-20","16:00","16:30");
insert into slot values(1,"Andrew Roy","andrewr@gmail.com","2019-12-20","16:30","17:00");



insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-11-24","10:00","10:30");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-11-24","10:30","11:00");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-11-24","11:00","11:30");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-11-24","11:30","12:00");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-11-24","13:00","13:30");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-11-24","13:30","14:00");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-11-24","14:00","14:30");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-11-24","14:30","15:00");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-11-24","15:00","15:30");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-11-24","15:30","16:00");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-11-24","16:00","16:30");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-11-24","16:30","17:00");

insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-11-25","10:00","10:30");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-11-25","10:30","11:00");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-11-25","11:00","11:30");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-11-25","11:30","12:00");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-11-25","13:00","13:30");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-11-25","13:30","14:00");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-11-25","14:00","14:30");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-11-25","14:30","15:00");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-11-25","15:00","15:30");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-11-25","15:30","16:00");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-11-25","16:00","16:30");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-11-25","16:30","17:00");

insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-11-26","10:00","10:30");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-11-26","10:30","11:00");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-11-26","11:00","11:30");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-11-26","11:30","12:00");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-11-26","13:00","13:30");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-11-26","13:30","14:00");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-11-26","14:00","14:30");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-11-26","14:30","15:00");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-11-26","15:00","15:30");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-11-26","15:30","16:00");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-11-26","16:00","16:30");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-11-26","16:30","17:00");

insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-11-27","10:00","10:30");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-11-27","10:30","11:00");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-11-27","11:00","11:30");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-11-27","11:30","12:00");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-11-27","13:00","13:30");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-11-27","13:30","14:00");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-11-27","14:00","14:30");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-11-27","14:30","15:00");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-11-27","15:00","15:30");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-11-27","15:30","16:00");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-11-27","16:00","16:30");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-11-27","16:30","17:00");

insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-11-28","10:00","10:30");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-11-28","10:30","11:00");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-11-28","11:00","11:30");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-11-28","11:30","12:00");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-11-28","13:00","13:30");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-11-28","13:30","14:00");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-11-28","14:00","14:30");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-11-28","14:30","15:00");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-11-28","15:00","15:30");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-11-28","15:30","16:00");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-11-28","16:00","16:30");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-11-28","16:30","17:00");

insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-11-29","10:00","10:30");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-11-29","10:30","11:00");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-11-29","11:00","11:30");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-11-29","11:30","12:00");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-11-29","13:00","13:30");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-11-29","13:30","14:00");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-11-29","14:00","14:30");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-11-29","14:30","15:00");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-11-29","15:00","15:30");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-11-29","15:30","16:00");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-11-29","16:00","16:30");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-11-29","16:30","17:00");

insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-11-30","10:00","10:30");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-11-30","10:30","11:00");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-11-30","11:00","11:30");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-11-30","11:30","12:00");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-11-30","13:00","13:30");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-11-30","13:30","14:00");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-11-30","14:00","14:30");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-11-30","14:30","15:00");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-11-30","15:00","15:30");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-11-30","15:30","16:00");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-11-30","16:00","16:30");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-11-30","16:30","17:00");

insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-01","10:00","10:30");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-01","10:30","11:00");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-01","11:00","11:30");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-01","11:30","12:00");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-01","13:00","13:30");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-01","13:30","14:00");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-01","14:00","14:30");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-01","14:30","15:00");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-01","15:00","15:30");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-01","15:30","16:00");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-01","16:00","16:30");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-01","16:30","17:00");


insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-02","10:00","10:30");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-02","10:30","11:00");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-02","11:00","11:30");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-02","11:30","12:00");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-02","13:00","13:30");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-02","13:30","14:00");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-02","14:00","14:30");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-02","14:30","15:00");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-02","15:00","15:30");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-02","15:30","16:00");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-02","16:00","16:30");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-02","16:30","17:00");

insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-03","10:00","10:30");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-03","10:30","11:00");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-03","11:00","11:30");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-03","11:30","12:00");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-03","13:00","13:30");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-03","13:30","14:00");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-03","14:00","14:30");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-03","14:30","15:00");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-03","15:00","15:30");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-03","15:30","16:00");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-03","16:00","16:30");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-03","16:30","17:00");

insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-04","10:00","10:30");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-04","10:30","11:00");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-04","11:00","11:30");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-04","11:30","12:00");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-04","13:00","13:30");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-04","13:30","14:00");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-04","14:00","14:30");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-04","14:30","15:00");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-04","15:00","15:30");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-04","15:30","16:00");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-04","16:00","16:30");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-04","16:30","17:00");


insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-05","10:00","10:30");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-05","10:30","11:00");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-05","11:00","11:30");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-05","11:30","12:00");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-05","13:00","13:30");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-05","13:30","14:00");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-05","14:00","14:30");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-05","14:30","15:00");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-05","15:00","15:30");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-05","15:30","16:00");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-05","16:00","16:30");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-05","16:30","17:00");

insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-06","10:00","10:30");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-06","10:30","11:00");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-06","11:00","11:30");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-06","11:30","12:00");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-06","13:00","13:30");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-06","13:30","14:00");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-06","14:00","14:30");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-06","14:30","15:00");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-06","15:00","15:30");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-06","15:30","16:00");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-06","16:00","16:30");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-06","16:30","17:00");

insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-07","10:00","10:30");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-07","10:30","11:00");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-07","11:00","11:30");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-07","11:30","12:00");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-07","13:00","13:30");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-07","13:30","14:00");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-07","14:00","14:30");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-07","14:30","15:00");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-07","15:00","15:30");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-07","15:30","16:00");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-07","16:00","16:30");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-07","16:30","17:00");


insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-08","10:00","10:30");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-08","10:30","11:00");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-08","11:00","11:30");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-08","11:30","12:00");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-08","13:00","13:30");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-08","13:30","14:00");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-08","14:00","14:30");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-08","14:30","15:00");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-08","15:00","15:30");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-08","15:30","16:00");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-08","16:00","16:30");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-08","16:30","17:00");


insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-09","10:00","10:30");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-09","10:30","11:00");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-09","11:00","11:30");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-09","11:30","12:00");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-09","13:00","13:30");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-09","13:30","14:00");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-09","14:00","14:30");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-09","14:30","15:00");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-09","15:00","15:30");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-09","15:30","16:00");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-09","16:00","16:30");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-09","16:30","17:00");


insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-10","10:00","10:30");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-10","10:30","11:00");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-10","11:00","11:30");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-10","11:30","12:00");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-10","13:00","13:30");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-10","13:30","14:00");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-10","14:00","14:30");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-10","14:30","15:00");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-10","15:00","15:30");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-10","15:30","16:00");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-10","16:00","16:30");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-10","16:30","17:00");

insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-10","10:00","10:30");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-10","10:30","11:00");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-10","11:00","11:30");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-10","11:30","12:00");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-10","13:00","13:30");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-10","13:30","14:00");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-10","14:00","14:30");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-10","14:30","15:00");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-10","15:00","15:30");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-10","15:30","16:00");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-10","16:00","16:30");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-10","16:30","17:00");

insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-11","10:00","10:30");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-11","10:30","11:00");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-11","11:00","11:30");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-11","11:30","12:00");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-11","13:00","13:30");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-11","13:30","14:00");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-11","14:00","14:30");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-11","14:30","15:00");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-11","15:00","15:30");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-11","15:30","16:00");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-11","16:00","16:30");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-11","16:30","17:00");

insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-12","10:00","10:30");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-12","10:30","11:00");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-12","11:00","11:30");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-12","11:30","12:00");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-12","13:00","13:30");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-12","13:30","14:00");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-12","14:00","14:30");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-12","14:30","15:00");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-12","15:00","15:30");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-12","15:30","16:00");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-12","16:00","16:30");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-12","16:30","17:00");

insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-13","10:00","10:30");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-13","10:30","11:00");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-13","11:00","11:30");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-13","11:30","12:00");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-13","13:00","13:30");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-13","13:30","14:00");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-13","14:00","14:30");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-13","14:30","15:00");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-13","15:00","15:30");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-13","15:30","16:00");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-13","16:00","16:30");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-13","16:30","17:00");

insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-14","10:00","10:30");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-14","10:30","11:00");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-14","11:00","11:30");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-14","11:30","12:00");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-14","13:00","13:30");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-14","13:30","14:00");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-14","14:00","14:30");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-14","14:30","15:00");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-14","15:00","15:30");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-14","15:30","16:00");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-14","16:00","16:30");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-14","16:30","17:00");

insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-15","10:00","10:30");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-15","10:30","11:00");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-15","11:00","11:30");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-15","11:30","12:00");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-15","13:00","13:30");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-15","13:30","14:00");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-15","14:00","14:30");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-15","14:30","15:00");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-15","15:00","15:30");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-15","15:30","16:00");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-15","16:00","16:30");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-15","16:30","17:00");

insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-16","10:00","10:30");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-16","10:30","11:00");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-16","11:00","11:30");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-16","11:30","12:00");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-16","13:00","13:30");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-16","13:30","14:00");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-16","14:00","14:30");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-16","14:30","15:00");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-16","15:00","15:30");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-16","15:30","16:00");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-16","16:00","16:30");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-16","16:30","17:00");

insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-17","10:00","10:30");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-17","10:30","11:00");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-17","11:00","11:30");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-17","11:30","12:00");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-17","13:00","13:30");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-17","13:30","14:00");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-17","14:00","14:30");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-17","14:30","15:00");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-17","15:00","15:30");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-17","15:30","16:00");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-17","16:00","16:30");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-17","16:30","17:00");

insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-18","10:00","10:30");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-18","10:30","11:00");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-18","11:00","11:30");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-18","11:30","12:00");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-18","13:00","13:30");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-18","13:30","14:00");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-18","14:00","14:30");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-18","14:30","15:00");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-18","15:00","15:30");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-18","15:30","16:00");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-18","16:00","16:30");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-18","16:30","17:00");

insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-19","10:00","10:30");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-19","10:30","11:00");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-19","11:00","11:30");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-19","11:30","12:00");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-19","13:00","13:30");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-19","13:30","14:00");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-19","14:00","14:30");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-19","14:30","15:00");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-19","15:00","15:30");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-19","15:30","16:00");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-19","16:00","16:30");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-19","16:30","17:00");

insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-20","10:00","10:30");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-20","10:30","11:00");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-20","11:00","11:30");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-20","11:30","12:00");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-20","13:00","13:30");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-20","13:30","14:00");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-20","14:00","14:30");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-20","14:30","15:00");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-20","15:00","15:30");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-20","15:30","16:00");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-20","16:00","16:30");
insert into slot values(2,"Dale Martis","dalem@gmail.com","2019-12-20","16:30","17:00");



insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-11-24","10:00","10:30");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-11-24","10:30","11:00");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-11-24","11:00","11:30");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-11-24","11:30","12:00");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-11-24","13:00","13:30");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-11-24","13:30","14:00");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-11-24","14:00","14:30");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-11-24","14:30","15:00");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-11-24","15:00","15:30");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-11-24","15:30","16:00");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-11-24","16:00","16:30");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-11-24","16:30","17:00");

insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-11-25","10:00","10:30");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-11-25","10:30","11:00");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-11-25","11:00","11:30");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-11-25","11:30","12:00");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-11-25","13:00","13:30");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-11-25","13:30","14:00");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-11-25","14:00","14:30");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-11-25","14:30","15:00");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-11-25","15:00","15:30");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-11-25","15:30","16:00");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-11-25","16:00","16:30");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-11-25","16:30","17:00");

insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-11-26","10:00","10:30");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-11-26","10:30","11:00");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-11-26","11:00","11:30");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-11-26","11:30","12:00");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-11-26","13:00","13:30");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-11-26","13:30","14:00");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-11-26","14:00","14:30");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-11-26","14:30","15:00");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-11-26","15:00","15:30");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-11-26","15:30","16:00");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-11-26","16:00","16:30");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-11-26","16:30","17:00");

insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-11-27","10:00","10:30");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-11-27","10:30","11:00");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-11-27","11:00","11:30");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-11-27","11:30","12:00");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-11-27","13:00","13:30");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-11-27","13:30","14:00");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-11-27","14:00","14:30");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-11-27","14:30","15:00");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-11-27","15:00","15:30");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-11-27","15:30","16:00");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-11-27","16:00","16:30");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-11-27","16:30","17:00");

insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-11-28","10:00","10:30");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-11-28","10:30","11:00");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-11-28","11:00","11:30");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-11-28","11:30","12:00");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-11-28","13:00","13:30");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-11-28","13:30","14:00");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-11-28","14:00","14:30");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-11-28","14:30","15:00");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-11-28","15:00","15:30");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-11-28","15:30","16:00");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-11-28","16:00","16:30");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-11-28","16:30","17:00");

insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-11-29","10:00","10:30");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-11-29","10:30","11:00");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-11-29","11:00","11:30");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-11-29","11:30","12:00");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-11-29","13:00","13:30");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-11-29","13:30","14:00");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-11-29","14:00","14:30");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-11-29","14:30","15:00");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-11-29","15:00","15:30");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-11-29","15:30","16:00");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-11-29","16:00","16:30");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-11-29","16:30","17:00");

insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-11-30","10:00","10:30");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-11-30","10:30","11:00");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-11-30","11:00","11:30");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-11-30","11:30","12:00");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-11-30","13:00","13:30");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-11-30","13:30","14:00");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-11-30","14:00","14:30");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-11-30","14:30","15:00");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-11-30","15:00","15:30");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-11-30","15:30","16:00");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-11-30","16:00","16:30");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-11-30","16:30","17:00");

insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-01","10:00","10:30");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-01","10:30","11:00");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-01","11:00","11:30");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-01","11:30","12:00");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-01","13:00","13:30");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-01","13:30","14:00");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-01","14:00","14:30");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-01","14:30","15:00");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-01","15:00","15:30");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-01","15:30","16:00");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-01","16:00","16:30");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-01","16:30","17:00");


insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-02","10:00","10:30");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-02","10:30","11:00");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-02","11:00","11:30");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-02","11:30","12:00");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-02","13:00","13:30");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-02","13:30","14:00");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-02","14:00","14:30");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-02","14:30","15:00");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-02","15:00","15:30");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-02","15:30","16:00");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-02","16:00","16:30");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-02","16:30","17:00");

insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-03","10:00","10:30");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-03","10:30","11:00");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-03","11:00","11:30");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-03","11:30","12:00");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-03","13:00","13:30");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-03","13:30","14:00");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-03","14:00","14:30");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-03","14:30","15:00");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-03","15:00","15:30");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-03","15:30","16:00");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-03","16:00","16:30");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-03","16:30","17:00");

insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-04","10:00","10:30");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-04","10:30","11:00");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-04","11:00","11:30");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-04","11:30","12:00");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-04","13:00","13:30");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-04","13:30","14:00");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-04","14:00","14:30");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-04","14:30","15:00");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-04","15:00","15:30");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-04","15:30","16:00");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-04","16:00","16:30");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-04","16:30","17:00");


insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-05","10:00","10:30");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-05","10:30","11:00");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-05","11:00","11:30");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-05","11:30","12:00");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-05","13:00","13:30");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-05","13:30","14:00");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-05","14:00","14:30");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-05","14:30","15:00");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-05","15:00","15:30");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-05","15:30","16:00");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-05","16:00","16:30");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-05","16:30","17:00");

insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-06","10:00","10:30");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-06","10:30","11:00");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-06","11:00","11:30");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-06","11:30","12:00");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-06","13:00","13:30");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-06","13:30","14:00");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-06","14:00","14:30");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-06","14:30","15:00");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-06","15:00","15:30");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-06","15:30","16:00");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-06","16:00","16:30");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-06","16:30","17:00");

insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-07","10:00","10:30");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-07","10:30","11:00");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-07","11:00","11:30");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-07","11:30","12:00");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-07","13:00","13:30");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-07","13:30","14:00");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-07","14:00","14:30");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-07","14:30","15:00");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-07","15:00","15:30");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-07","15:30","16:00");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-07","16:00","16:30");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-07","16:30","17:00");


insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-08","10:00","10:30");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-08","10:30","11:00");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-08","11:00","11:30");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-08","11:30","12:00");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-08","13:00","13:30");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-08","13:30","14:00");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-08","14:00","14:30");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-08","14:30","15:00");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-08","15:00","15:30");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-08","15:30","16:00");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-08","16:00","16:30");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-08","16:30","17:00");


insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-09","10:00","10:30");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-09","10:30","11:00");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-09","11:00","11:30");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-09","11:30","12:00");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-09","13:00","13:30");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-09","13:30","14:00");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-09","14:00","14:30");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-09","14:30","15:00");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-09","15:00","15:30");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-09","15:30","16:00");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-09","16:00","16:30");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-09","16:30","17:00");


insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-10","10:00","10:30");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-10","10:30","11:00");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-10","11:00","11:30");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-10","11:30","12:00");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-10","13:00","13:30");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-10","13:30","14:00");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-10","14:00","14:30");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-10","14:30","15:00");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-10","15:00","15:30");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-10","15:30","16:00");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-10","16:00","16:30");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-10","16:30","17:00");

insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-10","10:00","10:30");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-10","10:30","11:00");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-10","11:00","11:30");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-10","11:30","12:00");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-10","13:00","13:30");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-10","13:30","14:00");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-10","14:00","14:30");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-10","14:30","15:00");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-10","15:00","15:30");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-10","15:30","16:00");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-10","16:00","16:30");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-10","16:30","17:00");

insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-11","10:00","10:30");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-11","10:30","11:00");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-11","11:00","11:30");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-11","11:30","12:00");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-11","13:00","13:30");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-11","13:30","14:00");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-11","14:00","14:30");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-11","14:30","15:00");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-11","15:00","15:30");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-11","15:30","16:00");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-11","16:00","16:30");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-11","16:30","17:00");

insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-12","10:00","10:30");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-12","10:30","11:00");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-12","11:00","11:30");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-12","11:30","12:00");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-12","13:00","13:30");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-12","13:30","14:00");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-12","14:00","14:30");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-12","14:30","15:00");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-12","15:00","15:30");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-12","15:30","16:00");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-12","16:00","16:30");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-12","16:30","17:00");

insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-13","10:00","10:30");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-13","10:30","11:00");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-13","11:00","11:30");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-13","11:30","12:00");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-13","13:00","13:30");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-13","13:30","14:00");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-13","14:00","14:30");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-13","14:30","15:00");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-13","15:00","15:30");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-13","15:30","16:00");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-13","16:00","16:30");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-13","16:30","17:00");

insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-14","10:00","10:30");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-14","10:30","11:00");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-14","11:00","11:30");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-14","11:30","12:00");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-14","13:00","13:30");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-14","13:30","14:00");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-14","14:00","14:30");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-14","14:30","15:00");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-14","15:00","15:30");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-14","15:30","16:00");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-14","16:00","16:30");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-14","16:30","17:00");

insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-15","10:00","10:30");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-15","10:30","11:00");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-15","11:00","11:30");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-15","11:30","12:00");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-15","13:00","13:30");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-15","13:30","14:00");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-15","14:00","14:30");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-15","14:30","15:00");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-15","15:00","15:30");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-15","15:30","16:00");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-15","16:00","16:30");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-15","16:30","17:00");

insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-16","10:00","10:30");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-16","10:30","11:00");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-16","11:00","11:30");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-16","11:30","12:00");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-16","13:00","13:30");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-16","13:30","14:00");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-16","14:00","14:30");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-16","14:30","15:00");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-16","15:00","15:30");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-16","15:30","16:00");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-16","16:00","16:30");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-16","16:30","17:00");

insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-17","10:00","10:30");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-17","10:30","11:00");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-17","11:00","11:30");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-17","11:30","12:00");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-17","13:00","13:30");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-17","13:30","14:00");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-17","14:00","14:30");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-17","14:30","15:00");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-17","15:00","15:30");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-17","15:30","16:00");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-17","16:00","16:30");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-17","16:30","17:00");

insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-18","10:00","10:30");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-18","10:30","11:00");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-18","11:00","11:30");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-18","11:30","12:00");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-18","13:00","13:30");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-18","13:30","14:00");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-18","14:00","14:30");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-18","14:30","15:00");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-18","15:00","15:30");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-18","15:30","16:00");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-18","16:00","16:30");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-18","16:30","17:00");

insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-19","10:00","10:30");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-19","10:30","11:00");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-19","11:00","11:30");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-19","11:30","12:00");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-19","13:00","13:30");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-19","13:30","14:00");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-19","14:00","14:30");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-19","14:30","15:00");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-19","15:00","15:30");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-19","15:30","16:00");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-19","16:00","16:30");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-19","16:30","17:00");

insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-20","10:00","10:30");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-20","10:30","11:00");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-20","11:00","11:30");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-20","11:30","12:00");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-20","13:00","13:30");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-20","13:30","14:00");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-20","14:00","14:30");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-20","14:30","15:00");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-20","15:00","15:30");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-20","15:30","16:00");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-20","16:00","16:30");
insert into slot values(3,"Bella Weasley","bellaw@gmail.com","2019-12-20","16:30","17:00");


insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-11-24","10:00","10:30");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-11-24","10:30","11:00");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-11-24","11:00","11:30");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-11-24","11:30","12:00");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-11-24","13:00","13:30");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-11-24","13:30","14:00");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-11-24","14:00","14:30");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-11-24","14:30","15:00");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-11-24","15:00","15:30");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-11-24","15:30","16:00");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-11-24","16:00","16:30");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-11-24","16:30","17:00");

insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-11-25","10:00","10:30");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-11-25","10:30","11:00");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-11-25","11:00","11:30");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-11-25","11:30","12:00");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-11-25","13:00","13:30");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-11-25","13:30","14:00");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-11-25","14:00","14:30");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-11-25","14:30","15:00");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-11-25","15:00","15:30");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-11-25","15:30","16:00");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-11-25","16:00","16:30");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-11-25","16:30","17:00");

insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-11-26","10:00","10:30");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-11-26","10:30","11:00");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-11-26","11:00","11:30");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-11-26","11:30","12:00");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-11-26","13:00","13:30");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-11-26","13:30","14:00");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-11-26","14:00","14:30");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-11-26","14:30","15:00");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-11-26","15:00","15:30");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-11-26","15:30","16:00");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-11-26","16:00","16:30");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-11-26","16:30","17:00");

insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-11-27","10:00","10:30");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-11-27","10:30","11:00");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-11-27","11:00","11:30");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-11-27","11:30","12:00");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-11-27","13:00","13:30");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-11-27","13:30","14:00");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-11-27","14:00","14:30");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-11-27","14:30","15:00");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-11-27","15:00","15:30");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-11-27","15:30","16:00");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-11-27","16:00","16:30");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-11-27","16:30","17:00");

insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-11-28","10:00","10:30");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-11-28","10:30","11:00");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-11-28","11:00","11:30");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-11-28","11:30","12:00");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-11-28","13:00","13:30");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-11-28","13:30","14:00");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-11-28","14:00","14:30");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-11-28","14:30","15:00");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-11-28","15:00","15:30");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-11-28","15:30","16:00");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-11-28","16:00","16:30");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-11-28","16:30","17:00");

insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-11-29","10:00","10:30");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-11-29","10:30","11:00");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-11-29","11:00","11:30");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-11-29","11:30","12:00");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-11-29","13:00","13:30");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-11-29","13:30","14:00");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-11-29","14:00","14:30");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-11-29","14:30","15:00");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-11-29","15:00","15:30");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-11-29","15:30","16:00");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-11-29","16:00","16:30");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-11-29","16:30","17:00");

insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-11-30","10:00","10:30");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-11-30","10:30","11:00");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-11-30","11:00","11:30");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-11-30","11:30","12:00");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-11-30","13:00","13:30");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-11-30","13:30","14:00");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-11-30","14:00","14:30");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-11-30","14:30","15:00");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-11-30","15:00","15:30");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-11-30","15:30","16:00");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-11-30","16:00","16:30");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-11-30","16:30","17:00");

insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-01","10:00","10:30");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-01","10:30","11:00");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-01","11:00","11:30");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-01","11:30","12:00");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-01","13:00","13:30");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-01","13:30","14:00");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-01","14:00","14:30");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-01","14:30","15:00");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-01","15:00","15:30");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-01","15:30","16:00");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-01","16:00","16:30");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-01","16:30","17:00");


insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-02","10:00","10:30");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-02","10:30","11:00");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-02","11:00","11:30");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-02","11:30","12:00");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-02","13:00","13:30");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-02","13:30","14:00");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-02","14:00","14:30");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-02","14:30","15:00");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-02","15:00","15:30");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-02","15:30","16:00");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-02","16:00","16:30");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-02","16:30","17:00");

insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-03","10:00","10:30");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-03","10:30","11:00");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-03","11:00","11:30");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-03","11:30","12:00");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-03","13:00","13:30");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-03","13:30","14:00");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-03","14:00","14:30");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-03","14:30","15:00");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-03","15:00","15:30");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-03","15:30","16:00");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-03","16:00","16:30");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-03","16:30","17:00");

insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-04","10:00","10:30");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-04","10:30","11:00");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-04","11:00","11:30");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-04","11:30","12:00");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-04","13:00","13:30");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-04","13:30","14:00");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-04","14:00","14:30");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-04","14:30","15:00");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-04","15:00","15:30");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-04","15:30","16:00");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-04","16:00","16:30");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-04","16:30","17:00");


insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-05","10:00","10:30");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-05","10:30","11:00");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-05","11:00","11:30");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-05","11:30","12:00");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-05","13:00","13:30");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-05","13:30","14:00");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-05","14:00","14:30");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-05","14:30","15:00");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-05","15:00","15:30");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-05","15:30","16:00");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-05","16:00","16:30");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-05","16:30","17:00");

insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-06","10:00","10:30");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-06","10:30","11:00");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-06","11:00","11:30");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-06","11:30","12:00");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-06","13:00","13:30");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-06","13:30","14:00");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-06","14:00","14:30");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-06","14:30","15:00");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-06","15:00","15:30");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-06","15:30","16:00");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-06","16:00","16:30");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-06","16:30","17:00");

insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-07","10:00","10:30");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-07","10:30","11:00");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-07","11:00","11:30");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-07","11:30","12:00");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-07","13:00","13:30");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-07","13:30","14:00");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-07","14:00","14:30");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-07","14:30","15:00");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-07","15:00","15:30");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-07","15:30","16:00");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-07","16:00","16:30");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-07","16:30","17:00");


insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-08","10:00","10:30");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-08","10:30","11:00");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-08","11:00","11:30");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-08","11:30","12:00");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-08","13:00","13:30");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-08","13:30","14:00");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-08","14:00","14:30");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-08","14:30","15:00");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-08","15:00","15:30");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-08","15:30","16:00");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-08","16:00","16:30");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-08","16:30","17:00");


insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-09","10:00","10:30");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-09","10:30","11:00");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-09","11:00","11:30");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-09","11:30","12:00");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-09","13:00","13:30");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-09","13:30","14:00");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-09","14:00","14:30");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-09","14:30","15:00");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-09","15:00","15:30");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-09","15:30","16:00");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-09","16:00","16:30");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-09","16:30","17:00");


insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-10","10:00","10:30");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-10","10:30","11:00");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-10","11:00","11:30");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-10","11:30","12:00");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-10","13:00","13:30");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-10","13:30","14:00");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-10","14:00","14:30");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-10","14:30","15:00");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-10","15:00","15:30");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-10","15:30","16:00");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-10","16:00","16:30");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-10","16:30","17:00");

insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-10","10:00","10:30");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-10","10:30","11:00");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-10","11:00","11:30");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-10","11:30","12:00");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-10","13:00","13:30");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-10","13:30","14:00");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-10","14:00","14:30");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-10","14:30","15:00");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-10","15:00","15:30");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-10","15:30","16:00");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-10","16:00","16:30");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-10","16:30","17:00");

insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-11","10:00","10:30");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-11","10:30","11:00");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-11","11:00","11:30");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-11","11:30","12:00");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-11","13:00","13:30");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-11","13:30","14:00");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-11","14:00","14:30");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-11","14:30","15:00");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-11","15:00","15:30");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-11","15:30","16:00");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-11","16:00","16:30");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-11","16:30","17:00");

insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-12","10:00","10:30");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-12","10:30","11:00");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-12","11:00","11:30");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-12","11:30","12:00");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-12","13:00","13:30");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-12","13:30","14:00");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-12","14:00","14:30");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-12","14:30","15:00");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-12","15:00","15:30");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-12","15:30","16:00");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-12","16:00","16:30");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-12","16:30","17:00");

insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-13","10:00","10:30");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-13","10:30","11:00");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-13","11:00","11:30");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-13","11:30","12:00");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-13","13:00","13:30");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-13","13:30","14:00");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-13","14:00","14:30");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-13","14:30","15:00");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-13","15:00","15:30");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-13","15:30","16:00");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-13","16:00","16:30");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-13","16:30","17:00");

insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-14","10:00","10:30");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-14","10:30","11:00");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-14","11:00","11:30");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-14","11:30","12:00");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-14","13:00","13:30");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-14","13:30","14:00");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-14","14:00","14:30");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-14","14:30","15:00");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-14","15:00","15:30");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-14","15:30","16:00");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-14","16:00","16:30");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-14","16:30","17:00");

insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-15","10:00","10:30");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-15","10:30","11:00");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-15","11:00","11:30");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-15","11:30","12:00");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-15","13:00","13:30");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-15","13:30","14:00");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-15","14:00","14:30");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-15","14:30","15:00");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-15","15:00","15:30");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-15","15:30","16:00");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-15","16:00","16:30");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-15","16:30","17:00");

insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-16","10:00","10:30");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-16","10:30","11:00");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-16","11:00","11:30");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-16","11:30","12:00");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-16","13:00","13:30");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-16","13:30","14:00");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-16","14:00","14:30");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-16","14:30","15:00");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-16","15:00","15:30");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-16","15:30","16:00");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-16","16:00","16:30");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-16","16:30","17:00");

insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-17","10:00","10:30");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-17","10:30","11:00");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-17","11:00","11:30");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-17","11:30","12:00");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-17","13:00","13:30");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-17","13:30","14:00");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-17","14:00","14:30");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-17","14:30","15:00");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-17","15:00","15:30");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-17","15:30","16:00");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-17","16:00","16:30");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-17","16:30","17:00");

insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-18","10:00","10:30");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-18","10:30","11:00");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-18","11:00","11:30");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-18","11:30","12:00");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-18","13:00","13:30");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-18","13:30","14:00");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-18","14:00","14:30");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-18","14:30","15:00");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-18","15:00","15:30");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-18","15:30","16:00");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-18","16:00","16:30");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-18","16:30","17:00");

insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-19","10:00","10:30");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-19","10:30","11:00");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-19","11:00","11:30");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-19","11:30","12:00");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-19","13:00","13:30");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-19","13:30","14:00");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-19","14:00","14:30");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-19","14:30","15:00");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-19","15:00","15:30");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-19","15:30","16:00");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-19","16:00","16:30");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-19","16:30","17:00");

insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-20","10:00","10:30");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-20","10:30","11:00");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-20","11:00","11:30");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-20","11:30","12:00");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-20","13:00","13:30");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-20","13:30","14:00");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-20","14:00","14:30");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-20","14:30","15:00");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-20","15:00","15:30");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-20","15:30","16:00");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-20","16:00","16:30");
insert into slot values(4,"Jack Gran","jackg@gmail.com","2019-12-20","16:30","17:00");


insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-11-24","10:00","10:30");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-11-24","10:30","11:00");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-11-24","11:00","11:30");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-11-24","11:30","12:00");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-11-24","13:00","13:30");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-11-24","13:30","14:00");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-11-24","14:00","14:30");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-11-24","14:30","15:00");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-11-24","15:00","15:30");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-11-24","15:30","16:00");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-11-24","16:00","16:30");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-11-24","16:30","17:00");

insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-11-25","10:00","10:30");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-11-25","10:30","11:00");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-11-25","11:00","11:30");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-11-25","11:30","12:00");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-11-25","13:00","13:30");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-11-25","13:30","14:00");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-11-25","14:00","14:30");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-11-25","14:30","15:00");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-11-25","15:00","15:30");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-11-25","15:30","16:00");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-11-25","16:00","16:30");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-11-25","16:30","17:00");

insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-11-26","10:00","10:30");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-11-26","10:30","11:00");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-11-26","11:00","11:30");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-11-26","11:30","12:00");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-11-26","13:00","13:30");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-11-26","13:30","14:00");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-11-26","14:00","14:30");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-11-26","14:30","15:00");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-11-26","15:00","15:30");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-11-26","15:30","16:00");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-11-26","16:00","16:30");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-11-26","16:30","17:00");

insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-11-27","10:00","10:30");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-11-27","10:30","11:00");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-11-27","11:00","11:30");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-11-27","11:30","12:00");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-11-27","13:00","13:30");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-11-27","13:30","14:00");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-11-27","14:00","14:30");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-11-27","14:30","15:00");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-11-27","15:00","15:30");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-11-27","15:30","16:00");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-11-27","16:00","16:30");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-11-27","16:30","17:00");

insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-11-28","10:00","10:30");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-11-28","10:30","11:00");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-11-28","11:00","11:30");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-11-28","11:30","12:00");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-11-28","13:00","13:30");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-11-28","13:30","14:00");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-11-28","14:00","14:30");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-11-28","14:30","15:00");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-11-28","15:00","15:30");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-11-28","15:30","16:00");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-11-28","16:00","16:30");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-11-28","16:30","17:00");

insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-11-29","10:00","10:30");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-11-29","10:30","11:00");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-11-29","11:00","11:30");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-11-29","11:30","12:00");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-11-29","13:00","13:30");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-11-29","13:30","14:00");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-11-29","14:00","14:30");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-11-29","14:30","15:00");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-11-29","15:00","15:30");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-11-29","15:30","16:00");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-11-29","16:00","16:30");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-11-29","16:30","17:00");

insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-11-30","10:00","10:30");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-11-30","10:30","11:00");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-11-30","11:00","11:30");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-11-30","11:30","12:00");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-11-30","13:00","13:30");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-11-30","13:30","14:00");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-11-30","14:00","14:30");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-11-30","14:30","15:00");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-11-30","15:00","15:30");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-11-30","15:30","16:00");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-11-30","16:00","16:30");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-11-30","16:30","17:00");

insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-01","10:00","10:30");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-01","10:30","11:00");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-01","11:00","11:30");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-01","11:30","12:00");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-01","13:00","13:30");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-01","13:30","14:00");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-01","14:00","14:30");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-01","14:30","15:00");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-01","15:00","15:30");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-01","15:30","16:00");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-01","16:00","16:30");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-01","16:30","17:00");


insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-02","10:00","10:30");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-02","10:30","11:00");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-02","11:00","11:30");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-02","11:30","12:00");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-02","13:00","13:30");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-02","13:30","14:00");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-02","14:00","14:30");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-02","14:30","15:00");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-02","15:00","15:30");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-02","15:30","16:00");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-02","16:00","16:30");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-02","16:30","17:00");

insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-03","10:00","10:30");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-03","10:30","11:00");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-03","11:00","11:30");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-03","11:30","12:00");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-03","13:00","13:30");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-03","13:30","14:00");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-03","14:00","14:30");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-03","14:30","15:00");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-03","15:00","15:30");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-03","15:30","16:00");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-03","16:00","16:30");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-03","16:30","17:00");

insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-04","10:00","10:30");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-04","10:30","11:00");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-04","11:00","11:30");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-04","11:30","12:00");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-04","13:00","13:30");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-04","13:30","14:00");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-04","14:00","14:30");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-04","14:30","15:00");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-04","15:00","15:30");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-04","15:30","16:00");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-04","16:00","16:30");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-04","16:30","17:00");


insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-05","10:00","10:30");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-05","10:30","11:00");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-05","11:00","11:30");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-05","11:30","12:00");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-05","13:00","13:30");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-05","13:30","14:00");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-05","14:00","14:30");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-05","14:30","15:00");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-05","15:00","15:30");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-05","15:30","16:00");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-05","16:00","16:30");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-05","16:30","17:00");

insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-06","10:00","10:30");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-06","10:30","11:00");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-06","11:00","11:30");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-06","11:30","12:00");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-06","13:00","13:30");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-06","13:30","14:00");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-06","14:00","14:30");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-06","14:30","15:00");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-06","15:00","15:30");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-06","15:30","16:00");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-06","16:00","16:30");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-06","16:30","17:00");

insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-07","10:00","10:30");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-07","10:30","11:00");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-07","11:00","11:30");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-07","11:30","12:00");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-07","13:00","13:30");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-07","13:30","14:00");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-07","14:00","14:30");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-07","14:30","15:00");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-07","15:00","15:30");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-07","15:30","16:00");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-07","16:00","16:30");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-07","16:30","17:00");


insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-08","10:00","10:30");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-08","10:30","11:00");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-08","11:00","11:30");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-08","11:30","12:00");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-08","13:00","13:30");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-08","13:30","14:00");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-08","14:00","14:30");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-08","14:30","15:00");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-08","15:00","15:30");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-08","15:30","16:00");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-08","16:00","16:30");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-08","16:30","17:00");


insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-09","10:00","10:30");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-09","10:30","11:00");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-09","11:00","11:30");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-09","11:30","12:00");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-09","13:00","13:30");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-09","13:30","14:00");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-09","14:00","14:30");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-09","14:30","15:00");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-09","15:00","15:30");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-09","15:30","16:00");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-09","16:00","16:30");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-09","16:30","17:00");


insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-10","10:00","10:30");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-10","10:30","11:00");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-10","11:00","11:30");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-10","11:30","12:00");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-10","13:00","13:30");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-10","13:30","14:00");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-10","14:00","14:30");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-10","14:30","15:00");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-10","15:00","15:30");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-10","15:30","16:00");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-10","16:00","16:30");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-10","16:30","17:00");

insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-10","10:00","10:30");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-10","10:30","11:00");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-10","11:00","11:30");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-10","11:30","12:00");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-10","13:00","13:30");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-10","13:30","14:00");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-10","14:00","14:30");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-10","14:30","15:00");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-10","15:00","15:30");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-10","15:30","16:00");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-10","16:00","16:30");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-10","16:30","17:00");

insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-11","10:00","10:30");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-11","10:30","11:00");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-11","11:00","11:30");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-11","11:30","12:00");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-11","13:00","13:30");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-11","13:30","14:00");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-11","14:00","14:30");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-11","14:30","15:00");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-11","15:00","15:30");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-11","15:30","16:00");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-11","16:00","16:30");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-11","16:30","17:00");

insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-12","10:00","10:30");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-12","10:30","11:00");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-12","11:00","11:30");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-12","11:30","12:00");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-12","13:00","13:30");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-12","13:30","14:00");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-12","14:00","14:30");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-12","14:30","15:00");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-12","15:00","15:30");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-12","15:30","16:00");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-12","16:00","16:30");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-12","16:30","17:00");

insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-13","10:00","10:30");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-13","10:30","11:00");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-13","11:00","11:30");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-13","11:30","12:00");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-13","13:00","13:30");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-13","13:30","14:00");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-13","14:00","14:30");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-13","14:30","15:00");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-13","15:00","15:30");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-13","15:30","16:00");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-13","16:00","16:30");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-13","16:30","17:00");

insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-14","10:00","10:30");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-14","10:30","11:00");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-14","11:00","11:30");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-14","11:30","12:00");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-14","13:00","13:30");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-14","13:30","14:00");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-14","14:00","14:30");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-14","14:30","15:00");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-14","15:00","15:30");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-14","15:30","16:00");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-14","16:00","16:30");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-14","16:30","17:00");

insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-15","10:00","10:30");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-15","10:30","11:00");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-15","11:00","11:30");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-15","11:30","12:00");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-15","13:00","13:30");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-15","13:30","14:00");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-15","14:00","14:30");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-15","14:30","15:00");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-15","15:00","15:30");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-15","15:30","16:00");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-15","16:00","16:30");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-15","16:30","17:00");

insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-16","10:00","10:30");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-16","10:30","11:00");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-16","11:00","11:30");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-16","11:30","12:00");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-16","13:00","13:30");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-16","13:30","14:00");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-16","14:00","14:30");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-16","14:30","15:00");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-16","15:00","15:30");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-16","15:30","16:00");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-16","16:00","16:30");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-16","16:30","17:00");

insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-17","10:00","10:30");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-17","10:30","11:00");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-17","11:00","11:30");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-17","11:30","12:00");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-17","13:00","13:30");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-17","13:30","14:00");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-17","14:00","14:30");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-17","14:30","15:00");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-17","15:00","15:30");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-17","15:30","16:00");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-17","16:00","16:30");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-17","16:30","17:00");

insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-18","10:00","10:30");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-18","10:30","11:00");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-18","11:00","11:30");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-18","11:30","12:00");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-18","13:00","13:30");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-18","13:30","14:00");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-18","14:00","14:30");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-18","14:30","15:00");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-18","15:00","15:30");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-18","15:30","16:00");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-18","16:00","16:30");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-18","16:30","17:00");

insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-19","10:00","10:30");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-19","10:30","11:00");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-19","11:00","11:30");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-19","11:30","12:00");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-19","13:00","13:30");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-19","13:30","14:00");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-19","14:00","14:30");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-19","14:30","15:00");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-19","15:00","15:30");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-19","15:30","16:00");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-19","16:00","16:30");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-19","16:30","17:00");

insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-20","10:00","10:30");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-20","10:30","11:00");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-20","11:00","11:30");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-20","11:30","12:00");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-20","13:00","13:30");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-20","13:30","14:00");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-20","14:00","14:30");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-20","14:30","15:00");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-20","15:00","15:30");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-20","15:30","16:00");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-20","16:00","16:30");
insert into slot values(5,"Harry Shaw","harrys@gmail.com","2019-12-20","16:30","17:00");


insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-11-24","10:00","10:30");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-11-24","10:30","11:00");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-11-24","11:00","11:30");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-11-24","11:30","12:00");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-11-24","13:00","13:30");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-11-24","13:30","14:00");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-11-24","14:00","14:30");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-11-24","14:30","15:00");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-11-24","15:00","15:30");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-11-24","15:30","16:00");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-11-24","16:00","16:30");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-11-24","16:30","17:00");

insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-11-25","10:00","10:30");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-11-25","10:30","11:00");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-11-25","11:00","11:30");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-11-25","11:30","12:00");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-11-25","13:00","13:30");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-11-25","13:30","14:00");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-11-25","14:00","14:30");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-11-25","14:30","15:00");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-11-25","15:00","15:30");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-11-25","15:30","16:00");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-11-25","16:00","16:30");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-11-25","16:30","17:00");

insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-11-26","10:00","10:30");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-11-26","10:30","11:00");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-11-26","11:00","11:30");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-11-26","11:30","12:00");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-11-26","13:00","13:30");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-11-26","13:30","14:00");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-11-26","14:00","14:30");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-11-26","14:30","15:00");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-11-26","15:00","15:30");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-11-26","15:30","16:00");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-11-26","16:00","16:30");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-11-26","16:30","17:00");

insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-11-27","10:00","10:30");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-11-27","10:30","11:00");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-11-27","11:00","11:30");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-11-27","11:30","12:00");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-11-27","13:00","13:30");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-11-27","13:30","14:00");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-11-27","14:00","14:30");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-11-27","14:30","15:00");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-11-27","15:00","15:30");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-11-27","15:30","16:00");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-11-27","16:00","16:30");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-11-27","16:30","17:00");

insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-11-28","10:00","10:30");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-11-28","10:30","11:00");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-11-28","11:00","11:30");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-11-28","11:30","12:00");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-11-28","13:00","13:30");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-11-28","13:30","14:00");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-11-28","14:00","14:30");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-11-28","14:30","15:00");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-11-28","15:00","15:30");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-11-28","15:30","16:00");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-11-28","16:00","16:30");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-11-28","16:30","17:00");

insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-11-29","10:00","10:30");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-11-29","10:30","11:00");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-11-29","11:00","11:30");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-11-29","11:30","12:00");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-11-29","13:00","13:30");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-11-29","13:30","14:00");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-11-29","14:00","14:30");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-11-29","14:30","15:00");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-11-29","15:00","15:30");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-11-29","15:30","16:00");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-11-29","16:00","16:30");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-11-29","16:30","17:00");

insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-11-30","10:00","10:30");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-11-30","10:30","11:00");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-11-30","11:00","11:30");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-11-30","11:30","12:00");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-11-30","13:00","13:30");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-11-30","13:30","14:00");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-11-30","14:00","14:30");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-11-30","14:30","15:00");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-11-30","15:00","15:30");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-11-30","15:30","16:00");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-11-30","16:00","16:30");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-11-30","16:30","17:00");

insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-01","10:00","10:30");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-01","10:30","11:00");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-01","11:00","11:30");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-01","11:30","12:00");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-01","13:00","13:30");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-01","13:30","14:00");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-01","14:00","14:30");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-01","14:30","15:00");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-01","15:00","15:30");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-01","15:30","16:00");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-01","16:00","16:30");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-01","16:30","17:00");


insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-02","10:00","10:30");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-02","10:30","11:00");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-02","11:00","11:30");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-02","11:30","12:00");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-02","13:00","13:30");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-02","13:30","14:00");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-02","14:00","14:30");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-02","14:30","15:00");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-02","15:00","15:30");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-02","15:30","16:00");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-02","16:00","16:30");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-02","16:30","17:00");

insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-03","10:00","10:30");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-03","10:30","11:00");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-03","11:00","11:30");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-03","11:30","12:00");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-03","13:00","13:30");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-03","13:30","14:00");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-03","14:00","14:30");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-03","14:30","15:00");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-03","15:00","15:30");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-03","15:30","16:00");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-03","16:00","16:30");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-03","16:30","17:00");

insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-04","10:00","10:30");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-04","10:30","11:00");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-04","11:00","11:30");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-04","11:30","12:00");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-04","13:00","13:30");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-04","13:30","14:00");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-04","14:00","14:30");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-04","14:30","15:00");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-04","15:00","15:30");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-04","15:30","16:00");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-04","16:00","16:30");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-04","16:30","17:00");


insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-05","10:00","10:30");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-05","10:30","11:00");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-05","11:00","11:30");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-05","11:30","12:00");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-05","13:00","13:30");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-05","13:30","14:00");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-05","14:00","14:30");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-05","14:30","15:00");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-05","15:00","15:30");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-05","15:30","16:00");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-05","16:00","16:30");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-05","16:30","17:00");

insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-06","10:00","10:30");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-06","10:30","11:00");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-06","11:00","11:30");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-06","11:30","12:00");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-06","13:00","13:30");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-06","13:30","14:00");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-06","14:00","14:30");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-06","14:30","15:00");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-06","15:00","15:30");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-06","15:30","16:00");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-06","16:00","16:30");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-06","16:30","17:00");

insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-07","10:00","10:30");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-07","10:30","11:00");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-07","11:00","11:30");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-07","11:30","12:00");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-07","13:00","13:30");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-07","13:30","14:00");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-07","14:00","14:30");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-07","14:30","15:00");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-07","15:00","15:30");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-07","15:30","16:00");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-07","16:00","16:30");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-07","16:30","17:00");


insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-08","10:00","10:30");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-08","10:30","11:00");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-08","11:00","11:30");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-08","11:30","12:00");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-08","13:00","13:30");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-08","13:30","14:00");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-08","14:00","14:30");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-08","14:30","15:00");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-08","15:00","15:30");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-08","15:30","16:00");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-08","16:00","16:30");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-08","16:30","17:00");


insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-09","10:00","10:30");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-09","10:30","11:00");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-09","11:00","11:30");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-09","11:30","12:00");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-09","13:00","13:30");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-09","13:30","14:00");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-09","14:00","14:30");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-09","14:30","15:00");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-09","15:00","15:30");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-09","15:30","16:00");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-09","16:00","16:30");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-09","16:30","17:00");


insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-10","10:00","10:30");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-10","10:30","11:00");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-10","11:00","11:30");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-10","11:30","12:00");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-10","13:00","13:30");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-10","13:30","14:00");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-10","14:00","14:30");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-10","14:30","15:00");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-10","15:00","15:30");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-10","15:30","16:00");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-10","16:00","16:30");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-10","16:30","17:00");

insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-10","10:00","10:30");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-10","10:30","11:00");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-10","11:00","11:30");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-10","11:30","12:00");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-10","13:00","13:30");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-10","13:30","14:00");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-10","14:00","14:30");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-10","14:30","15:00");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-10","15:00","15:30");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-10","15:30","16:00");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-10","16:00","16:30");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-10","16:30","17:00");

insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-11","10:00","10:30");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-11","10:30","11:00");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-11","11:00","11:30");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-11","11:30","12:00");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-11","13:00","13:30");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-11","13:30","14:00");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-11","14:00","14:30");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-11","14:30","15:00");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-11","15:00","15:30");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-11","15:30","16:00");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-11","16:00","16:30");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-11","16:30","17:00");

insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-12","10:00","10:30");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-12","10:30","11:00");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-12","11:00","11:30");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-12","11:30","12:00");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-12","13:00","13:30");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-12","13:30","14:00");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-12","14:00","14:30");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-12","14:30","15:00");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-12","15:00","15:30");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-12","15:30","16:00");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-12","16:00","16:30");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-12","16:30","17:00");

insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-13","10:00","10:30");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-13","10:30","11:00");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-13","11:00","11:30");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-13","11:30","12:00");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-13","13:00","13:30");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-13","13:30","14:00");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-13","14:00","14:30");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-13","14:30","15:00");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-13","15:00","15:30");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-13","15:30","16:00");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-13","16:00","16:30");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-13","16:30","17:00");

insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-14","10:00","10:30");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-14","10:30","11:00");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-14","11:00","11:30");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-14","11:30","12:00");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-14","13:00","13:30");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-14","13:30","14:00");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-14","14:00","14:30");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-14","14:30","15:00");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-14","15:00","15:30");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-14","15:30","16:00");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-14","16:00","16:30");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-14","16:30","17:00");

insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-15","10:00","10:30");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-15","10:30","11:00");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-15","11:00","11:30");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-15","11:30","12:00");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-15","13:00","13:30");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-15","13:30","14:00");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-15","14:00","14:30");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-15","14:30","15:00");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-15","15:00","15:30");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-15","15:30","16:00");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-15","16:00","16:30");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-15","16:30","17:00");

insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-16","10:00","10:30");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-16","10:30","11:00");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-16","11:00","11:30");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-16","11:30","12:00");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-16","13:00","13:30");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-16","13:30","14:00");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-16","14:00","14:30");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-16","14:30","15:00");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-16","15:00","15:30");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-16","15:30","16:00");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-16","16:00","16:30");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-16","16:30","17:00");

insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-17","10:00","10:30");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-17","10:30","11:00");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-17","11:00","11:30");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-17","11:30","12:00");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-17","13:00","13:30");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-17","13:30","14:00");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-17","14:00","14:30");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-17","14:30","15:00");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-17","15:00","15:30");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-17","15:30","16:00");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-17","16:00","16:30");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-17","16:30","17:00");

insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-18","10:00","10:30");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-18","10:30","11:00");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-18","11:00","11:30");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-18","11:30","12:00");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-18","13:00","13:30");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-18","13:30","14:00");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-18","14:00","14:30");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-18","14:30","15:00");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-18","15:00","15:30");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-18","15:30","16:00");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-18","16:00","16:30");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-18","16:30","17:00");

insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-19","10:00","10:30");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-19","10:30","11:00");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-19","11:00","11:30");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-19","11:30","12:00");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-19","13:00","13:30");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-19","13:30","14:00");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-19","14:00","14:30");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-19","14:30","15:00");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-19","15:00","15:30");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-19","15:30","16:00");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-19","16:00","16:30");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-19","16:30","17:00");

insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-20","10:00","10:30");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-20","10:30","11:00");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-20","11:00","11:30");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-20","11:30","12:00");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-20","13:00","13:30");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-20","13:30","14:00");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-20","14:00","14:30");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-20","14:30","15:00");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-20","15:00","15:30");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-20","15:30","16:00");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-20","16:00","16:30");
insert into slot values(6,"Jeff Davis","jeffd@gmail.com","2019-12-20","16:30","17:00");


insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-11-24","10:00","10:30");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-11-24","10:30","11:00");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-11-24","11:00","11:30");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-11-24","11:30","12:00");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-11-24","13:00","13:30");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-11-24","13:30","14:00");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-11-24","14:00","14:30");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-11-24","14:30","15:00");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-11-24","15:00","15:30");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-11-24","15:30","16:00");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-11-24","16:00","16:30");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-11-24","16:30","17:00");

insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-11-25","10:00","10:30");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-11-25","10:30","11:00");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-11-25","11:00","11:30");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-11-25","11:30","12:00");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-11-25","13:00","13:30");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-11-25","13:30","14:00");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-11-25","14:00","14:30");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-11-25","14:30","15:00");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-11-25","15:00","15:30");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-11-25","15:30","16:00");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-11-25","16:00","16:30");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-11-25","16:30","17:00");

insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-11-26","10:00","10:30");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-11-26","10:30","11:00");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-11-26","11:00","11:30");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-11-26","11:30","12:00");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-11-26","13:00","13:30");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-11-26","13:30","14:00");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-11-26","14:00","14:30");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-11-26","14:30","15:00");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-11-26","15:00","15:30");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-11-26","15:30","16:00");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-11-26","16:00","16:30");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-11-26","16:30","17:00");

insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-11-27","10:00","10:30");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-11-27","10:30","11:00");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-11-27","11:00","11:30");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-11-27","11:30","12:00");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-11-27","13:00","13:30");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-11-27","13:30","14:00");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-11-27","14:00","14:30");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-11-27","14:30","15:00");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-11-27","15:00","15:30");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-11-27","15:30","16:00");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-11-27","16:00","16:30");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-11-27","16:30","17:00");

insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-11-28","10:00","10:30");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-11-28","10:30","11:00");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-11-28","11:00","11:30");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-11-28","11:30","12:00");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-11-28","13:00","13:30");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-11-28","13:30","14:00");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-11-28","14:00","14:30");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-11-28","14:30","15:00");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-11-28","15:00","15:30");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-11-28","15:30","16:00");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-11-28","16:00","16:30");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-11-28","16:30","17:00");

insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-11-29","10:00","10:30");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-11-29","10:30","11:00");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-11-29","11:00","11:30");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-11-29","11:30","12:00");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-11-29","13:00","13:30");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-11-29","13:30","14:00");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-11-29","14:00","14:30");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-11-29","14:30","15:00");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-11-29","15:00","15:30");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-11-29","15:30","16:00");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-11-29","16:00","16:30");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-11-29","16:30","17:00");

insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-11-30","10:00","10:30");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-11-30","10:30","11:00");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-11-30","11:00","11:30");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-11-30","11:30","12:00");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-11-30","13:00","13:30");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-11-30","13:30","14:00");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-11-30","14:00","14:30");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-11-30","14:30","15:00");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-11-30","15:00","15:30");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-11-30","15:30","16:00");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-11-30","16:00","16:30");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-11-30","16:30","17:00");

insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-01","10:00","10:30");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-01","10:30","11:00");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-01","11:00","11:30");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-01","11:30","12:00");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-01","13:00","13:30");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-01","13:30","14:00");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-01","14:00","14:30");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-01","14:30","15:00");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-01","15:00","15:30");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-01","15:30","16:00");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-01","16:00","16:30");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-01","16:30","17:00");


insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-02","10:00","10:30");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-02","10:30","11:00");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-02","11:00","11:30");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-02","11:30","12:00");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-02","13:00","13:30");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-02","13:30","14:00");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-02","14:00","14:30");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-02","14:30","15:00");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-02","15:00","15:30");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-02","15:30","16:00");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-02","16:00","16:30");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-02","16:30","17:00");

insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-03","10:00","10:30");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-03","10:30","11:00");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-03","11:00","11:30");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-03","11:30","12:00");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-03","13:00","13:30");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-03","13:30","14:00");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-03","14:00","14:30");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-03","14:30","15:00");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-03","15:00","15:30");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-03","15:30","16:00");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-03","16:00","16:30");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-03","16:30","17:00");

insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-04","10:00","10:30");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-04","10:30","11:00");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-04","11:00","11:30");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-04","11:30","12:00");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-04","13:00","13:30");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-04","13:30","14:00");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-04","14:00","14:30");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-04","14:30","15:00");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-04","15:00","15:30");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-04","15:30","16:00");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-04","16:00","16:30");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-04","16:30","17:00");


insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-05","10:00","10:30");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-05","10:30","11:00");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-05","11:00","11:30");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-05","11:30","12:00");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-05","13:00","13:30");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-05","13:30","14:00");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-05","14:00","14:30");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-05","14:30","15:00");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-05","15:00","15:30");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-05","15:30","16:00");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-05","16:00","16:30");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-05","16:30","17:00");

insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-06","10:00","10:30");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-06","10:30","11:00");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-06","11:00","11:30");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-06","11:30","12:00");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-06","13:00","13:30");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-06","13:30","14:00");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-06","14:00","14:30");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-06","14:30","15:00");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-06","15:00","15:30");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-06","15:30","16:00");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-06","16:00","16:30");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-06","16:30","17:00");

insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-07","10:00","10:30");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-07","10:30","11:00");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-07","11:00","11:30");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-07","11:30","12:00");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-07","13:00","13:30");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-07","13:30","14:00");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-07","14:00","14:30");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-07","14:30","15:00");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-07","15:00","15:30");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-07","15:30","16:00");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-07","16:00","16:30");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-07","16:30","17:00");


insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-08","10:00","10:30");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-08","10:30","11:00");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-08","11:00","11:30");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-08","11:30","12:00");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-08","13:00","13:30");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-08","13:30","14:00");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-08","14:00","14:30");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-08","14:30","15:00");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-08","15:00","15:30");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-08","15:30","16:00");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-08","16:00","16:30");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-08","16:30","17:00");


insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-09","10:00","10:30");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-09","10:30","11:00");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-09","11:00","11:30");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-09","11:30","12:00");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-09","13:00","13:30");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-09","13:30","14:00");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-09","14:00","14:30");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-09","14:30","15:00");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-09","15:00","15:30");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-09","15:30","16:00");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-09","16:00","16:30");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-09","16:30","17:00");


insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-10","10:00","10:30");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-10","10:30","11:00");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-10","11:00","11:30");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-10","11:30","12:00");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-10","13:00","13:30");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-10","13:30","14:00");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-10","14:00","14:30");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-10","14:30","15:00");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-10","15:00","15:30");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-10","15:30","16:00");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-10","16:00","16:30");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-10","16:30","17:00");

insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-10","10:00","10:30");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-10","10:30","11:00");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-10","11:00","11:30");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-10","11:30","12:00");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-10","13:00","13:30");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-10","13:30","14:00");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-10","14:00","14:30");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-10","14:30","15:00");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-10","15:00","15:30");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-10","15:30","16:00");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-10","16:00","16:30");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-10","16:30","17:00");

insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-11","10:00","10:30");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-11","10:30","11:00");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-11","11:00","11:30");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-11","11:30","12:00");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-11","13:00","13:30");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-11","13:30","14:00");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-11","14:00","14:30");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-11","14:30","15:00");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-11","15:00","15:30");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-11","15:30","16:00");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-11","16:00","16:30");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-11","16:30","17:00");

insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-12","10:00","10:30");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-12","10:30","11:00");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-12","11:00","11:30");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-12","11:30","12:00");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-12","13:00","13:30");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-12","13:30","14:00");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-12","14:00","14:30");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-12","14:30","15:00");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-12","15:00","15:30");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-12","15:30","16:00");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-12","16:00","16:30");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-12","16:30","17:00");

insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-13","10:00","10:30");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-13","10:30","11:00");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-13","11:00","11:30");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-13","11:30","12:00");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-13","13:00","13:30");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-13","13:30","14:00");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-13","14:00","14:30");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-13","14:30","15:00");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-13","15:00","15:30");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-13","15:30","16:00");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-13","16:00","16:30");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-13","16:30","17:00");

insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-14","10:00","10:30");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-14","10:30","11:00");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-14","11:00","11:30");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-14","11:30","12:00");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-14","13:00","13:30");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-14","13:30","14:00");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-14","14:00","14:30");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-14","14:30","15:00");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-14","15:00","15:30");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-14","15:30","16:00");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-14","16:00","16:30");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-14","16:30","17:00");

insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-15","10:00","10:30");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-15","10:30","11:00");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-15","11:00","11:30");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-15","11:30","12:00");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-15","13:00","13:30");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-15","13:30","14:00");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-15","14:00","14:30");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-15","14:30","15:00");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-15","15:00","15:30");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-15","15:30","16:00");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-15","16:00","16:30");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-15","16:30","17:00");

insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-16","10:00","10:30");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-16","10:30","11:00");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-16","11:00","11:30");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-16","11:30","12:00");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-16","13:00","13:30");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-16","13:30","14:00");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-16","14:00","14:30");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-16","14:30","15:00");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-16","15:00","15:30");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-16","15:30","16:00");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-16","16:00","16:30");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-16","16:30","17:00");

insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-17","10:00","10:30");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-17","10:30","11:00");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-17","11:00","11:30");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-17","11:30","12:00");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-17","13:00","13:30");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-17","13:30","14:00");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-17","14:00","14:30");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-17","14:30","15:00");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-17","15:00","15:30");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-17","15:30","16:00");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-17","16:00","16:30");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-17","16:30","17:00");

insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-18","10:00","10:30");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-18","10:30","11:00");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-18","11:00","11:30");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-18","11:30","12:00");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-18","13:00","13:30");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-18","13:30","14:00");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-18","14:00","14:30");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-18","14:30","15:00");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-18","15:00","15:30");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-18","15:30","16:00");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-18","16:00","16:30");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-18","16:30","17:00");

insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-19","10:00","10:30");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-19","10:30","11:00");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-19","11:00","11:30");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-19","11:30","12:00");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-19","13:00","13:30");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-19","13:30","14:00");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-19","14:00","14:30");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-19","14:30","15:00");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-19","15:00","15:30");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-19","15:30","16:00");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-19","16:00","16:30");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-19","16:30","17:00");

insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-20","10:00","10:30");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-20","10:30","11:00");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-20","11:00","11:30");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-20","11:30","12:00");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-20","13:00","13:30");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-20","13:30","14:00");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-20","14:00","14:30");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-20","14:30","15:00");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-20","15:00","15:30");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-20","15:30","16:00");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-20","16:00","16:30");
insert into slot values(7,"Garry Smith","garrys@gmail.com","2019-12-20","16:30","17:00");


insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-11-24","10:00","10:30");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-11-24","10:30","11:00");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-11-24","11:00","11:30");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-11-24","11:30","12:00");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-11-24","13:00","13:30");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-11-24","13:30","14:00");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-11-24","14:00","14:30");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-11-24","14:30","15:00");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-11-24","15:00","15:30");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-11-24","15:30","16:00");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-11-24","16:00","16:30");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-11-24","16:30","17:00");

insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-11-25","10:00","10:30");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-11-25","10:30","11:00");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-11-25","11:00","11:30");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-11-25","11:30","12:00");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-11-25","13:00","13:30");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-11-25","13:30","14:00");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-11-25","14:00","14:30");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-11-25","14:30","15:00");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-11-25","15:00","15:30");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-11-25","15:30","16:00");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-11-25","16:00","16:30");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-11-25","16:30","17:00");

insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-11-26","10:00","10:30");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-11-26","10:30","11:00");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-11-26","11:00","11:30");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-11-26","11:30","12:00");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-11-26","13:00","13:30");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-11-26","13:30","14:00");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-11-26","14:00","14:30");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-11-26","14:30","15:00");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-11-26","15:00","15:30");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-11-26","15:30","16:00");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-11-26","16:00","16:30");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-11-26","16:30","17:00");

insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-11-27","10:00","10:30");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-11-27","10:30","11:00");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-11-27","11:00","11:30");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-11-27","11:30","12:00");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-11-27","13:00","13:30");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-11-27","13:30","14:00");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-11-27","14:00","14:30");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-11-27","14:30","15:00");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-11-27","15:00","15:30");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-11-27","15:30","16:00");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-11-27","16:00","16:30");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-11-27","16:30","17:00");

insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-11-28","10:00","10:30");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-11-28","10:30","11:00");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-11-28","11:00","11:30");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-11-28","11:30","12:00");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-11-28","13:00","13:30");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-11-28","13:30","14:00");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-11-28","14:00","14:30");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-11-28","14:30","15:00");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-11-28","15:00","15:30");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-11-28","15:30","16:00");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-11-28","16:00","16:30");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-11-28","16:30","17:00");

insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-11-29","10:00","10:30");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-11-29","10:30","11:00");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-11-29","11:00","11:30");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-11-29","11:30","12:00");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-11-29","13:00","13:30");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-11-29","13:30","14:00");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-11-29","14:00","14:30");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-11-29","14:30","15:00");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-11-29","15:00","15:30");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-11-29","15:30","16:00");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-11-29","16:00","16:30");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-11-29","16:30","17:00");

insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-11-30","10:00","10:30");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-11-30","10:30","11:00");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-11-30","11:00","11:30");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-11-30","11:30","12:00");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-11-30","13:00","13:30");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-11-30","13:30","14:00");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-11-30","14:00","14:30");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-11-30","14:30","15:00");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-11-30","15:00","15:30");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-11-30","15:30","16:00");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-11-30","16:00","16:30");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-11-30","16:30","17:00");

insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-01","10:00","10:30");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-01","10:30","11:00");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-01","11:00","11:30");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-01","11:30","12:00");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-01","13:00","13:30");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-01","13:30","14:00");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-01","14:00","14:30");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-01","14:30","15:00");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-01","15:00","15:30");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-01","15:30","16:00");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-01","16:00","16:30");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-01","16:30","17:00");


insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-02","10:00","10:30");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-02","10:30","11:00");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-02","11:00","11:30");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-02","11:30","12:00");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-02","13:00","13:30");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-02","13:30","14:00");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-02","14:00","14:30");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-02","14:30","15:00");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-02","15:00","15:30");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-02","15:30","16:00");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-02","16:00","16:30");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-02","16:30","17:00");

insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-03","10:00","10:30");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-03","10:30","11:00");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-03","11:00","11:30");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-03","11:30","12:00");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-03","13:00","13:30");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-03","13:30","14:00");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-03","14:00","14:30");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-03","14:30","15:00");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-03","15:00","15:30");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-03","15:30","16:00");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-03","16:00","16:30");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-03","16:30","17:00");

insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-04","10:00","10:30");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-04","10:30","11:00");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-04","11:00","11:30");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-04","11:30","12:00");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-04","13:00","13:30");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-04","13:30","14:00");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-04","14:00","14:30");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-04","14:30","15:00");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-04","15:00","15:30");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-04","15:30","16:00");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-04","16:00","16:30");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-04","16:30","17:00");


insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-05","10:00","10:30");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-05","10:30","11:00");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-05","11:00","11:30");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-05","11:30","12:00");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-05","13:00","13:30");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-05","13:30","14:00");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-05","14:00","14:30");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-05","14:30","15:00");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-05","15:00","15:30");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-05","15:30","16:00");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-05","16:00","16:30");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-05","16:30","17:00");

insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-06","10:00","10:30");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-06","10:30","11:00");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-06","11:00","11:30");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-06","11:30","12:00");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-06","13:00","13:30");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-06","13:30","14:00");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-06","14:00","14:30");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-06","14:30","15:00");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-06","15:00","15:30");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-06","15:30","16:00");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-06","16:00","16:30");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-06","16:30","17:00");

insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-07","10:00","10:30");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-07","10:30","11:00");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-07","11:00","11:30");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-07","11:30","12:00");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-07","13:00","13:30");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-07","13:30","14:00");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-07","14:00","14:30");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-07","14:30","15:00");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-07","15:00","15:30");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-07","15:30","16:00");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-07","16:00","16:30");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-07","16:30","17:00");


insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-08","10:00","10:30");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-08","10:30","11:00");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-08","11:00","11:30");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-08","11:30","12:00");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-08","13:00","13:30");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-08","13:30","14:00");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-08","14:00","14:30");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-08","14:30","15:00");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-08","15:00","15:30");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-08","15:30","16:00");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-08","16:00","16:30");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-08","16:30","17:00");


insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-09","10:00","10:30");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-09","10:30","11:00");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-09","11:00","11:30");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-09","11:30","12:00");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-09","13:00","13:30");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-09","13:30","14:00");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-09","14:00","14:30");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-09","14:30","15:00");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-09","15:00","15:30");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-09","15:30","16:00");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-09","16:00","16:30");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-09","16:30","17:00");


insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-10","10:00","10:30");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-10","10:30","11:00");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-10","11:00","11:30");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-10","11:30","12:00");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-10","13:00","13:30");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-10","13:30","14:00");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-10","14:00","14:30");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-10","14:30","15:00");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-10","15:00","15:30");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-10","15:30","16:00");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-10","16:00","16:30");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-10","16:30","17:00");

insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-10","10:00","10:30");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-10","10:30","11:00");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-10","11:00","11:30");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-10","11:30","12:00");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-10","13:00","13:30");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-10","13:30","14:00");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-10","14:00","14:30");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-10","14:30","15:00");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-10","15:00","15:30");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-10","15:30","16:00");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-10","16:00","16:30");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-10","16:30","17:00");

insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-11","10:00","10:30");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-11","10:30","11:00");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-11","11:00","11:30");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-11","11:30","12:00");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-11","13:00","13:30");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-11","13:30","14:00");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-11","14:00","14:30");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-11","14:30","15:00");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-11","15:00","15:30");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-11","15:30","16:00");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-11","16:00","16:30");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-11","16:30","17:00");

insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-12","10:00","10:30");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-12","10:30","11:00");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-12","11:00","11:30");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-12","11:30","12:00");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-12","13:00","13:30");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-12","13:30","14:00");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-12","14:00","14:30");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-12","14:30","15:00");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-12","15:00","15:30");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-12","15:30","16:00");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-12","16:00","16:30");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-12","16:30","17:00");

insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-13","10:00","10:30");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-13","10:30","11:00");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-13","11:00","11:30");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-13","11:30","12:00");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-13","13:00","13:30");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-13","13:30","14:00");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-13","14:00","14:30");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-13","14:30","15:00");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-13","15:00","15:30");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-13","15:30","16:00");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-13","16:00","16:30");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-13","16:30","17:00");

insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-14","10:00","10:30");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-14","10:30","11:00");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-14","11:00","11:30");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-14","11:30","12:00");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-14","13:00","13:30");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-14","13:30","14:00");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-14","14:00","14:30");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-14","14:30","15:00");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-14","15:00","15:30");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-14","15:30","16:00");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-14","16:00","16:30");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-14","16:30","17:00");

insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-15","10:00","10:30");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-15","10:30","11:00");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-15","11:00","11:30");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-15","11:30","12:00");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-15","13:00","13:30");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-15","13:30","14:00");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-15","14:00","14:30");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-15","14:30","15:00");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-15","15:00","15:30");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-15","15:30","16:00");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-15","16:00","16:30");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-15","16:30","17:00");

insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-16","10:00","10:30");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-16","10:30","11:00");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-16","11:00","11:30");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-16","11:30","12:00");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-16","13:00","13:30");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-16","13:30","14:00");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-16","14:00","14:30");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-16","14:30","15:00");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-16","15:00","15:30");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-16","15:30","16:00");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-16","16:00","16:30");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-16","16:30","17:00");

insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-17","10:00","10:30");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-17","10:30","11:00");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-17","11:00","11:30");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-17","11:30","12:00");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-17","13:00","13:30");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-17","13:30","14:00");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-17","14:00","14:30");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-17","14:30","15:00");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-17","15:00","15:30");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-17","15:30","16:00");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-17","16:00","16:30");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-17","16:30","17:00");

insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-18","10:00","10:30");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-18","10:30","11:00");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-18","11:00","11:30");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-18","11:30","12:00");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-18","13:00","13:30");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-18","13:30","14:00");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-18","14:00","14:30");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-18","14:30","15:00");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-18","15:00","15:30");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-18","15:30","16:00");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-18","16:00","16:30");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-18","16:30","17:00");

insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-19","10:00","10:30");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-19","10:30","11:00");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-19","11:00","11:30");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-19","11:30","12:00");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-19","13:00","13:30");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-19","13:30","14:00");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-19","14:00","14:30");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-19","14:30","15:00");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-19","15:00","15:30");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-19","15:30","16:00");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-19","16:00","16:30");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-19","16:30","17:00");

insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-20","10:00","10:30");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-20","10:30","11:00");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-20","11:00","11:30");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-20","11:30","12:00");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-20","13:00","13:30");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-20","13:30","14:00");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-20","14:00","14:30");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-20","14:30","15:00");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-20","15:00","15:30");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-20","15:30","16:00");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-20","16:00","16:30");
insert into slot values(8,"Alyssa Johnson","alyssaj@gmail.com","2019-12-20","16:30","17:00");


insert into slot values(9,"Trey Miller","treym@gmail.com","2019-11-24","10:00","10:30");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-11-24","10:30","11:00");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-11-24","11:00","11:30");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-11-24","11:30","12:00");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-11-24","13:00","13:30");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-11-24","13:30","14:00");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-11-24","14:00","14:30");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-11-24","14:30","15:00");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-11-24","15:00","15:30");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-11-24","15:30","16:00");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-11-24","16:00","16:30");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-11-24","16:30","17:00");

insert into slot values(9,"Trey Miller","treym@gmail.com","2019-11-25","10:00","10:30");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-11-25","10:30","11:00");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-11-25","11:00","11:30");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-11-25","11:30","12:00");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-11-25","13:00","13:30");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-11-25","13:30","14:00");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-11-25","14:00","14:30");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-11-25","14:30","15:00");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-11-25","15:00","15:30");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-11-25","15:30","16:00");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-11-25","16:00","16:30");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-11-25","16:30","17:00");

insert into slot values(9,"Trey Miller","treym@gmail.com","2019-11-26","10:00","10:30");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-11-26","10:30","11:00");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-11-26","11:00","11:30");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-11-26","11:30","12:00");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-11-26","13:00","13:30");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-11-26","13:30","14:00");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-11-26","14:00","14:30");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-11-26","14:30","15:00");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-11-26","15:00","15:30");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-11-26","15:30","16:00");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-11-26","16:00","16:30");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-11-26","16:30","17:00");

insert into slot values(9,"Trey Miller","treym@gmail.com","2019-11-27","10:00","10:30");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-11-27","10:30","11:00");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-11-27","11:00","11:30");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-11-27","11:30","12:00");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-11-27","13:00","13:30");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-11-27","13:30","14:00");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-11-27","14:00","14:30");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-11-27","14:30","15:00");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-11-27","15:00","15:30");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-11-27","15:30","16:00");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-11-27","16:00","16:30");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-11-27","16:30","17:00");

insert into slot values(9,"Trey Miller","treym@gmail.com","2019-11-28","10:00","10:30");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-11-28","10:30","11:00");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-11-28","11:00","11:30");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-11-28","11:30","12:00");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-11-28","13:00","13:30");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-11-28","13:30","14:00");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-11-28","14:00","14:30");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-11-28","14:30","15:00");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-11-28","15:00","15:30");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-11-28","15:30","16:00");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-11-28","16:00","16:30");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-11-28","16:30","17:00");

insert into slot values(9,"Trey Miller","treym@gmail.com","2019-11-29","10:00","10:30");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-11-29","10:30","11:00");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-11-29","11:00","11:30");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-11-29","11:30","12:00");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-11-29","13:00","13:30");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-11-29","13:30","14:00");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-11-29","14:00","14:30");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-11-29","14:30","15:00");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-11-29","15:00","15:30");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-11-29","15:30","16:00");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-11-29","16:00","16:30");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-11-29","16:30","17:00");

insert into slot values(9,"Trey Miller","treym@gmail.com","2019-11-30","10:00","10:30");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-11-30","10:30","11:00");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-11-30","11:00","11:30");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-11-30","11:30","12:00");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-11-30","13:00","13:30");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-11-30","13:30","14:00");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-11-30","14:00","14:30");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-11-30","14:30","15:00");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-11-30","15:00","15:30");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-11-30","15:30","16:00");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-11-30","16:00","16:30");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-11-30","16:30","17:00");

insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-01","10:00","10:30");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-01","10:30","11:00");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-01","11:00","11:30");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-01","11:30","12:00");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-01","13:00","13:30");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-01","13:30","14:00");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-01","14:00","14:30");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-01","14:30","15:00");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-01","15:00","15:30");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-01","15:30","16:00");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-01","16:00","16:30");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-01","16:30","17:00");


insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-02","10:00","10:30");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-02","10:30","11:00");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-02","11:00","11:30");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-02","11:30","12:00");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-02","13:00","13:30");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-02","13:30","14:00");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-02","14:00","14:30");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-02","14:30","15:00");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-02","15:00","15:30");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-02","15:30","16:00");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-02","16:00","16:30");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-02","16:30","17:00");

insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-03","10:00","10:30");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-03","10:30","11:00");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-03","11:00","11:30");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-03","11:30","12:00");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-03","13:00","13:30");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-03","13:30","14:00");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-03","14:00","14:30");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-03","14:30","15:00");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-03","15:00","15:30");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-03","15:30","16:00");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-03","16:00","16:30");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-03","16:30","17:00");

insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-04","10:00","10:30");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-04","10:30","11:00");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-04","11:00","11:30");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-04","11:30","12:00");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-04","13:00","13:30");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-04","13:30","14:00");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-04","14:00","14:30");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-04","14:30","15:00");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-04","15:00","15:30");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-04","15:30","16:00");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-04","16:00","16:30");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-04","16:30","17:00");


insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-05","10:00","10:30");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-05","10:30","11:00");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-05","11:00","11:30");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-05","11:30","12:00");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-05","13:00","13:30");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-05","13:30","14:00");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-05","14:00","14:30");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-05","14:30","15:00");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-05","15:00","15:30");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-05","15:30","16:00");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-05","16:00","16:30");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-05","16:30","17:00");

insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-06","10:00","10:30");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-06","10:30","11:00");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-06","11:00","11:30");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-06","11:30","12:00");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-06","13:00","13:30");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-06","13:30","14:00");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-06","14:00","14:30");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-06","14:30","15:00");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-06","15:00","15:30");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-06","15:30","16:00");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-06","16:00","16:30");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-06","16:30","17:00");

insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-07","10:00","10:30");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-07","10:30","11:00");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-07","11:00","11:30");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-07","11:30","12:00");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-07","13:00","13:30");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-07","13:30","14:00");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-07","14:00","14:30");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-07","14:30","15:00");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-07","15:00","15:30");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-07","15:30","16:00");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-07","16:00","16:30");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-07","16:30","17:00");


insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-08","10:00","10:30");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-08","10:30","11:00");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-08","11:00","11:30");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-08","11:30","12:00");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-08","13:00","13:30");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-08","13:30","14:00");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-08","14:00","14:30");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-08","14:30","15:00");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-08","15:00","15:30");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-08","15:30","16:00");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-08","16:00","16:30");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-08","16:30","17:00");


insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-09","10:00","10:30");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-09","10:30","11:00");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-09","11:00","11:30");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-09","11:30","12:00");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-09","13:00","13:30");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-09","13:30","14:00");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-09","14:00","14:30");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-09","14:30","15:00");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-09","15:00","15:30");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-09","15:30","16:00");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-09","16:00","16:30");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-09","16:30","17:00");


insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-10","10:00","10:30");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-10","10:30","11:00");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-10","11:00","11:30");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-10","11:30","12:00");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-10","13:00","13:30");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-10","13:30","14:00");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-10","14:00","14:30");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-10","14:30","15:00");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-10","15:00","15:30");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-10","15:30","16:00");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-10","16:00","16:30");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-10","16:30","17:00");

insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-10","10:00","10:30");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-10","10:30","11:00");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-10","11:00","11:30");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-10","11:30","12:00");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-10","13:00","13:30");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-10","13:30","14:00");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-10","14:00","14:30");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-10","14:30","15:00");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-10","15:00","15:30");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-10","15:30","16:00");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-10","16:00","16:30");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-10","16:30","17:00");

insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-11","10:00","10:30");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-11","10:30","11:00");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-11","11:00","11:30");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-11","11:30","12:00");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-11","13:00","13:30");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-11","13:30","14:00");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-11","14:00","14:30");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-11","14:30","15:00");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-11","15:00","15:30");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-11","15:30","16:00");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-11","16:00","16:30");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-11","16:30","17:00");

insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-12","10:00","10:30");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-12","10:30","11:00");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-12","11:00","11:30");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-12","11:30","12:00");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-12","13:00","13:30");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-12","13:30","14:00");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-12","14:00","14:30");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-12","14:30","15:00");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-12","15:00","15:30");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-12","15:30","16:00");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-12","16:00","16:30");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-12","16:30","17:00");

insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-13","10:00","10:30");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-13","10:30","11:00");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-13","11:00","11:30");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-13","11:30","12:00");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-13","13:00","13:30");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-13","13:30","14:00");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-13","14:00","14:30");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-13","14:30","15:00");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-13","15:00","15:30");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-13","15:30","16:00");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-13","16:00","16:30");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-13","16:30","17:00");

insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-14","10:00","10:30");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-14","10:30","11:00");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-14","11:00","11:30");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-14","11:30","12:00");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-14","13:00","13:30");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-14","13:30","14:00");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-14","14:00","14:30");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-14","14:30","15:00");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-14","15:00","15:30");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-14","15:30","16:00");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-14","16:00","16:30");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-14","16:30","17:00");

insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-15","10:00","10:30");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-15","10:30","11:00");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-15","11:00","11:30");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-15","11:30","12:00");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-15","13:00","13:30");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-15","13:30","14:00");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-15","14:00","14:30");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-15","14:30","15:00");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-15","15:00","15:30");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-15","15:30","16:00");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-15","16:00","16:30");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-15","16:30","17:00");

insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-16","10:00","10:30");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-16","10:30","11:00");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-16","11:00","11:30");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-16","11:30","12:00");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-16","13:00","13:30");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-16","13:30","14:00");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-16","14:00","14:30");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-16","14:30","15:00");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-16","15:00","15:30");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-16","15:30","16:00");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-16","16:00","16:30");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-16","16:30","17:00");

insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-17","10:00","10:30");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-17","10:30","11:00");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-17","11:00","11:30");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-17","11:30","12:00");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-17","13:00","13:30");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-17","13:30","14:00");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-17","14:00","14:30");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-17","14:30","15:00");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-17","15:00","15:30");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-17","15:30","16:00");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-17","16:00","16:30");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-17","16:30","17:00");

insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-18","10:00","10:30");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-18","10:30","11:00");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-18","11:00","11:30");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-18","11:30","12:00");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-18","13:00","13:30");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-18","13:30","14:00");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-18","14:00","14:30");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-18","14:30","15:00");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-18","15:00","15:30");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-18","15:30","16:00");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-18","16:00","16:30");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-18","16:30","17:00");

insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-19","10:00","10:30");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-19","10:30","11:00");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-19","11:00","11:30");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-19","11:30","12:00");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-19","13:00","13:30");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-19","13:30","14:00");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-19","14:00","14:30");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-19","14:30","15:00");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-19","15:00","15:30");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-19","15:30","16:00");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-19","16:00","16:30");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-19","16:30","17:00");

insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-20","10:00","10:30");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-20","10:30","11:00");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-20","11:00","11:30");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-20","11:30","12:00");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-20","13:00","13:30");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-20","13:30","14:00");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-20","14:00","14:30");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-20","14:30","15:00");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-20","15:00","15:30");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-20","15:30","16:00");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-20","16:00","16:30");
insert into slot values(9,"Trey Miller","treym@gmail.com","2019-12-20","16:30","17:00");

insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-11-24","10:00","10:30");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-11-24","10:30","11:00");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-11-24","11:00","11:30");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-11-24","11:30","12:00");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-11-24","13:00","13:30");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-11-24","13:30","14:00");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-11-24","14:00","14:30");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-11-24","14:30","15:00");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-11-24","15:00","15:30");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-11-24","15:30","16:00");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-11-24","16:00","16:30");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-11-24","16:30","17:00");

insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-11-25","10:00","10:30");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-11-25","10:30","11:00");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-11-25","11:00","11:30");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-11-25","11:30","12:00");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-11-25","13:00","13:30");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-11-25","13:30","14:00");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-11-25","14:00","14:30");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-11-25","14:30","15:00");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-11-25","15:00","15:30");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-11-25","15:30","16:00");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-11-25","16:00","16:30");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-11-25","16:30","17:00");

insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-11-26","10:00","10:30");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-11-26","10:30","11:00");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-11-26","11:00","11:30");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-11-26","11:30","12:00");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-11-26","13:00","13:30");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-11-26","13:30","14:00");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-11-26","14:00","14:30");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-11-26","14:30","15:00");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-11-26","15:00","15:30");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-11-26","15:30","16:00");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-11-26","16:00","16:30");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-11-26","16:30","17:00");

insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-11-27","10:00","10:30");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-11-27","10:30","11:00");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-11-27","11:00","11:30");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-11-27","11:30","12:00");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-11-27","13:00","13:30");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-11-27","13:30","14:00");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-11-27","14:00","14:30");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-11-27","14:30","15:00");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-11-27","15:00","15:30");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-11-27","15:30","16:00");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-11-27","16:00","16:30");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-11-27","16:30","17:00");

insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-11-28","10:00","10:30");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-11-28","10:30","11:00");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-11-28","11:00","11:30");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-11-28","11:30","12:00");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-11-28","13:00","13:30");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-11-28","13:30","14:00");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-11-28","14:00","14:30");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-11-28","14:30","15:00");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-11-28","15:00","15:30");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-11-28","15:30","16:00");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-11-28","16:00","16:30");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-11-28","16:30","17:00");

insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-11-29","10:00","10:30");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-11-29","10:30","11:00");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-11-29","11:00","11:30");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-11-29","11:30","12:00");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-11-29","13:00","13:30");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-11-29","13:30","14:00");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-11-29","14:00","14:30");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-11-29","14:30","15:00");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-11-29","15:00","15:30");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-11-29","15:30","16:00");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-11-29","16:00","16:30");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-11-29","16:30","17:00");

insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-11-30","10:00","10:30");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-11-30","10:30","11:00");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-11-30","11:00","11:30");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-11-30","11:30","12:00");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-11-30","13:00","13:30");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-11-30","13:30","14:00");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-11-30","14:00","14:30");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-11-30","14:30","15:00");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-11-30","15:00","15:30");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-11-30","15:30","16:00");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-11-30","16:00","16:30");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-11-30","16:30","17:00");

insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-01","10:00","10:30");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-01","10:30","11:00");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-01","11:00","11:30");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-01","11:30","12:00");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-01","13:00","13:30");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-01","13:30","14:00");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-01","14:00","14:30");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-01","14:30","15:00");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-01","15:00","15:30");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-01","15:30","16:00");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-01","16:00","16:30");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-01","16:30","17:00");


insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-02","10:00","10:30");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-02","10:30","11:00");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-02","11:00","11:30");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-02","11:30","12:00");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-02","13:00","13:30");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-02","13:30","14:00");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-02","14:00","14:30");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-02","14:30","15:00");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-02","15:00","15:30");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-02","15:30","16:00");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-02","16:00","16:30");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-02","16:30","17:00");

insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-03","10:00","10:30");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-03","10:30","11:00");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-03","11:00","11:30");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-03","11:30","12:00");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-03","13:00","13:30");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-03","13:30","14:00");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-03","14:00","14:30");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-03","14:30","15:00");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-03","15:00","15:30");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-03","15:30","16:00");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-03","16:00","16:30");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-03","16:30","17:00");

insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-04","10:00","10:30");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-04","10:30","11:00");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-04","11:00","11:30");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-04","11:30","12:00");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-04","13:00","13:30");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-04","13:30","14:00");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-04","14:00","14:30");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-04","14:30","15:00");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-04","15:00","15:30");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-04","15:30","16:00");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-04","16:00","16:30");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-04","16:30","17:00");


insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-05","10:00","10:30");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-05","10:30","11:00");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-05","11:00","11:30");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-05","11:30","12:00");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-05","13:00","13:30");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-05","13:30","14:00");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-05","14:00","14:30");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-05","14:30","15:00");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-05","15:00","15:30");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-05","15:30","16:00");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-05","16:00","16:30");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-05","16:30","17:00");

insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-06","10:00","10:30");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-06","10:30","11:00");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-06","11:00","11:30");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-06","11:30","12:00");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-06","13:00","13:30");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-06","13:30","14:00");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-06","14:00","14:30");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-06","14:30","15:00");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-06","15:00","15:30");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-06","15:30","16:00");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-06","16:00","16:30");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-06","16:30","17:00");

insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-07","10:00","10:30");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-07","10:30","11:00");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-07","11:00","11:30");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-07","11:30","12:00");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-07","13:00","13:30");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-07","13:30","14:00");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-07","14:00","14:30");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-07","14:30","15:00");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-07","15:00","15:30");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-07","15:30","16:00");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-07","16:00","16:30");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-07","16:30","17:00");


insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-08","10:00","10:30");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-08","10:30","11:00");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-08","11:00","11:30");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-08","11:30","12:00");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-08","13:00","13:30");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-08","13:30","14:00");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-08","14:00","14:30");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-08","14:30","15:00");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-08","15:00","15:30");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-08","15:30","16:00");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-08","16:00","16:30");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-08","16:30","17:00");


insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-09","10:00","10:30");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-09","10:30","11:00");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-09","11:00","11:30");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-09","11:30","12:00");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-09","13:00","13:30");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-09","13:30","14:00");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-09","14:00","14:30");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-09","14:30","15:00");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-09","15:00","15:30");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-09","15:30","16:00");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-09","16:00","16:30");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-09","16:30","17:00");


insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-10","10:00","10:30");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-10","10:30","11:00");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-10","11:00","11:30");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-10","11:30","12:00");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-10","13:00","13:30");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-10","13:30","14:00");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-10","14:00","14:30");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-10","14:30","15:00");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-10","15:00","15:30");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-10","15:30","16:00");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-10","16:00","16:30");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-10","16:30","17:00");

insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-10","10:00","10:30");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-10","10:30","11:00");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-10","11:00","11:30");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-10","11:30","12:00");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-10","13:00","13:30");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-10","13:30","14:00");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-10","14:00","14:30");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-10","14:30","15:00");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-10","15:00","15:30");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-10","15:30","16:00");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-10","16:00","16:30");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-10","16:30","17:00");

insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-11","10:00","10:30");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-11","10:30","11:00");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-11","11:00","11:30");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-11","11:30","12:00");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-11","13:00","13:30");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-11","13:30","14:00");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-11","14:00","14:30");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-11","14:30","15:00");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-11","15:00","15:30");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-11","15:30","16:00");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-11","16:00","16:30");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-11","16:30","17:00");

insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-12","10:00","10:30");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-12","10:30","11:00");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-12","11:00","11:30");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-12","11:30","12:00");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-12","13:00","13:30");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-12","13:30","14:00");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-12","14:00","14:30");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-12","14:30","15:00");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-12","15:00","15:30");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-12","15:30","16:00");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-12","16:00","16:30");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-12","16:30","17:00");

insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-13","10:00","10:30");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-13","10:30","11:00");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-13","11:00","11:30");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-13","11:30","12:00");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-13","13:00","13:30");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-13","13:30","14:00");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-13","14:00","14:30");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-13","14:30","15:00");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-13","15:00","15:30");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-13","15:30","16:00");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-13","16:00","16:30");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-13","16:30","17:00");

insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-14","10:00","10:30");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-14","10:30","11:00");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-14","11:00","11:30");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-14","11:30","12:00");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-14","13:00","13:30");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-14","13:30","14:00");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-14","14:00","14:30");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-14","14:30","15:00");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-14","15:00","15:30");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-14","15:30","16:00");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-14","16:00","16:30");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-14","16:30","17:00");

insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-15","10:00","10:30");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-15","10:30","11:00");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-15","11:00","11:30");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-15","11:30","12:00");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-15","13:00","13:30");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-15","13:30","14:00");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-15","14:00","14:30");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-15","14:30","15:00");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-15","15:00","15:30");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-15","15:30","16:00");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-15","16:00","16:30");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-15","16:30","17:00");

insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-16","10:00","10:30");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-16","10:30","11:00");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-16","11:00","11:30");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-16","11:30","12:00");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-16","13:00","13:30");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-16","13:30","14:00");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-16","14:00","14:30");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-16","14:30","15:00");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-16","15:00","15:30");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-16","15:30","16:00");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-16","16:00","16:30");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-16","16:30","17:00");

insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-17","10:00","10:30");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-17","10:30","11:00");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-17","11:00","11:30");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-17","11:30","12:00");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-17","13:00","13:30");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-17","13:30","14:00");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-17","14:00","14:30");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-17","14:30","15:00");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-17","15:00","15:30");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-17","15:30","16:00");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-17","16:00","16:30");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-17","16:30","17:00");

insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-18","10:00","10:30");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-18","10:30","11:00");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-18","11:00","11:30");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-18","11:30","12:00");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-18","13:00","13:30");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-18","13:30","14:00");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-18","14:00","14:30");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-18","14:30","15:00");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-18","15:00","15:30");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-18","15:30","16:00");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-18","16:00","16:30");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-18","16:30","17:00");

insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-19","10:00","10:30");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-19","10:30","11:00");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-19","11:00","11:30");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-19","11:30","12:00");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-19","13:00","13:30");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-19","13:30","14:00");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-19","14:00","14:30");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-19","14:30","15:00");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-19","15:00","15:30");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-19","15:30","16:00");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-19","16:00","16:30");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-19","16:30","17:00");

insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-20","10:00","10:30");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-20","10:30","11:00");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-20","11:00","11:30");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-20","11:30","12:00");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-20","13:00","13:30");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-20","13:30","14:00");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-20","14:00","14:30");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-20","14:30","15:00");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-20","15:00","15:30");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-20","15:30","16:00");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-20","16:00","16:30");
insert into slot values(10,"Sweety Wilson","sweetyw@gmail.com","2019-12-20","16:30","17:00");




