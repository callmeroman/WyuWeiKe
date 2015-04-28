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
 * 在这里给出多个请求处理方法
 * 请求处理方法：除了名称以外都与service相同（service调用doget，dopost）
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
		System.out.println("调用UserServlet中的addUser");
		User user=CommonUtils.toBean(request.getParameterMap(), User.class);//调用自定义的jar包方法
		user.setUser_id(CommonUtils.uuid());
		userDaoImpl.addUser(user);
		request.setAttribute("message", "恭喜！注册成功！");
		request.getRequestDispatcher("/user/mycourse.jsp").forward(request, response);

	}

	public void editUser(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("调用UserServlet中的editUser");

	}
	public void deleteUser(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("调用UserServlet中的deleteUser");

	}

	public void init() throws ServletException {
		// Put your code here
	}

}
