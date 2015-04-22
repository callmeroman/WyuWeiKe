package com.user.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sun.org.apache.bcel.internal.generic.NEW;
import com.user.bean.Media;
import com.user.dao.IMediaDao;
import com.user.dao.impl.MediaDaoImpl;

public class ShowUserMediaServlet extends HttpServlet {
	private IMediaDao mediaDao=new MediaDaoImpl();

	public ShowUserMediaServlet() {
		super();
	}

	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
	}

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		
		String user_id = request.getParameter("user_id");
		List<Media>medias=mediaDao.getmediaByUser_id(user_id);
		request.setAttribute("medias", medias);
		System.out.println("medias="+medias);
		request.getRequestDispatcher("/media/media_list.jsp").forward(request, response);

		out.flush();
		out.close();
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doGet(request, response);
	}
	public void init() throws ServletException {
	}

}
