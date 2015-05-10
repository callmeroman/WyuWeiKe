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
		System.out.println("调用MediaServlet中的findAllMedia");
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
		PageBean<Media>pb=mediaDaoImpl.findALlMedia(pc, ps);//3
		System.out.println("pb.getUrl()="+pb.getUrl());
		System.out.println("--------------------------------------------");
		// 将url保存到pb中
//		pb.setUrl(getUrl(request));??????????&pc=2&pc=3&pc=3&pc=3
		pb.setUrl("/WyuWeiKe/mediaservlet?method=findALlMedia");
		request.setAttribute("pb", pb);//3
		request.getRequestDispatcher("/media/media_list.jsp").forward(request, response);//4
	
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
	
	
	
	
	

}
