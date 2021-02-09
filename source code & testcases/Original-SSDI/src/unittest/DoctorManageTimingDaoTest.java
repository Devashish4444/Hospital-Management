package unittest;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotEquals;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
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

import com.login.bean.BookAppointmentBean;
import com.login.dao.DoctorManageTimingsDao;
import com.login.util.ConnectionUtility;
import com.login.util.DateConvert;
import com.login.util.IConnectionData;


@RunWith(MockitoJUnitRunner.class)

public class DoctorManageTimingDaoTest {

	@InjectMocks
	private DoctorManageTimingsDao Dao;

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
		Dao = new DoctorManageTimingsDao(connection);

	}    



	@Test
	public void UpdateSlot() throws SQLException, ParseException {

		IConnectionData connection = IConnectionData.getInstance("Test") ;
		con= ConnectionUtility.getConnection(connection);

		String sql1="insert into slot values(1,\"Andrew Roy\",\"andrewr@gmail.com\",\"2019-11-26\",\"10:00\",\"10:30\")";
		PreparedStatement preparedStmt = con.prepareStatement(sql1);
		preparedStmt.execute();

		DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd",Locale.US);
		String dateInString = "2019-11-26";


		LocalDate date = LocalDate.parse(dateInString,formatter);


		DateConvert dateConvert = new DateConvert();
		java.util.Date AppointmentDate=dateConvert.convertToDateViaInstant(date);	
		java.sql.Date sqlDate = new java.sql.Date(AppointmentDate.getTime());
		SimpleDateFormat formatDate = new SimpleDateFormat("HH:mm a");
		String time1 = "10:00 AM";
		long ms1 = formatDate.parse(time1).getTime();
		Time t1 = new Time(ms1);              

		BAB = new BookAppointmentBean();

		BAB.setEmail("andrewr@gmail.com");

		BAB.setAppointment_Date(AppointmentDate);
		BAB.setAppointment_Time(t1);
		DoctorManageTimingsDao TDao= new DoctorManageTimingsDao(connection);
		TDao.updateSlot(BAB);

		String sql= "Select * from slot where Doctor_id=1 and Date=\"2019-11-26\" and slot_fromtime=\"10:00:00\"";
		Statement = con.createStatement();

		ResultSet rs = Statement.executeQuery(sql);
		while (rs.next()) {

			assertNotEquals("andrewr@gmail.com", rs.getString(3));

			assertNotEquals(sqlDate, rs.getDate(4));
			assertNotEquals(t1, rs.getTime(5));
		}
	}

	@Test
	public void getDoctorListFromDb() throws SQLException, ParseException {

		String a[] = new String[] {"Andrew","Roy", "andrewr@gmail.com","9874531122","Male"}; 
		List<String> list = Arrays.asList(a);

		// System.out.println(list.get(4));


		IConnectionData connection = IConnectionData.getInstance("Test") ;
		con= ConnectionUtility.getConnection(connection);

		Dao.getDoctorListFromDb();

		String sql= "Select * from users where USERID=1";

		Statement = con.createStatement();

		ResultSet rs = Statement.executeQuery(sql); // Making use of prepared statements here to insert bunch of data
		while (rs.next()) {

			assertEquals(rs.getString(2), list.get(0));
			assertEquals(rs.getString(3), list.get(1));
			assertEquals(rs.getString(5), list.get(2));
			assertEquals(rs.getString(6), list.get(3));
			assertEquals(rs.getString(7), list.get(4));


		}
	}
}