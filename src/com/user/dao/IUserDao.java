package com.user.dao;


import java.util.List;

import com.user.bean.User;

public interface IUserDao {
//实现登录注册接口
	public boolean saveuser(User user);
	
	public User getUserByUser_id(String user_id);
	
	public boolean upUserByid(User user);
	
	public List<User> getAllUser();
	
	public User findUserByUser_idAndPassword(String user_id,String user_password);
	
	
	
	
}
