package hyh.auth.service;

import hyh.auth.model.CustomerInfo;

import java.util.List;

public interface ICustomerInfoService {
	List<CustomerInfo> findAll();
}
