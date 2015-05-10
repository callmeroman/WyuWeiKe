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
 * ��������������������
 * ���������������������ⶼ��service��ͬ��service����doget��dopost��
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
	 * ע�ᡢ����û�
	 * */
	public void addUser(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("����UserServlet�е�addUser");
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
		request.setAttribute("message", "��ϲ��ע��ɹ������¼��");
		request.getRequestDispatcher("/login.jsp").forward(request, response);

	}
	/**
	 * �༭֮ǰ�ļ��ع���,����user_id�����ݿ�����ȡ����user
	 * */
	public void preEdit(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("����UserServlet�е�preEdit");
		System.out.println("user_id="+request.getParameter("user_id"));

		/*
		 * 1����ȡuser_id
		 * 2����user_id����ȡ����user����
		 * 3����user���󱣴浽request����
		 * 4��ת����updateusermessage.jsp
		 */
		String user_id=request.getParameter("user_id");
		User user=userDaoImpl.getUserByUser_id(user_id);
		request.setAttribute("user",user);
		System.out.println("user="+user);
		request.getRequestDispatcher("/user/updateusermessage.jsp").forward(request, response);
		
	}
	
	/*
	 * �޸��û���Ϣ
	 * */
	public void editUser(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("����UserServlet�е�editUser");
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
	 * ɾ���û�
	 * */
	public void deleteUser(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("����UserServlet�е�deleteUser");
		String user_id=request.getParameter("user_id");
		User user=userDaoImpl.getUserByUser_id(user_id);
		userDaoImpl.deleteUserByid(user);
		request.setAttribute("message", "success");
		request.getRequestDispatcher("/admin/userlist.jsp").forward(request, response);
		

	}
	
	/*
	 * �û���¼
	 * */
	public void loginUser(HttpServletRequest request,HttpServletResponse response)
			throws ServletException, IOException{
		System.out.println("����UserServlet�е�login");
		//��ȡ�ύ����Ϣ
				String user_id = request.getParameter("user_id");
				String user_password = request.getParameter("user_password");
				
				System.out.println("user_id="+user_id);
				System.out.println("user_password="+user_password);
				
				//��ѯ����
				IUserDao dao = new UserDaoImpl();
				User user = dao.getUserByUser_id(user_id);
				if(user!=null){
					if(user.getUser_password().equals(user_password)){
						//����Session
						HttpSession session = request.getSession();
						session.setAttribute("user", user);
						//�ض���,session�����ڿͻ����У�������ת��request���ݡ�
						response.sendRedirect("/WyuWeiKe/user/mycourse.jsp");
					}else{//��¼ʧ��
						//���������Ϣ��request��
						//����ת��.��¼ʧ����Ϣ������request�У��ʲ�������ת����
						request.setAttribute("message", "�������");
						request.getRequestDispatcher("/login.jsp").forward(request, response);
					}
				}else{
					request.setAttribute("message", "�������û��������룡");
					request.getRequestDispatcher("/login.jsp").forward(request, response);
				}
				
	}
	
	/*
	 * �ѵ�¼�û���ʾ������Ϣ
	 * */
	public void showUser(HttpServletRequest request,HttpServletResponse response)
			throws ServletException,IOException{
		System.out.println("����UserServlet�е�showUser");
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		
		String user_id=request.getParameter("user_id");//�õ�����user_id
		User user=userDaoImpl.getUserByUser_id(user_id);//ͨ��user_id���Ҷ���user
		HttpSession session=request.getSession();//�õ�session
		session.setAttribute("user", user);//������user����session�й�
		request.getRequestDispatcher("/user/usermessage.jsp").forward(request, response);
		
	}
	
	
	
	

	
	/*
	 * ��ҳ�г������û�
	 * */
	public void findAllUser(HttpServletRequest request,HttpServletResponse response)
			throws ServletException,IOException{
		System.out.println("����UserServlet�е�findallUser ");
		System.out.println("url="+getUrl(request));
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("uft-8");
		/*��ҳ
		 * 1.��ȡjsp���ݹ�����pc
		 * 2.����ps��ֵ
		 * 3.����pb����ʹ��pc��ps����service�������õ�PageBean�����浽request��
		 * 4. ת������0Ӧ��list.jsp
		 */
		int pc=getPc(request);//1.�õ�pc
		int ps = 10;//2.����ps��ֵ
		PageBean<User>pb=userDaoImpl.findAllUser(pc, ps);//3
		System.out.println("pb.getUrl()="+pb.getUrl());
		System.out.println("--------------------------------------------");
		// ��url���浽pb��
//		pb.setUrl(getUrl(request));??????????&pc=2&pc=3&pc=3&pc=3
		pb.setUrl("/WyuWeiKe/userservlet?method=findAllUser");
		request.setAttribute("pb", pb);//3
		request.getRequestDispatcher("/admin/userlist.jsp").forward(request, response);//4
	
	}

	
	public void queryUser(HttpServletRequest request,HttpServletResponse response)
			throws ServletException,IOException{
		System.out.println("����UserServlet�е�queryUser ");
		System.out.println("url="+getUrl(request));
//		System.out.println("user_id="+request.getParameter("user_id"));
//		System.out.println("user_name="+request.getParameter("user_name"));
//		System.out.println("user_sex="+request.getParameter("user_sex"));
//		System.out.println("user_academy="+request.getParameter("user_academy"));
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("uft-8");
		/*
		 * 1.��װ�����ݵ�user�����У���ֻ��7�����ԣ�user_id��user_sex,user_academy,user_phone,
		 * user_qq,user_email��������һ������
		 * 2.ʹ��user����service�������õ�PageBean<User>
		 * 3.���浽request����
		 * 4.ת����userlist.jsp
		 */
//		User criteria=CommonUtils.toBean(request.getParameterMap(), User.class);
//		PageBean<User>users=userDaoImpl.queryUser(criteria, pc, ps);
//		request.setAttribute("users", users);
//		request.getRequestDispatcher("/admin/userlist.jsp").forward(request, response);
		
		/*��ҳ
		 * 0.��������װ��User������
		 * 1.��ȡjsp���ݹ�����pc
		 * 2.����ps��ֵ
		 * 3.ʹ��pc��ps����service�������õ�PageBean�����浽request��
		 * 4. ת������Ӧ��list.jsp
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
		 * ����get����ı�������
		 */
		criteria = encoding(criteria);
		
		int pc=getPc(request);
		int ps=10;
		PageBean<User>pb=userDaoImpl.queryUser(criteria, pc, ps);
		//��url���浽pb��
//		System.out.println("pb.getUrl()1="+pb.getUrl());
//		System.out.println("--------------------------------------------");
		pb.setUrl(getUrl(request));
//		pb.setUrl("/WyuWeiKe/userservlet?method=queryUser");
		request.setAttribute("pb", pb);
//		System.out.println("pb.getUrl()2="+pb.getUrl());
		request.getRequestDispatcher("/admin/userlist.jsp").forward(request, response);//4
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
	
	/*
	 * ����get����ı�������
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
