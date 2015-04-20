package com.user.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class CharFilter implements Filter {

	public void destroy() {
		// TODO Auto-generated method stub

	}

	public void doFilter(ServletRequest servletrequest, ServletResponse servletresponse,
			FilterChain filterChain) throws IOException, ServletException {
		// 字符过滤(不能解决get情况下客户端提交到服务器的乱码)
		servletrequest.setCharacterEncoding("UTF-8");
		servletresponse.setCharacterEncoding("UTF-8");
		filterChain.doFilter(servletrequest, servletresponse);

	}

	public void init(FilterConfig arg0) throws ServletException {
		// TODO Auto-generated method stub

	}

}
