package com.user.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.user.bean.PageBean;
import com.user.bean.User;
import com.user.dao.IUserDao;
import com.user.dao.impl.UserDaoImpl;

public class ShowAllUserServlet extends HttpServlet {
	
	private IUserDao userdao=new UserDaoImpl();

	public ShowAllUserServlet() {
		super();
	}

	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("����ShowAllUserServlet.java ");
			request.setCharacterEncoding("utf-8");
			response.setCharacterEncoding("uft-8");
			
			
			/*��ҳ
			 * 1.��ȡjsp���ݹ�����pc
			 * 2.����ps��ֵ
			 * 3.ʹ��pc��ps����service�������õ�PageBean�����浽request��
			 * 4. ת������Ӧ��list.jsp
			 */
			int pc=getPc(request);//1.�õ�pc
			int ps = 10;//2.����ps��ֵ
			PageBean<User>pb=userdao.getAllUser(pc, ps);//3
			request.setAttribute("pb", pb);//3
			request.getRequestDispatcher("/My.jsp").forward(request, response);//4
			
			
			
//			 PageBean<User>users=dao.getAllUser(pc, ps);//�������
//			request.setAttribute("users", users);//�������
//			request.getRequestDispatcher("/My.jsp").forward(request, response);
	}
	
	/*
	 * ��ȡpc
	 */
	private int getPc(HttpServletRequest request) {
		/*
		 *1.pc
		 *���pc���������ڣ�˵��pc=1
		 *���pc�������ڣ���ת����int���ͼ��� 
		 */
		String value=request.getParameter("pc");
		if (value==null || value.trim().isEmpty()) {
			return 1;
		}
		return Integer.parseInt(value);
	}
	
	
	

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
			this.doGet(request, response);
	}

	public void init() throws ServletException {
	}

}
