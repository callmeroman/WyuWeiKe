package com.user.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.itcast.commons.CommonUtils;

import com.user.bean.PageBean;
import com.user.bean.User;
import com.user.dao.IUserDao;
import com.user.dao.impl.UserDaoImpl;

public class QueryUserServlet extends HttpServlet {
	
	private IUserDao userDao=new UserDaoImpl();
	
	public QueryUserServlet() {
		super();
	}

	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
	}

	public void doGet(HttpServletRequest request, HttpServletResponse response,User criteria)
			throws ServletException, IOException {
		System.out.println("����QueryUserServlet.java ");

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("uft-8");
		
		/*��ҳ
		 * 0.��������װ��User������
		 * 1.��ȡjsp���ݹ�����pc
		 * 2.����ps��ֵ
		 * 3.ʹ��pc��ps����service�������õ�PageBean�����浽request��
		 * 4. ת������Ӧ��list.jsp
		 */
		User criteria = CommonUtils.toBean(request.getParameterMap(), User.class);
		
		int pc=getPc(request);
		int ps=10;
		PageBean<User>pb=userDao.queryUser(criteria, pc, ps);
		request.setAttribute("pb", pb);
		request.getRequestDispatcher("/My.jsp").forward(request, response);//4
		

		
		
		out.flush();
		out.close();
	}
	
	
	/*
	 * ��ȡpc
	 */
	private int getPc(HttpServletRequest request){
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
	/*
	 *��ȡurl 
	 * /��Ŀ��/servlet·���������ַ���
	 */
	private String getUrl(HttpServletRequest request){
		String contextpath=request.getContextPath();
		String servletpath=request.getServletPath();
		String queryString=request.getQueryString();
		
		return contextpath+servletpath+"?"+queryString;
	}
	

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doGet(request, response);
	}

	public void init() throws ServletException {
	}

}
