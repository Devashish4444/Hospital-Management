package unittest;

import static org.junit.Assert.assertNotEquals;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Time;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

import java.util.Locale;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.InjectMocks;

import org.mockito.MockitoAnnotations;
import org.mockito.runners.MockitoJUnitRunner;

import com.login.bean.BookAppointmentBean;

import com.login.dao.AdminSlotDao;

import com.login.util.ConnectionUtility;
import com.login.util.DateConvert;
import com.login.util.IConnectionData;


@RunWith(MockitoJUnitRunner.class)
public class AdminSlotDaoTest {

	@InjectMocks
	private AdminSlotDao Dao;

	Connection con = null;
	java.sql.Statement Statement = null;



	private BookAppointmentBean BAB;


	@Before
	public void setUp() throws Exception {

		MockitoAnnotations.initMocks(this);
		IConnectionData connection = IConnectionData.getInstance("Test") ;
		Dao = new AdminSlotDao(connection);
	}    

	@Test
	public void updateSlot() throws SQLException, ParseException {

		IConnectionData connection = IConnectionData.getInstance("Test") ;
		con= ConnectionUtility.getConnection(connection);

		String sql1="insert into slot values(1,\"Andrew Roy\",\"andrewr@gmail.com\",\"2019-11-26\",\"10:00\",\"10:30\");";
		PreparedStatement preparedStmt = con.prepareStatement(sql1);
		preparedStmt.execute();

		DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd",Locale.US);
		String dateInString = "2019-11-26";

		LocalDate date = LocalDate.parse(dateInString,formatter);

		DateConvert dateConvert = new DateConvert();
		java.util.Date AppointmentDate=dateConvert.convertToDateViaInstant(date);	
		java.sql.Date sqlDate = new java.sql.Date(AppointmentDate.getTime());
		SimpleDateFormat formatDate = new SimpleDateFormat("HH:mm a");
		String time = "10:00 AM";
		long ms = formatDate.parse(time).getTime();
		Time t = new Time(ms);


		BAB = new BookAppointmentBean();

		BAB.setDoctorName("Andrew Roy");

		BAB.setAppointment_Date(AppointmentDate);
		BAB.setAppointment_Time(t);

		Dao.updateSlot(BAB);

		String sql= "Select * from slot where Doctor_id=1 and Date=\"2019-11-26\" and slot_fromtime=\"10:00:00\"";
		Statement = con.createStatement();

		ResultSet rs = Statement.executeQuery(sql);
		while (rs.next()) {

			assertNotEquals("Andrew Roy",rs.getString(2));

			assertNotEquals(sqlDate, rs.getDate(4));
			assertNotEquals(t, rs.getTime(5));

		}
	}

	@Test
	public void getSlotsListFromDb() throws SQLException, ParseException {

		DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd",Locale.US);
		String dateInString = "2019-11-26";

		IConnectionData connection = IConnectionData.getInstance("Test") ;
		con= ConnectionUtility.getConnection(connection);
		LocalDate date = LocalDate.parse(dateInString,formatter);


		DateConvert dateConvert = new DateConvert();
		java.util.Date AppointmentDate=dateConvert.convertToDateViaInstant(date);	
		java.sql.Date sqlDate = new java.sql.Date(AppointmentDate.getTime());


		BAB = new BookAppointmentBean();

		BAB.setDoctorName("Andrew Roy");

		BAB.setAppointment_Date(AppointmentDate);

		String sql= "Select * from slot where Doctor_id=1 and Date=\"2019-11-26\" and slot_fromtime=\"10:00:00\"";
		Statement = con.createStatement();

		ResultSet rs = Statement.executeQuery(sql);
		while (rs.next()) {

			assertNotEquals("Andrew Roy", rs.getString(2));

			assertNotEquals(sqlDate, rs.getDate(4));


		}
	}

}