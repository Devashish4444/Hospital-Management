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

import com.login.controller.DoctorManageTimings;
import com.login.util.ConnectionUtility;
import com.login.util.IConnectionData;

 
public class DoctorManageTimingsServletTest {

 
    @Mock
    HttpServletRequest request;
 
    @Mock
    HttpServletResponse response;
    
   @Mock
   HttpSession session;
    
    @Mock
    DoctorManageTimings servlet;
    
    
	Connection con = null;
	java.sql.Statement Statement = null;
    

    @Before
    public void setUp() throws Exception {
        MockitoAnnotations.initMocks(this);
  

       
    }
        
 
	@Test
    public void testpositive() throws IOException, ServletException, ParseException, SQLException {
	
		
    	IConnectionData connection = IConnectionData.getInstance("Test") ;
    	con= ConnectionUtility.getConnection(connection);
    	
    	
       	String sql1="insert into slot values(1,\"Andrew Roy\",\"andrewr@gmail.com\",\"2019-12-05\",\"10:30\",\"11:00\")";
    	PreparedStatement preparedStmt = con.prepareStatement(sql1);
    	preparedStmt.execute();
String dateInString = "2019-12-05";
		
		String time = "10:30:00";
		
		

		 when(request.getSession()).thenReturn(session);	
		 when(session.getAttribute("email")).thenReturn("andrewr@gmail.com");
         when(request.getParameter("Appointment_Date")).thenReturn(dateInString);
         when(request.getParameter("Slot_Time")).thenReturn(time);




	
         StringWriter sw = new StringWriter();
         PrintWriter pw = new PrintWriter(sw);
          
         when(response.getWriter()).thenReturn(pw);
         
   	DoctorManageTimings myServlet =new DoctorManageTimings(connection);
         myServlet.doGet(request, response);
          
         
        
         
         String result = sw.getBuffer().toString().trim();

         System.out.println("Result: "+result);
         

        assertEquals("Success", result);
         
 
      
       

   }

}