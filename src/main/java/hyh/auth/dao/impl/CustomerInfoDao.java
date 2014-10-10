package hyh.auth.dao.impl;

import org.springframework.stereotype.Repository;

import hyh.auth.dao.ICustomerInfoDao;
import hyh.auth.model.CustomerInfo;

@Repository
public class CustomerInfoDao extends BaseDao<CustomerInfo> implements ICustomerInfoDao{

}
