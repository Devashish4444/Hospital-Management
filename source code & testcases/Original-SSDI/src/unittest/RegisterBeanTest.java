package unittest;

import static org.junit.Assert.*;
import org.junit.Test;
import org.mockito.internal.verification.api.VerificationData;
import org.mockito.verification.VerificationMode;

import com.login.bean.RegisterBean;

public class RegisterBeanTest {
	private RegisterBean RB;

	@Test
	public void BeanTest() {

		RB = new RegisterBean();

		RB.setFirstName("TestFN");
		RB.setLastName("TestLN");
		RB.setEmail("Test12@gmail.com");
		RB.setContact("4536192870");
		RB.setPassword("Test1234");
		RB.setGender("F");
		RB.setAddress1("9551, University Terrace Drive");
		RB.setAddress2("Apartment K");
		RB.setCity("Charlotte");
		RB.setState("North Carolina");
		RB.setZipcode("28262");

		new VerificationMode() {
			{
				assertEquals("TestFN", RB.getFirstName());
				assertEquals("TestLN", RB.getLastName());
				assertEquals("Test1234", RB.getPassword());
				assertEquals("Test12@gmail.com", RB.getEmail());
				assertEquals("4536192870", RB.getContact());
				assertEquals("F", RB.getGender());
				assertEquals("9551, University Terrace Drive", RB.getAddress1());
				assertEquals("Apartment K", RB.getAddress2());
				assertEquals("Charlotte", RB.getCity());
				assertEquals("North Carolina", RB.getState());
				assertEquals("28262", RB.getZipcode());
			}

			
			
			
			
			@Override
			public void verify(VerificationData data) {

			}
		};

	}
};
