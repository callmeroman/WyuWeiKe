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
		System.out.println("调用QueryUserServlet.java ");

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("uft-8");
		
		/*分页
		 * 0.把条件封装到User对象中
		 * 1.获取jsp传递过来的pc
		 * 2.给定ps的值
		 * 3.使用pc和ps调用service方法。得到PageBean，保存到request域
		 * 4. 转发到对应的list.jsp
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
	 * 获取pc
	 */
	private int getPc(HttpServletRequest request){
		/*
		 *1.pc
		 *如果pc参数不存在，说明pc=1
		 *如果pc参数存在，需转换成int类型即可 
		 */
		String value=request.getParameter("pc");
		if (value==null || value.trim().isEmpty()) {
			return 1;
		}
		return Integer.parseInt(value);
		
	}
	/*
	 *截取url 
	 * /项目名/servlet路径？参数字符串
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
