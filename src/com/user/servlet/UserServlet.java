package com.user.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.crypto.interfaces.PBEKey;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import cn.itcast.commons.CommonUtils;
import cn.itcast.servlet.BaseServlet;

import com.user.bean.PageBean;
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
	
	/*
	 * 注册、添加用户
	 * */
	public void addUser(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("调用UserServlet中的addUser");
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
		user.setUser_id(user_id);
		user.setUser_password(user_password);
		user.setUser_name(user_name);
		user.setUser_sex(user_sex);
		user.setUser_academy(user_academy);
		user.setUser_phone(user_phone);
		user.setUser_qq(user_qq);
		user.setUser_email(user_email);
		userDaoImpl.addUser(user);
		request.setAttribute("message", "恭喜！注册成功！请登录！");
		request.getRequestDispatcher("/login.jsp").forward(request, response);

	}
	/**
	 * 编辑之前的加载工作,根据user_id到数据库中提取对象user
	 * */
	public void preEdit(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("调用UserServlet中的preEdit");
		System.out.println("user_id="+request.getParameter("user_id"));

		/*
		 * 1、获取user_id
		 * 2、用user_id来获取对象user对象
		 * 3、把user对象保存到request域中
		 * 4、转发到updateusermessage.jsp
		 */
		String user_id=request.getParameter("user_id");
		User user=userDaoImpl.getUserByUser_id(user_id);
		request.setAttribute("user",user);
		System.out.println("user="+user);
		request.getRequestDispatcher("/user/updateusermessage.jsp").forward(request, response);
		
	}
	
	/*
	 * 修改用户信息
	 * */
	public void editUser(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("调用UserServlet中的editUser");
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
		user.setUser_id(user_id);
		user.setUser_password(user_password);
		user.setUser_name(user_name);
		user.setUser_sex(user_sex);
		user.setUser_academy(user_academy);
		user.setUser_phone(user_phone);
		user.setUser_qq(user_qq);
		user.setUser_email(user_email);
		userDaoImpl.upUserByid(user);
		request.setAttribute("messageUpdate", "success");
		request.getRequestDispatcher("/user/success.jsp").forward(request, response);
	}
	
	/*
	 * 删除用户
	 * */
	public void deleteUser(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("调用UserServlet中的deleteUser");
		String user_id=request.getParameter("user_id");
		User user=userDaoImpl.getUserByUser_id(user_id);
		userDaoImpl.deleteUserByid(user);
		request.setAttribute("message", "success");
		request.getRequestDispatcher("/admin/userlist.jsp").forward(request, response);
		

	}
	
	/*
	 * 用户登录
	 * */
	public void loginUser(HttpServletRequest request,HttpServletResponse response)
			throws ServletException, IOException{
		System.out.println("调用UserServlet中的login");
		//获取提交的信息
				String user_id = request.getParameter("user_id");
				String user_password = request.getParameter("user_password");
				
				System.out.println("user_id="+user_id);
				System.out.println("user_password="+user_password);
				
				//查询数据
				IUserDao dao = new UserDaoImpl();
				User user = dao.getUserByUser_id(user_id);
				if(user!=null){
					if(user.getUser_password().equals(user_password)){
						//放入Session
						HttpSession session = request.getSession();
						session.setAttribute("user", user);
						//重定向,session保存在客户端中，故无需转发request数据。
						response.sendRedirect("/WyuWeiKe/user/mycourse.jsp");
					}else{//登录失败
						//保存错误信息在request中
						//请求转发.登录失败信息保存在request中，故采用请求转发。
						request.setAttribute("message", "密码错误！");
						request.getRequestDispatcher("/login.jsp").forward(request, response);
					}
				}else{
					request.setAttribute("message", "请输入用户名和密码！");
					request.getRequestDispatcher("/login.jsp").forward(request, response);
				}
				
	}
	
	/*
	 * 已登录用户显示个人信息
	 * */
	public void showUser(HttpServletRequest request,HttpServletResponse response)
			throws ServletException,IOException{
		System.out.println("调用UserServlet中的showUser");
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		
		String user_id=request.getParameter("user_id");//得到参数user_id
		User user=userDaoImpl.getUserByUser_id(user_id);//通过user_id查找对象user
		HttpSession session=request.getSession();//拿到session
		session.setAttribute("user", user);//将对象user存入session中国
		request.getRequestDispatcher("/user/usermessage.jsp").forward(request, response);
		
	}
	
	
	
	

	
	/*
	 * 分页列出所有用户
	 * */
	public void findAllUser(HttpServletRequest request,HttpServletResponse response)
			throws ServletException,IOException{
		System.out.println("调用UserServlet中的findallUser ");
		System.out.println("url="+getUrl(request));
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("uft-8");
		/*分页
		 * 1.获取jsp传递过来的pc
		 * 2.给定ps的值
		 * 3.创建pb对象。使用pc和ps调用service方法。得到PageBean，保存到request域
		 * 4. 转发到对0应的list.jsp
		 */
		int pc=getPc(request);//1.得到pc
		int ps = 10;//2.给定ps的值
		PageBean<User>pb=userDaoImpl.findAllUser(pc, ps);//3
		System.out.println("pb.getUrl()="+pb.getUrl());
		System.out.println("--------------------------------------------");
		// 将url保存到pb中
//		pb.setUrl(getUrl(request));??????????&pc=2&pc=3&pc=3&pc=3
		pb.setUrl("/WyuWeiKe/userservlet?method=findAllUser");
		request.setAttribute("pb", pb);//3
		request.getRequestDispatcher("/admin/userlist.jsp").forward(request, response);//4
	
	}

	
	public void queryUser(HttpServletRequest request,HttpServletResponse response)
			throws ServletException,IOException{
		System.out.println("调用UserServlet中的queryUser ");
		System.out.println("url="+getUrl(request));
//		System.out.println("user_id="+request.getParameter("user_id"));
//		System.out.println("user_name="+request.getParameter("user_name"));
//		System.out.println("user_sex="+request.getParameter("user_sex"));
//		System.out.println("user_academy="+request.getParameter("user_academy"));
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("uft-8");
		/*
		 * 1.封装表单数据到user对象中，它只有7个属性（user_id，user_sex,user_academy,user_phone,
		 * user_qq,user_email）它就是一个条件
		 * 2.使用user调用service方法，得到PageBean<User>
		 * 3.保存到request域中
		 * 4.转发到userlist.jsp
		 */
//		User criteria=CommonUtils.toBean(request.getParameterMap(), User.class);
//		PageBean<User>users=userDaoImpl.queryUser(criteria, pc, ps);
//		request.setAttribute("users", users);
//		request.getRequestDispatcher("/admin/userlist.jsp").forward(request, response);
		
		/*分页
		 * 0.把条件封装到User对象中
		 * 1.获取jsp传递过来的pc
		 * 2.给定ps的值
		 * 3.使用pc和ps调用service方法。得到PageBean，保存到request域
		 * 4. 转发到对应的list.jsp
		 */
		String user_id=request.getParameter("user_id");
		String user_name=request.getParameter("user_name");
		String user_sex=request.getParameter("user_sex");
		String user_academy=request.getParameter("user_academy");
		String user_phone=request.getParameter("user_phone");
		String user_qq=request.getParameter("user_qq");
		String user_email=request.getParameter("user_email");
		User criteria=new User();
		criteria.setUser_id(user_id);
		criteria.setUser_name(user_name);
		criteria.setUser_sex(user_sex);
		criteria.setUser_academy(user_academy);
		criteria.setUser_phone(user_phone);
		criteria.setUser_qq(user_qq);
		criteria.setUser_email(user_email);
//		User criteria = CommonUtils.toBean(request.getParameterMap(), User.class);
		System.out.println("criteria="+criteria);
		/*
		 * 处理get请求的编码问题
		 */
		criteria = encoding(criteria);
		
		int pc=getPc(request);
		int ps=10;
		PageBean<User>pb=userDaoImpl.queryUser(criteria, pc, ps);
		//将url保存到pb中
//		System.out.println("pb.getUrl()1="+pb.getUrl());
//		System.out.println("--------------------------------------------");
		pb.setUrl(getUrl(request));
//		pb.setUrl("/WyuWeiKe/userservlet?method=queryUser");
		request.setAttribute("pb", pb);
//		System.out.println("pb.getUrl()2="+pb.getUrl());
		request.getRequestDispatcher("/admin/userlist.jsp").forward(request, response);//4
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
	
	/*
	 * 处理get请求的编码问题
	 */
	private User encoding(User criteria) throws UnsupportedEncodingException {
		String user_id = criteria.getUser_id();
		String user_name=criteria.getUser_name();
		String user_sex=criteria.getUser_sex();
		String user_academy=criteria.getUser_academy();
		String user_phone=criteria.getUser_phone();
		String user_qq=criteria.getUser_qq();
		String user_email=criteria.getUser_email();
		
		if(user_id != null && !user_id.trim().isEmpty()) {
			user_id = new String(user_id.getBytes("ISO-8859-1"), "utf-8");
			criteria.setUser_id(user_id);
		}
		if(user_name != null && !user_name.trim().isEmpty()) {
			user_name = new String(user_name.getBytes("ISO-8859-1"), "utf-8");
			criteria.setUser_name(user_name);
		}
		if(user_sex != null && !user_sex.trim().isEmpty()) {
			user_sex = new String(user_sex.getBytes("ISO-8859-1"), "utf-8");
			criteria.setUser_sex(user_sex);
		}
		if(user_academy != null && !user_academy.trim().isEmpty()) {
			user_academy = new String(user_academy.getBytes("ISO-8859-1"), "utf-8");
			criteria.setUser_academy(user_academy);
		}
		if(user_phone != null && !user_phone.trim().isEmpty()) {
			user_phone = new String(user_phone.getBytes("ISO-8859-1"), "utf-8");
			criteria.setUser_phone(user_phone);
		}
		if(user_qq != null && !user_qq.trim().isEmpty()) {
			user_qq = new String(user_qq.getBytes("ISO-8859-1"), "utf-8");
			criteria.setUser_qq(user_qq);
		}
		if(user_email != null && !user_email.trim().isEmpty()) {
			user_email = new String(user_email.getBytes("ISO-8859-1"), "utf-8");
			criteria.setUser_email(user_email);
		}
		return criteria;
	}

	public void init() throws ServletException {
	}

}
