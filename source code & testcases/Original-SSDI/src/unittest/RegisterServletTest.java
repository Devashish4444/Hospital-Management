package unittest;

import static org.junit.Assert.assertEquals;
import static org.mockito.Mockito.when;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.junit.Before;
import org.junit.Test;
import org.mockito.Mock;
import org.mockito.MockitoAnnotations;

import com.login.controller.RegisterServlet;
import com.login.util.ConnectionUtility;
import com.login.util.IConnectionData;
 
public class RegisterServletTest {
    @Mock
    HttpServletRequest request1;

    @Mock
    HttpServletResponse response1;
    
    
    @Mock
    RegisterServlet servlet;
    
	Connection con = null;
	java.sql.Statement Statement = null;

	@Before
	    public void setUp1() throws Exception {
	        MockitoAnnotations.initMocks(this);
	       createTestObject1();

	       
	    }
	private void createTestObject1() {
		  when(request1.getParameter("firstName")).thenReturn("ABCD");
          when(request1.getParameter("lastName")).thenReturn("Samant");
          when(request1.getParameter("password")).thenReturn("Marsplanet1.");
          when(request1.getParameter("email")).thenReturn("testing123@gmail.com");
          when(request1.getParameter("contact")).thenReturn("1199778844");
          when(request1.getParameter("gender")).thenReturn("F");
          when(request1.getParameter("address1")).thenReturn("9552 UTN");
          when(request1.getParameter("address2")).thenReturn("Apartment L");
          when(request1.getParameter("city")).thenReturn("Charlotte");
          when(request1.getParameter("state")).thenReturn("North Carolina");
          when(request1.getParameter("zipcode")).thenReturn("28262");
	}

	@Test
	
	public void testpositive1() throws IOException, ServletException, SQLException
	{
    	IConnectionData connection = IConnectionData.getInstance("Test") ;
    	con= ConnectionUtility.getConnection(connection);
    	
    	String sql1="Delete from users where role=\"Patient\" ";
    	PreparedStatement preparedStmt = con.prepareStatement(sql1);
    	preparedStmt.execute();
		
        StringWriter sw = new StringWriter();
        PrintWriter pw = new PrintWriter(sw);
         
        when(response1.getWriter()).thenReturn(pw);

 	   RegisterServlet myServlet =new RegisterServlet(connection);
       myServlet.doGet(request1, response1);
        
       
        
        String result = sw.getBuffer().toString().trim();

        System.out.println("Result: "+result);
        

        assertEquals("Success", result);
    }

   }