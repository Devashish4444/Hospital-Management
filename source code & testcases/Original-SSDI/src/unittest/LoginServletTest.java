package unittest;

import static org.junit.Assert.assertEquals;
import static org.mockito.Mockito.when;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.sql.Connection;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.junit.Before;
import org.junit.Test;
import org.mockito.Mock;
import org.mockito.MockitoAnnotations;

import com.login.controller.LoginServlet;
import com.login.util.ConnectionUtility;
import com.login.util.IConnectionData;

 
public class LoginServletTest {
 
    @Mock
    HttpServletRequest request;
 
    @Mock
    HttpServletResponse response;
    
    @Mock
    HttpSession session;
    
    @Mock
    LoginServlet servlet;
    
	Connection con = null;
	java.sql.Statement Statement = null;


    @Before
    public void setUp() throws Exception {
        MockitoAnnotations.initMocks(this);
 

       
    }

	@Test
	    public void testDaoCalling() throws IOException, ServletException {
		
		IConnectionData connection = IConnectionData.getInstance("Test") ;
    	con= ConnectionUtility.getConnection(connection);
		   
		when(request.getSession()).thenReturn(session);
		  when(request.getParameter("username")).thenReturn("HMSadmin@gmail.com");
		  when(request.getParameter("password")).thenReturn("abde123");

	        StringWriter sw = new StringWriter();
	        PrintWriter pw = new PrintWriter(sw);
	         
	        when(response.getWriter()).thenReturn(pw);
	    	
	 	 
			
	       LoginServlet myServlet =new LoginServlet();
	       myServlet.doGet(request, response);
	        
	       
	        String result = sw.getBuffer().toString().trim();


	        
	       String m = result.replaceAll("[^a-zA-Z0-9]", "");
	        
	   
	     
	       assertEquals("firstNameadminadminmessageAdminRole", m);
	    }
	   
	@Test
    public void testDaoCalling1() throws IOException, ServletException {
	   
		
		IConnectionData connection = IConnectionData.getInstance("Test") ;
    	con= ConnectionUtility.getConnection(connection);
    	
	when(request.getSession()).thenReturn(session);
    when(request.getParameter("username")).thenReturn("hays@gmail.com");
    when(request.getParameter("password")).thenReturn("abty123");

        StringWriter sw = new StringWriter();
        PrintWriter pw = new PrintWriter(sw);
         
        when(response.getWriter()).thenReturn(pw);
    	

		
       LoginServlet myServlet =new LoginServlet();
       myServlet.doGet(request, response);
        
       
        String result = sw.getBuffer().toString().trim();

 
        
       String m = result.replaceAll("[^a-zA-Z0-9]", "");
        
    
     
      assertEquals("firstNamemessageInvalidusercredentials", m);
    }
       

	    }