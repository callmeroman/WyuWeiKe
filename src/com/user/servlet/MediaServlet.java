package com.user.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.user.bean.Media;
import com.user.bean.PageBean;
import com.user.bean.User;
import com.user.dao.impl.MediaDaoImpl;
import com.user.dao.impl.UserDaoImpl;

import cn.itcast.servlet.BaseServlet;

public class MediaServlet extends BaseServlet {
	private MediaDaoImpl mediaDaoImpl=new MediaDaoImpl();
	
	public void findAllMedia(HttpServletRequest request,HttpServletResponse response)
		throws ServletException,IOException{
		System.out.println("����MediaServlet�е�findAllMedia");
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
		PageBean<Media>pb=mediaDaoImpl.findALlMedia(pc, ps);//3
		System.out.println("pb.getUrl()="+pb.getUrl());
		System.out.println("--------------------------------------------");
		// ��url���浽pb��
//		pb.setUrl(getUrl(request));??????????&pc=2&pc=3&pc=3&pc=3
		pb.setUrl("/WyuWeiKe/mediaservlet?method=findALlMedia");
		request.setAttribute("pb", pb);//3
		request.getRequestDispatcher("/media/media_list.jsp").forward(request, response);//4
	
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
	
	
	
	
	

}
