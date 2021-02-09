package unittest;

import static org.junit.Assert.assertEquals;


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
import org.mockito.Mock;
import org.mockito.MockitoAnnotations;
import org.mockito.runners.MockitoJUnitRunner;
import com.login.bean.BookAppointmentBean;
import com.login.dao.BookAppointmentDao;
import com.login.util.ConnectionUtility;
import com.login.util.DateConvert;
import com.login.util.IConnectionData;
import java.sql.Statement;



@RunWith(MockitoJUnitRunner.class)
public class BookAppointmentDaoTest {

	@InjectMocks
	private BookAppointmentDao Dao;

	@Mock
	private Statement statement;

	@Mock PreparedStatement mockPreparedStmnt;

	@Mock
	private ResultSet result_set;

	private BookAppointmentBean BAB;

	Connection con = null;
	java.sql.Statement Statement = null;

	@Before
	public void setUp() throws Exception {

		MockitoAnnotations.initMocks(this);

		IConnectionData connection = IConnectionData.getInstance("Test") ;
		Dao = new BookAppointmentDao(connection);

	}  

	@Test
	public void BookAppointment() throws SQLException, ParseException {

		IConnectionData connection = IConnectionData.getInstance("Test") ;
		con= ConnectionUtility.getConnection(connection);

		String sql1="Delete from appointmentDetails ";
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
		BAB.setPatientName("Rahul1");
		BAB.setSpecialist("Dental");
		BAB.setAppointment_Date(AppointmentDate);
		BAB.setAppointment_Time(t);
		BAB.setProblem_Description("TestPD");
		BAB.setComments("TestComments");
		System.out.println(sqlDate);


		Dao.bookAppointment(BAB);


		String sql= "Select * from appointmentdetails";



		Statement = con.createStatement();

		ResultSet rs = Statement.executeQuery(sql);
		while (rs.next()) {

			assertEquals("Andrew Roy", rs.getString(3));
			assertEquals("Rahul1", rs.getString(2));
			assertEquals("Dental", rs.getString(4));
			assertEquals(sqlDate, rs.getDate(5));
			assertEquals(t, rs.getTime(6));
			assertEquals("TestPD", rs.getString(7));
			assertEquals("TestComments", rs.getString(8));
		}
	}

}