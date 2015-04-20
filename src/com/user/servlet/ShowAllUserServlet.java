package com.user.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.user.bean.User;
import com.user.dao.IUserDao;
import com.user.dao.impl.UserDaoImpl;

public class ShowAllUserServlet extends HttpServlet {
	
	private IUserDao dao=new UserDaoImpl();

	public ShowAllUserServlet() {
		super();
	}

	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("调用ShowAllUserServlet.java ");
			request.setCharacterEncoding("utf-8");
			response.setCharacterEncoding("uft-8");
			
			List<User>users=dao.getAllUser();//获得数据
			request.setAttribute("users", users);//放入对象
			request.getRequestDispatcher("/My.jsp").forward(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
			this.doGet(request, response);
	}

	public void init() throws ServletException {
	}

}
