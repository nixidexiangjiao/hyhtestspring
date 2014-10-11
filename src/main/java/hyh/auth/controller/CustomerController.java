package hyh.auth.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import hyh.auth.model.CustomerInfo;
import hyh.auth.pagemodel.Message;
import hyh.auth.service.ICustomerInfoService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/customerController")
public class CustomerController extends BaseController{

	@Autowired
	private ICustomerInfoService customerInfoService;
	
	@RequestMapping(value = "/manager", method = {RequestMethod.GET})
	public String manager(HttpServletRequest request) {
		return "/auth/customerController";
	}
	
	@RequestMapping(value = "/findAll", method = {RequestMethod.POST})
	@ResponseBody
	public Message findAll() {
		Message message = new Message("0", "成功");
		List<CustomerInfo> customerInfos = customerInfoService.findAll();
		message.setData(customerInfos);
		return message;
	}
	
}
