package com.user.dao;

import org.junit.Test;

import com.user.bean.User;
import com.user.dao.impl.UserDaoImpl;

public class UserTest {
	@Test
	public void addDate(){
		IUserDao userDaoImpl= new UserDaoImpl();
		for (int i = 1; i < 300; i++) {
			User user = new User();
			user.setUser_id("11080326"+i);
			user.setUser_password("123456");
			user.setUser_name("Roman"+i);
			user.setUser_sex(i%2==0?"男":"女");
			user.setUser_academy("计算机学院");
			user.setUser_phone("13428282121");
			user.setUser_qq("5412121212");
			user.setUser_email("Roman"+i+"@qq.com");
			userDaoImpl.addUser(user);
		}
		
		
		
	}

}
