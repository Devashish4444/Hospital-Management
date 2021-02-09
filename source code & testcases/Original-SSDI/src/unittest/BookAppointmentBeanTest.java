package unittest;

import static org.junit.Assert.assertEquals;

import java.sql.Time;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.Locale;

import org.junit.Test;
import org.mockito.internal.verification.api.VerificationData;
import org.mockito.verification.VerificationMode;

import com.login.bean.BookAppointmentBean;
import com.login.util.DateConvert;

public class BookAppointmentBeanTest {

	@Test
	public void BeanTest() throws ParseException {
			
	  	 DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd",Locale.US);
		 String dateInString = "2019-11-26";
		 LocalDate date = LocalDate.parse(dateInString,formatter);
		 DateConvert dateConvert = new DateConvert();
	   	 java.util.Date AppointmentDate=dateConvert.convertToDateViaInstant(date);	
	
	   	System.out.println(AppointmentDate);
		SimpleDateFormat formatDate = new SimpleDateFormat("HH:mm a");
		String time = "10:00 AM";
		long ms = formatDate.parse(time).getTime();
		Time t = new Time(ms);
		
		System.out.println();
	

		BookAppointmentBean BAB = new BookAppointmentBean();
		BAB.setSpecialist("Dental");
		BAB.setAppointment_Date(AppointmentDate);
		BAB.setAppointment_Time(t);
		BAB.setProblem_Description("XYZT");
		BAB.setComments("ABCD");
		BAB.setEmail("test@gmail.com");

		new VerificationMode() {
			{
				assertEquals("Dental", BAB.getSpecialist());
				assertEquals(AppointmentDate, BAB.getAppointment_Date());
				assertEquals(t, BAB.getAppointment_Time());
				assertEquals("XYZT", BAB.getProblem_Description());
				assertEquals("ABCD", BAB.getComments());
				assertEquals("test@gmail.com", BAB.getEmail());
			}

			@Override
			public void verify(VerificationData data) {

			}
		};

	}
};