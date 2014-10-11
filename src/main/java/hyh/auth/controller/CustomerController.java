package hyh.auth.controller;

import javax.servlet.http.HttpServletRequest;

import hyh.auth.service.ICustomerInfoService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/customerController")
public class CustomerController extends BaseController{

	@Autowired
	private ICustomerInfoService customerInfoService;
	
	@RequestMapping("/findAll")
	public String findAll(HttpServletRequest request) {
		return "/auth/customerController";
	}
	
}
