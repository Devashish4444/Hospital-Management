package unittest;

import static org.junit.Assert.assertEquals;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.ServletException;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.MockitoAnnotations;
import org.mockito.runners.MockitoJUnitRunner;
import com.login.bean.RegisterBean;
import com.login.dao.RegisterDao;
import com.login.util.ConnectionUtility;
import com.login.util.IConnectionData;
import java.sql.Statement;



@RunWith(MockitoJUnitRunner.class)
public class RegisterDaoTest {

    @InjectMocks
    private RegisterDao Dao;
    
    @Mock
    private PreparedStatement mockPreparedStmnt;
    
    @Mock
    private Statement Stmnt;
    
    @Mock
    private ResultSet result_set;
    
    private RegisterBean RB;
    
	Connection con = null;
	java.sql.Statement Statement = null;

	
    @Before
    public void setUp() throws Exception {
    
        MockitoAnnotations.initMocks(this);
        createTestObject();
        IConnectionData connection = IConnectionData.getInstance("Test") ;
        Dao = new RegisterDao(connection);
       
                
    }    
    
    private void createTestObject() {
    	RB = new RegisterBean();
    	RB.setFirstName("TestfirstName");
    	RB.setLastName("TestlastName");
    	RB.setPassword("1234567");
    	RB.setEmail("abc6@gmail.com");
    	RB.setContact("987654321");
    	RB.setGender("Female");
    	RB.setAddress1("9551, University Terrace Drive");
		RB.setAddress2("Apartment K");
		RB.setCity("Charlotte");
		RB.setState("North Carolina");
		RB.setZipcode("28262");
    	 
    }
 
    @Test
    public void testpositive() throws IOException, ServletException, SQLException {
    	
    	
    	IConnectionData connection = IConnectionData.getInstance("Test") ;
    	con= ConnectionUtility.getConnection(connection);
    	
    	String sql1="Delete from users where role=\"Patient\" ";
    	PreparedStatement preparedStmt = con.prepareStatement(sql1);
    	preparedStmt.execute();
    	
    	Dao.registerUser(RB);
    	
		String sql= "Select * from users where role=\"Patient\"";
		
		Statement = con.createStatement();
    
		ResultSet rs = Statement.executeQuery(sql);
		while (rs.next()) {

		assertEquals("TestfirstName", rs.getString(2));
		assertEquals("TestlastName", rs.getString(3));
		assertEquals("1234567", rs.getString(4));
		assertEquals("abc6@gmail.com", rs.getString(5));
		assertEquals("987654321", rs.getString(6));
		assertEquals("Female", rs.getString(7));
		assertEquals("9551, University Terrace Drive", rs.getString(8));
		assertEquals("Apartment K", rs.getString(9));
		assertEquals("Charlotte", rs.getString(10));
		assertEquals("North Carolina", rs.getString(11));
		assertEquals("28262", rs.getString(12));
		}
          
    }

}