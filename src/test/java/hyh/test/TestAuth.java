package hyh.test;

import java.util.List;

import hyh.auth.model.CustomerInfo;
import hyh.auth.service.ICustomerInfoService;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "classpath:spring.xml" })
public class TestAuth {
	@Autowired
	private ICustomerInfoService customerInfoService;

	@Test
	public void t1() {
		List<CustomerInfo> customerInfos = customerInfoService.findAll();
		for (CustomerInfo customerInfo : customerInfos) {
			System.out.println(customerInfo.getCstNo() + ":" + customerInfo.getCstName());
		}
	}
}
