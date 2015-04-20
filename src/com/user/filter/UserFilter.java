package com.user.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.user.bean.User;

public class UserFilter implements Filter {

	public void destroy() {
		// TODO Auto-generated method stub

	}

	public void doFilter(ServletRequest servletrequest, ServletResponse servletresponse,
			FilterChain filterChain) throws IOException, ServletException {
		System.out.println("ִ��UserFilter");
		
		HttpServletRequest request = (HttpServletRequest)servletrequest;
		HttpServletResponse response = (HttpServletResponse)servletresponse;
		
		HttpSession session = request.getSession();
		User user = (User)session.getAttribute("user");
		System.out.println("user="+user);
		if(user==null){
			System.out.println("һ���Ƿ����󣬽�ת������¼ҳ��");
			//�ӿͻ��˷�������󣬾��Ǵ�Ӧ�����
			response.sendRedirect("/WyuWeiKe/login.jsp");
		}else{
			filterChain.doFilter(servletrequest, servletresponse);
		}

	}

	public void init(FilterConfig filterConfig) throws ServletException {
		// TODO Auto-generated method stub

	}

}
