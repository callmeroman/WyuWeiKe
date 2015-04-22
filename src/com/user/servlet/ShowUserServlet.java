package com.user.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.jms.Session;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.user.bean.User;
import com.user.dao.IUserDao;
import com.user.dao.impl.UserDaoImpl;

public class ShowUserServlet extends HttpServlet {
	
	private IUserDao dao=new UserDaoImpl();
	
	public ShowUserServlet() {
		super();
	}

	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
	}

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("调用ShowUserServlet.java ");
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		
		String user_id=request.getParameter("user_id");
//		String password=request.getParameter("user_password");
//		//拿到session中的值
//		HttpSession session=request.getSession();
//		String id2 = (String)session.getAttribute(id);
//		String password2 = (String)session.getAttribute(password);
//		//System.out.println("session="+session);
//		
//		System.out.println("ShowUserServlet.doGet()");
//		System.out.println("user_id="+id2);
//		System.out.println("user_password="+password2);
		
		User user=dao.getUserByUser_id(user_id);
//		System.out.println(user);
		request.setAttribute("user", user);
		request.getRequestDispatcher("/user/usermessage.jsp").forward(request, response);
		//List<User>users=dao.getAllUser();//调用数据库数据
		
		
//		Cookie[] cookies = request.getCookies();
//		if (cookies != null) {
//			for (Cookie c : cookies) {
//				if (c.getName().equals("usermsg")) {
//					String value = c.getValue();
//					String[] usermsgs = value.split(":");
//					String	user_id=usermsgs[0];
//					String  user_password=usermsgs[1];
//					if(user_id.equals(id)&&user_password.equals(password)){
//						request.setAttribute("user", user);
//						request.getRequestDispatcher("/user/usemessage.jsp").forward(request, response);
//						break;
//					}
//					response.sendRedirect("/user/login.jsp");
//				}
//			}
//		}
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doGet(request, response);
	}

	public void init() throws ServletException {

	}

}
