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
import java.util.Arrays;
import java.util.List;
import java.util.Locale;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.MockitoAnnotations;
import org.mockito.runners.MockitoJUnitRunner;

import com.login.bean.DoctorDetailsBean;
import com.login.dao.PatientDetailsDao;
import com.login.util.ConnectionUtility;
import com.login.util.DateConvert;
import com.login.util.IConnectionData;


@RunWith(MockitoJUnitRunner.class)
public class PatientDetailsDaoTest {

	@InjectMocks
	private PatientDetailsDao Dao;

	@Mock
	private PreparedStatement mockPreparedStmnt;

	@Mock
	private ResultSet result_set;

	private DoctorDetailsBean DB;

	Connection con = null;
	java.sql.Statement Statement = null;


	@Before
	public void setUp() throws Exception {

		MockitoAnnotations.initMocks(this);

		IConnectionData connection = IConnectionData.getInstance("Test") ;
		Dao = new PatientDetailsDao(connection);

	}    

	@Test
	public void retrievePatient() throws SQLException, ParseException {


		String a[] = new String[] {"Harry", "Andrew Roy", "Dental", "2019-11-26" ,"10:00 AM", "TestPD", "TestComments" }; 
		List<String> list = Arrays.asList(a);

		System.out.println(list.get(4));
		DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd",Locale.US);
		String dateInString = list.get(3);


		LocalDate date = LocalDate.parse(dateInString,formatter);


		DateConvert dateConvert = new DateConvert();
		java.util.Date AppointmentDate=dateConvert.convertToDateViaInstant(date);	
		java.sql.Date sqlDate = new java.sql.Date(AppointmentDate.getTime());
		SimpleDateFormat formatDate = new SimpleDateFormat("HH:mm a");
		String time = list.get(4);
		long ms = formatDate.parse(time).getTime();
		Time t = new Time(ms);
		IConnectionData connection = IConnectionData.getInstance("Test") ;
		con= ConnectionUtility.getConnection(connection);

		Dao.getPatientListFromDb();

		String sql= "Select * from appointmentDetails";

		Statement = con.createStatement();

		ResultSet rs = Statement.executeQuery(sql);// Making use of prepared statements here to insert bunch of data
		while (rs.next()) {

			assertEquals(rs.getString(2), list.get(0));
			assertEquals(rs.getString(3), list.get(1));
			assertEquals(rs.getString(4), list.get(2));
			assertEquals(rs.getDate(5), sqlDate);
			assertEquals(rs.getTime(6), t);
			assertEquals(rs.getString(7), list.get(5));
			assertEquals(rs.getString(8), list.get(6));
		}

	}

	@Test
	public void retrievePatient1() throws SQLException, ParseException {    


		String a[] = new String[] {"Rahul1", "Andrew Roy", "Dental", "2019-11-26" ,"10:00 AM", "TestPD", "TestComments" }; 
		List<String> list = Arrays.asList(a);

		System.out.println(list.get(4));
		DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd",Locale.US);
		String dateInString = list.get(3);
		LocalDate date = LocalDate.parse(dateInString,formatter);
		DateConvert dateConvert = new DateConvert();
		java.util.Date AppointmentDate=dateConvert.convertToDateViaInstant(date);	
		java.sql.Date sqlDate = new java.sql.Date(AppointmentDate.getTime());

		SimpleDateFormat formatDate = new SimpleDateFormat("HH:mm a");
		String time = list.get(4);
		long ms = formatDate.parse(time).getTime();
		Time t = new Time(ms);

		IConnectionData connection = IConnectionData.getInstance("Test") ;
		con= ConnectionUtility.getConnection(connection);

		DB = new DoctorDetailsBean();

		DB.setDoctorName("Andrew Roy");

		Dao.getPatientListForDoctor(DB);
		//.
		String sql= "Select * from appointmentDetails";

		Statement = con.createStatement();

		ResultSet rs = Statement.executeQuery(sql);// Making use of prepared statements here to insert bunch of data
		while (rs.next()) {

			assertEquals(rs.getString(2), list.get(0));
			assertEquals(rs.getString(3), list.get(1));
			assertEquals(rs.getString(4), list.get(2));
			assertEquals(rs.getDate(5), sqlDate);
			assertEquals(rs.getTime(6), t);
			assertEquals(rs.getString(7), list.get(5));
			assertEquals(rs.getString(8), list.get(6));
		}


	}
}