package unittest;

import static org.junit.Assert.assertEquals;
import static org.mockito.Mockito.when;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.junit.Before;
import org.junit.Test;
import org.mockito.Mock;
import org.mockito.MockitoAnnotations;

import com.login.controller.PatientDetailsServlet;
import com.login.util.IConnectionData;
 
public class PatientDetailsServletTest {
    @Mock
    HttpServletRequest request1;

    @Mock
    HttpServletResponse response1;
    
    
    @Mock
    PatientDetailsServlet servlet;
    

	@Before

	    public void setUp1() throws Exception {
	        MockitoAnnotations.initMocks(this);
	  	
	    }
	

	@Test
	
	public void testpositive1() throws IOException, ServletException
	{

		
        StringWriter sw = new StringWriter();
        PrintWriter pw = new PrintWriter(sw);
         
        when(response1.getWriter()).thenReturn(pw);
 	   IConnectionData connection = IConnectionData.getInstance("Test") ;
 	  PatientDetailsServlet myServlet = new PatientDetailsServlet(connection);
       myServlet.doGet(request1, response1);
       System.out.println("Response: " +response1);
     
      
        String result = sw.getBuffer().toString().trim();
        String str[] = result.split(",");
        List<String> al = new ArrayList<String>(Arrays.asList(result.split(",")));
		 al = Arrays.asList(str);
	     System.out.println("al:" +al);
         assertEquals(false, al.isEmpty());   
      
        //assertEquals(-1, al.indexOf(1));
		/*
		 * System.out.println("Result: "+result); verify(request1,
		 * result(1)).getParameter("username");
		 */
        //assertEquals("json", result);
        //assertEquals("5, result.size());
    }

   }