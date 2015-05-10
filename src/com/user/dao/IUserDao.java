package com.user.dao;


import java.util.List;

import javax.management.Query;

import com.user.bean.PageBean;
import com.user.bean.User;

public interface IUserDao {
//ʵ�ֵ�¼ע��ӿ�
	public boolean addUser(User user);
	
	public User getUserByUser_id(String user_id);//��ѯ�����û�
	
	public boolean upUserByid(User user);//�����û���Ϣ
	
	public boolean deleteUserByid(User user);//ɾ���û���Ϣ
	
	public PageBean<User> findAllUser(int pc,int ps);//��ҳ��ѯ����
	
	public User findUserByUser_idAndPassword(String user_id,String user_password);
	
	public PageBean<User> queryUser(User criteria,int pc,int ps);//��������Ϸ�ҳ��ѯ�û�����.�������� 
	
	
}
