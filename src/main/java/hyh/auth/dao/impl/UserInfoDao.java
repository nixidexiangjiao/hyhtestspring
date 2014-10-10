package hyh.auth.dao.impl;

import org.springframework.stereotype.Repository;

import hyh.auth.dao.IUserInfoDao;
import hyh.auth.model.UserInfo;

@Repository
public class UserInfoDao extends BaseDao<UserInfo> implements IUserInfoDao{

}
