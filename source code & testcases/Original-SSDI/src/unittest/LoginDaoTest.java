package unittest;

import static org.junit.Assert.assertEquals;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.MockitoAnnotations;
import org.mockito.runners.MockitoJUnitRunner;
import com.login.bean.LoginBean;
import com.login.dao.LoginDao;
import com.login.util.ConnectionUtility;
import com.login.util.IConnectionData;

@RunWith(MockitoJUnitRunner.class)
public class LoginDaoTest {

	@InjectMocks
	private LoginDao Dao;

	@Mock
	private PreparedStatement mockPreparedStmnt;

	@Mock
	private ResultSet result_set;

	private LoginBean LB;

	Connection con = null;
	java.sql.Statement Statement = null;



	@Before
	public void setUp() throws SQLException {
		MockitoAnnotations.initMocks(this);
		createTestObject();
		IConnectionData connection = IConnectionData.getInstance("Test") ;
		Dao = new LoginDao(connection);

	}

	private void createTestObject() {
		LB = new LoginBean(); 
		LB.setUserName("HMSadmin@gmail.com");
		LB.setPassword("abde123");

	}

	@After
	public void tearDown() {
	}


	@Test
	public void createValidUserA() throws SQLException {
		Dao.authenticateUser(LB);

		IConnectionData connection = IConnectionData.getInstance("Test") ;
		con= ConnectionUtility.getConnection(connection);      

		String sql= "Select * from users where role =\"Admin\"";


		Statement = con.createStatement();

		ResultSet rs = Statement.executeQuery(sql);
		while (rs.next()) {

			assertEquals("HMSadmin@gmail.com", rs.getString(5));
			assertEquals("abde123", rs.getString(4));
			assertEquals("Admin", rs.getString(13));
		}

	}

}