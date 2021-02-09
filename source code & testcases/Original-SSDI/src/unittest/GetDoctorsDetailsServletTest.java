package unittest;

import static org.junit.Assert.assertEquals;
import static org.mockito.Mockito.when;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.sql.Connection;
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

import com.login.controller.GetDoctorDetailsServlet;
import com.login.util.ConnectionUtility;
import com.login.util.IConnectionData;
public class GetDoctorsDetailsServletTest {
    @Mock
    HttpServletRequest request1;

    @Mock
    HttpServletResponse response1;
    
    
    @Mock
    GetDoctorDetailsServlet servlet;
    

	Connection con = null;
	java.sql.Statement Statement = null;
	
	@Before
	    public void setUp1() throws Exception {
	        MockitoAnnotations.initMocks(this);
	     

	       
	    }
	

	@Test
	
	public void testpositive1() throws IOException, ServletException
	{

		
		IConnectionData connection = IConnectionData.getInstance("Test") ;
    	con= ConnectionUtility.getConnection(connection);
		
        StringWriter sw = new StringWriter();
        PrintWriter pw = new PrintWriter(sw);
         
        when(response1.getWriter()).thenReturn(pw);
 
 	  GetDoctorDetailsServlet myServlet =new GetDoctorDetailsServlet(connection);
       myServlet.doGet(request1, response1);
        
       
        
        String result = sw.getBuffer().toString().trim();

        System.out.println("Result: "+result);
         
        
         String str[] = result.split(",");
        List<String> al = new ArrayList<String>(Arrays.asList(result.split(",")));
		 al = Arrays.asList(str);
	     System.out.println("al:" +al);
         assertEquals(false, al.isEmpty());   

    }

   }