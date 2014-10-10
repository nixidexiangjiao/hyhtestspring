package hyh.auth.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import hyh.auth.dao.ICustomerInfoDao;
import hyh.auth.model.CustomerInfo;
import hyh.auth.service.ICustomerInfoService;

@Service
public class CustomerInfoServiceImpl implements ICustomerInfoService{
	@Autowired
	private ICustomerInfoDao customerInfoDao;

	@Override
	public List<CustomerInfo> findAll() {
		// TODO Auto-generated method stub
		return customerInfoDao.find("from CustomerInfo");
	}
	
}
