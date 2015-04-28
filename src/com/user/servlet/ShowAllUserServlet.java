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
		System.out.println("调用ShowAllUserServlet.java ");
			request.setCharacterEncoding("utf-8");
			response.setCharacterEncoding("uft-8");
			
			
			/*分页
			 * 1.获取jsp传递过来的pc
			 * 2.给定ps的值
			 * 3.使用pc和ps调用service方法。得到PageBean，保存到request域
			 * 4. 转发到对应的list.jsp
			 */
			int pc=getPc(request);//1.得到pc
			int ps = 10;//2.给定ps的值
			PageBean<User>pb=userdao.getAllUser(pc, ps);//3
			request.setAttribute("pb", pb);//3
			request.getRequestDispatcher("/My.jsp").forward(request, response);//4
			
			
			
//			 PageBean<User>users=dao.getAllUser(pc, ps);//获得数据
//			request.setAttribute("users", users);//放入对象
//			request.getRequestDispatcher("/My.jsp").forward(request, response);
	}
	
	/*
	 * 获取pc
	 */
	private int getPc(HttpServletRequest request) {
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
	
	
	

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
			this.doGet(request, response);
	}

	public void init() throws ServletException {
	}

}
