package unittest;

import static org.junit.Assert.*;
import org.junit.Test;
import org.mockito.internal.verification.api.VerificationData;
import org.mockito.verification.VerificationMode;
import com.login.bean.LoginBean;

public class LoginBeanTest {
	private LoginBean Login1;

	@Test
	public void BeanTest() {

		Login1 = new LoginBean();
		Login1.setUserName("HMSadmin@gmail.com");
		Login1.setPassword("abde123");

		new VerificationMode() {
			{
				assertEquals("HMSadmin@gmail.com", Login1.getUserName());
				assertEquals("abde123", Login1.getPassword());
			}

			@Override
			public void verify(VerificationData data) {

			}
		};

	};

};