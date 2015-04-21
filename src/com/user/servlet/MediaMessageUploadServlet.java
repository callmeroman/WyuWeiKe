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
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		String  id2 =request.getParameter("id");
		int id = Integer.parseInt(id2);
		String  media_name =request.getParameter("media_name");
		String  media_native =request.getParameter("media_native");
		String media_way  =request.getParameter("media_way");
		String  media_describe =request.getParameter("media_describe");
		String media_uploadtime=new Date().toString();
//		String user_id=request.getParameter("user_id");
		/*
		 * 从session中获取对象user，再从对象中获得user_id的值
		 * */
		HttpSession session =request.getSession();
		User user = (User)session.getAttribute("user");//getAttribute返回为一个对象
		String user_id=user.getUser_id();//getUser_id()从user对象中获取值
		System.out.println("user_id="+user_id);
		
		Media media=new Media();
		media.setMedia_name(media_name);
		media.setMedia_native(media_native);
		media.setMedia_way(media_way);
		media.setMedia_describe(media_describe);
		media.setMedia_uploadtime(media_uploadtime);
		media.setUser_id(user_id);
		
		MediaDaoImpl mediaDaoImpl=new MediaDaoImpl();
		mediaDaoImpl.savemediamessage(media,id);
		request.setAttribute("success", "恭喜，完成视频上传！");
		request.getRequestDispatcher("/WyuWeiKe/success.jsp");

	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
			this.doGet(request, response);
	}

	public void init() throws ServletException {
		
	}

}
