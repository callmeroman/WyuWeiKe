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
//		// ��ȡ�ύ����Ϣ
//		request.setCharacterEncoding("utf-8");
//		response.setCharacterEncoding("utf-8");
//		String id = request.getParameter("user_id");
//		String pass = request.getParameter("user_password");
//		String autologin = request.getParameter("autologin");
//		
//		System.out.println("LoginServlet");
//		//System.out.println("id:" + id + "password:" + pass);
//		
//		// ��ѯ����
//		IUserDao dao = new UserDaoImpl();
//		User user = dao.findUserByUser_idAndPassword(id, pass);
//		if (user != null && user.getUser_id().equals(id)
//				&& user.getUser_password().equals(pass)) {
//			// ����Session
//			request.getSession().setAttribute("user", user);
//			// �ض���
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
		System.out.println("����LoginServlet.java ");
		//��ȡ�ύ����Ϣ
		String id = request.getParameter("user_id");
		String password = request.getParameter("user_password");
		
		System.out.println("user_id="+id);
		System.out.println("user_password="+password);
		
		//��ѯ����
		IUserDao dao = new UserDaoImpl();
		User user = dao.getUserByUser_id(id);
		if(user!=null){
			if(user.getUser_password().equals(password)){
//				String msg = id+":"+password;
//				Cookie c = new Cookie("usermsg",msg);
				//cookic�������ڣ���λ�룻����0�رտͻ����Դ��ڣ�����0����ɾ����С��0�رտͻ�����ɾ��
//				c.setMaxAge(-1);
//				response.addCookie(c);
				//����Session
				HttpSession session = request.getSession();
				session.setAttribute("user", user);
//				request.getSession().setAttribute("user", user);
				//�ض���,session�����ڿͻ����У�������ת��request���ݡ�
				response.sendRedirect("/WyuWeiKe/user/mycourse.jsp");
			}else{//��¼ʧ��
				//���������Ϣ��request��
//				//�ض���
//				response.sendRedirect("/WyuWeiKe/login.jsp");
				//����ת��.��¼ʧ����Ϣ������request�У��ʲ�������ת����
				request.setAttribute("errormessage", "�������");
				request.getRequestDispatcher("/login.jsp").forward(request, response);
			}
		}else{
			request.setAttribute("errormessage", "�������û��������룡");
			request.getRequestDispatcher("/login.jsp").forward(request, response);
		}
		
	}


	
	
	
	
	
	
	
	public void init() throws ServletException {

	}

}
