package com.user.servlet;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.user.bean.Media;
import com.user.bean.User;
import com.user.dao.impl.MediaDaoImpl;

public class MediaMessageUploadServlet extends HttpServlet {

	public MediaMessageUploadServlet() {
		super();
	}

	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("����MediaMessageUploadServlet�����ϴ���Ƶ��Ϣ");
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		//��form������ȡ����
		String  media_name =request.getParameter("media_name");
		String  media_native =request.getParameter("media_native");
		String media_way =request.getParameter("media_way");
		String  media_describe =request.getParameter("media_describe");
		String media_uploadtime=new Date().toString();
		
		/*
		 * ��session�л�ȡ����user���ٴӶ����л��user_id��ֵ
		 * */
		HttpSession session =request.getSession();//user_id������session��user������
		User user = (User)session.getAttribute("user");//getAttribute����Ϊһ������
		String user_id=user.getUser_id();//getUser_id()��user�����л�ȡֵ
		
		System.out.println("media_name="+media_name);
		System.out.println("media_native="+media_native);
		System.out.println("media_way="+media_way);
		System.out.println("media_describe="+media_describe);
		System.out.println("media_uploadtime="+media_uploadtime);
		System.out.println("user_id="+user_id);
		
		Media media=new Media();
		media.setMedia_name(media_name);
		media.setMedia_native(media_native);
		media.setMedia_way(media_way);
		media.setMedia_describe(media_describe);
		media.setMedia_uploadtime(media_uploadtime);
		media.setUser_id(user_id);
		
		MediaDaoImpl mediaDaoImpl=new MediaDaoImpl();
		mediaDaoImpl.savemediamessage(media,media_name);//media_nameΪsql�����where media_name=����ֵ
		request.setAttribute("success", "��ϲ�������Ƶ�ϴ���");
		request.getRequestDispatcher("/WyuWeiKe/success.jsp");

	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
			this.doGet(request, response);
	}

	public void init() throws ServletException {
		
	}

}
