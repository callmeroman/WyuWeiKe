package com.user.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.itcast.commons.CommonUtils;
import cn.itcast.servlet.BaseServlet;

import com.user.bean.User;
import com.user.dao.IUserDao;
import com.user.dao.impl.UserDaoImpl;



/*
 * ��������������������
 * ���������������������ⶼ��service��ͬ��service����doget��dopost��
 *  
 * */

public class UserServlet extends BaseServlet {
	private UserDaoImpl userDaoImpl=new UserDaoImpl();

	public UserServlet() {
		super();
	}

	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}
	

	public void addUser(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("����UserServlet�е�addUser");
		User user=CommonUtils.toBean(request.getParameterMap(), User.class);//�����Զ����jar������
		user.setUser_id(CommonUtils.uuid());
		userDaoImpl.addUser(user);
		request.setAttribute("message", "��ϲ��ע��ɹ���");
		request.getRequestDispatcher("/user/mycourse.jsp").forward(request, response);

	}

	public void editUser(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("����UserServlet�е�editUser");

	}
	public void deleteUser(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("����UserServlet�е�deleteUser");

	}

	public void init() throws ServletException {
		// Put your code here
	}

}
