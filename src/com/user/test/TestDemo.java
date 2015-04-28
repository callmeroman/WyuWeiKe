package com.user.test;

import java.util.List;

import org.junit.Test;

import com.user.bean.User;
import com.user.dao.impl.DaoFactory;
import com.user.dao.impl.UserDaoImpl;

public class TestDemo {
	private UserDaoImpl userdao=new UserDaoImpl();
	@Test
	public void testall(){
		User u=userdao.getUserByUser_id("11080326");
			System.out.println(u.getUser_name());
		
		
		
	}
}
