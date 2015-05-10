package com.user.dao;


import java.util.List;

import javax.management.Query;

import com.user.bean.PageBean;
import com.user.bean.User;

public interface IUserDao {
//实现登录注册接口
	public boolean addUser(User user);
	
	public User getUserByUser_id(String user_id);//查询单个用户
	
	public boolean upUserByid(User user);//更新用户信息
	
	public boolean deleteUserByid(User user);//删除用户信息
	
	public PageBean<User> findAllUser(int pc,int ps);//分页查询技术
	
	public User findUserByUser_idAndPassword(String user_id,String user_password);
	
	public PageBean<User> queryUser(User criteria,int pc,int ps);//多条件组合分页查询用户数据.用于搜索 
	
	
}
