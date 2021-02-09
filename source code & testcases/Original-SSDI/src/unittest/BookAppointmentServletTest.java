package unittest;

import static org.junit.Assert.assertEquals;
import static org.mockito.Mockito.when;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.text.ParseException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.junit.Before;
import org.junit.Test;
import org.mockito.Mock;
import org.mockito.MockitoAnnotations;

import com.login.controller.BookAppointmentServlet;
import com.login.util.ConnectionUtility;
import com.login.util.IConnectionData;

public class BookAppointmentServletTest {

	@Mock
	HttpServletRequest request;

	@Mock
	HttpServletResponse response;

	@Mock
	HttpSession session;

	@Mock
	BookAppointmentServlet servlet;

	Connection con = null;
	java.sql.Statement Statement = null;


	@Before
	public void setUp() throws Exception {
		MockitoAnnotations.initMocks(this);       
	}


	@Test
	public void testpositive() throws IOException, ServletException, ParseException, SQLException {
		String dateInString = "2019-12-05";

		String time = "10:30 AM";
		IConnectionData connection = IConnectionData.getInstance("Test") ;
		con= ConnectionUtility.getConnection(connection);

		String sql1="Delete from appointmentDetails ";
		PreparedStatement preparedStmt = con.prepareStatement(sql1);
		preparedStmt.execute();


		when(request.getSession()).thenReturn(session);
		when(session.getAttribute("fullName")).thenReturn("Harry");
		when(request.getParameter("dcsource")).thenReturn("Andrew Roy");
		when(request.getParameter("doctorssource")).thenReturn("Dental");
		when(request.getParameter("Appointment_Date")).thenReturn(dateInString);
		when(request.getParameter("Appointment_Time")).thenReturn(time);
		when(request.getParameter("Problem_Description")).thenReturn("TESTPD");
		when(request.getParameter("Comments")).thenReturn("TESTComments");

		StringWriter sw = new StringWriter();
		PrintWriter pw = new PrintWriter(sw);

		when(response.getWriter()).thenReturn(pw);

		BookAppointmentServlet myServlet =new BookAppointmentServlet(connection);
		myServlet.doGet(request, response);      



		String result = sw.getBuffer().toString().trim();

		System.out.println("Result: "+result);


		assertEquals("Success", result);   


	}

}