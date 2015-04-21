package com.user.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.user.bean.User;
import com.user.dao.IUserDao;
import com.user.dao.impl.UserDaoImpl;

public class RegisterServlet extends HttpServlet {

	public RegisterServlet() {
		super();
	}

	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
	}

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("调用RegisterServlet.java ");

		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		String user_id=request.getParameter("user_id");
		String user_password=request.getParameter("user_password");
		String user_name=request.getParameter("user_name");
		String user_sex=request.getParameter("user_sex");
		String user_academy=request.getParameter("user_academy");
		String user_phone=request.getParameter("user_phone");
		String user_qq=request.getParameter("user_qq");
		String user_email=request.getParameter("user_email");
		User user=new User();
		UserDaoImpl userDaoImpl=new UserDaoImpl();
		user.setUser_id(user_id);
		user.setUser_password(user_password);
		user.setUser_name(user_name);
		user.setUser_sex(user_sex);
		user.setUser_academy(user_academy);
		user.setUser_phone(user_phone);
		user.setUser_qq(user_qq);
		user.setUser_email(user_email);
		//将参数存入request中，可通过请求跳转传值
//		request.setAttribute(user_id, user_id);
//		request.setAttribute(user_password, user_password);
//		request.setAttribute(user_name, user_name);
//		request.setAttribute(user_sex, user_sex);
//		request.setAttribute(user_academy, user_academy);
//		request.setAttribute(user_phone, user_phone);
//		request.setAttribute(user_qq, user_qq);
//		request.setAttribute(user_email, user_email);
		
		userDaoImpl.saveuser(user);
		response.sendRedirect("/WyuWeiKe/user/mycourse.jsp");
		//request.getRequestDispatcher("/login.jsp").forward(request, response);
	
	}

	public void init() throws ServletException {

	}

}
