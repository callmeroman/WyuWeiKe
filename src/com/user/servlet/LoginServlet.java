package com.user.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.user.bean.User;
import com.user.dao.IUserDao;
import com.user.dao.impl.UserDaoImpl;

public class LoginServlet extends HttpServlet {

	public LoginServlet() {
		super();
	}

	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
	}

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

//	public void doPost(HttpServletRequest request, HttpServletResponse response)
//			throws ServletException, IOException {
//
//		// 获取提交的信息
//		request.setCharacterEncoding("utf-8");
//		response.setCharacterEncoding("utf-8");
//		String id = request.getParameter("user_id");
//		String pass = request.getParameter("user_password");
//		String autologin = request.getParameter("autologin");
//		
//		System.out.println("LoginServlet");
//		//System.out.println("id:" + id + "password:" + pass);
//		
//		// 查询数据
//		IUserDao dao = new UserDaoImpl();
//		User user = dao.findUserByUser_idAndPassword(id, pass);
//		if (user != null && user.getUser_id().equals(id)
//				&& user.getUser_password().equals(pass)) {
//			// 放入Session
//			request.getSession().setAttribute("user", user);
//			// 重定向
//			 response.sendRedirect("/WyuWeiKe/user/mycourse.jsp");
////			request.setAttribute("user", user);
////			request.getRequestDispatcher("/user/mycourse.jsp").forward(request,
////					response);
//
//		} else {
//
//			response.sendRedirect("/WyuWeiKe/user/login.jsp");
//			System.out.println("/WyuWeiKe/user/login.jsp2");
//		}
//	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("调用LoginServlet.java ");
		//获取提交的信息
		String id = request.getParameter("user_id");
		String password = request.getParameter("user_password");
		
		System.out.println("user_id="+id);
		System.out.println("user_password="+password);
		
		//查询数据
		IUserDao dao = new UserDaoImpl();
		User user = dao.getUserByUser_id(id);
		if(user!=null){
			if(user.getUser_password().equals(password)){
//				String msg = id+":"+password;
//				Cookie c = new Cookie("usermsg",msg);
				//cookic生命周期；单位秒；大于0关闭客户端仍存在；等于0马上删除；小于0关闭客户端是删除
//				c.setMaxAge(-1);
//				response.addCookie(c);
				//放入Session
				HttpSession session = request.getSession();
				session.setAttribute("user", user);
//				request.getSession().setAttribute("user", user);
				//重定向,session保存在客户端中，故无需转发request数据。
				response.sendRedirect("/WyuWeiKe/user/mycourse.jsp");
			}else{//登录失败
				//保存错误信息在request中
//				//重定向
//				response.sendRedirect("/WyuWeiKe/login.jsp");
				//请求转发.登录失败信息保存在request中，故采用请求转发。
				request.setAttribute("errormessage", "密码错误！");
				request.getRequestDispatcher("/login.jsp").forward(request, response);
			}
		}else{
			request.setAttribute("errormessage", "请输入用户名和密码！");
			request.getRequestDispatcher("/login.jsp").forward(request, response);
		}
		
	}


	
	
	
	
	
	
	
	public void init() throws ServletException {

	}

}
