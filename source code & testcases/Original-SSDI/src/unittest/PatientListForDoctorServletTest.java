package unittest;

import static org.junit.Assert.assertEquals;
import static org.mockito.Mockito.when;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.sql.Connection;
import java.sql.SQLException;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.junit.Before;
import org.junit.Test;
import org.mockito.Mock;
import org.mockito.MockitoAnnotations;

import com.login.controller.PatientListForDoctorServlet;
import com.login.dao.PatientDetailsDao;
import com.login.util.ConnectionUtility;
import com.login.util.IConnectionData;



 
public class PatientListForDoctorServletTest {
 
    @Mock
    HttpServletRequest request;
 
    @Mock
    HttpServletResponse response;
    
    @Mock
    PatientDetailsDao Dao;
    
    @Mock
    HttpSession session;
     
    @Mock
    PatientListForDoctorServlet servlet;
    
	Connection con = null;
	java.sql.Statement Statement = null;

    @Before
    public void setUp() throws Exception {
        MockitoAnnotations.initMocks(this);


       
    }
     @Test
    public void testpositive1() throws IOException, ServletException, ParseException, SQLException {
	   
    	
    	IConnectionData connection = IConnectionData.getInstance("Test") ;
    	con= ConnectionUtility.getConnection(connection);
    	

    	
    	
    	when(request.getSession()).thenReturn(session);
	
		 when(session.getAttribute("fullName")).thenReturn("Andrew Roy");
		
	    
		   StringWriter sw = new StringWriter();
		      PrintWriter pw = new PrintWriter(sw);
		       
		      when(response.getWriter()).thenReturn(pw);
			
			   PatientListForDoctorServlet myServlet =new PatientListForDoctorServlet(connection);
		      myServlet.doGet(request, response);
		       
		    
				
		      String result = sw.getBuffer().toString().trim();
		      
		       String str[] = result.split(",");
		        List<String> al = new ArrayList<String>(Arrays.asList(result.split(",")));
				 al = Arrays.asList(str);
			     System.out.println("al:" +al);
		         assertEquals(false, al.isEmpty());

		      System.out.println("Result: "+result);
		
	
	
    }
    
}