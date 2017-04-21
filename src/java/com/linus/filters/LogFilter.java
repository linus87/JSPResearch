package com.linus.filters;

import java.io.IOException;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.Map;
import java.util.logging.Logger;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;

public class LogFilter implements Filter {
	
	private FilterConfig filterConfig;
	private static final Logger log = Logger.getLogger(LogFilter.class.getName());

	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response,
			FilterChain filterChain) throws IOException, ServletException {
		
		log.warning("Log filter process a " + filterConfig.getInitParameter("logType") + " request");
		request.setAttribute("filterData", "Attribute from filter.");
		
		response.setContentType("text/xml");
		
		filterChain.doFilter(request, response);
		
		if ("true".equalsIgnoreCase(request.getParameter("showParameters"))) {
			RequestDispatcher cookieRD = this.getFilterConfig().getServletContext().getRequestDispatcher("/utils/parameters.jsp");
			cookieRD.include(request, response);
		}
		
		if ("true".equalsIgnoreCase(request.getParameter("showAttributes"))) {
			RequestDispatcher cookieRD = this.getFilterConfig().getServletContext().getRequestDispatcher("/utils/attributes.jsp");
			cookieRD.include(request, response);
		}
		
		if ("true".equalsIgnoreCase(request.getParameter("showRequest"))) {
			RequestDispatcher cookieRD = this.getFilterConfig().getServletContext().getRequestDispatcher("/utils/requestInfo.jsp");
			cookieRD.include(request, response);
		}
		
		if ("true".equalsIgnoreCase(request.getParameter("showCookies"))) {
			RequestDispatcher cookieRD = this.getFilterConfig().getServletContext().getRequestDispatcher("/utils/cookies.jsp");
			cookieRD.include(request, response);
		}
		
		if ("true".equalsIgnoreCase(request.getParameter("showLocale"))) {
			RequestDispatcher cookieRD = this.getFilterConfig().getServletContext().getRequestDispatcher("/utils/international.jsp");
			cookieRD.include(request, response);
		}
	}
	
	@Override
	public void init(FilterConfig arg0) throws ServletException {
		// TODO Auto-generated method stub
		filterConfig = arg0;
	}
	
	public FilterConfig getFilterConfig() {
		return filterConfig;
	}

}
