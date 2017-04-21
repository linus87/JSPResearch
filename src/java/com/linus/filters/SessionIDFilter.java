package com.linus.filters;

import java.io.IOException;
import java.util.logging.Logger;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;

/**
 * Servlet Filter implementation class SessionIDFilter
 */
@WebFilter("/*")
public class SessionIDFilter implements Filter {
	private static final Logger log = Logger.getLogger(SessionIDFilter.class.getName());

    /**
     * Default constructor. 
     */
    public SessionIDFilter() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
	}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		HttpServletRequest httpRequest;
		if (request.getScheme() == "http") {
			httpRequest = (HttpServletRequest)request;
			log.warning("Session ID from Cookie?:" + httpRequest.isRequestedSessionIdFromCookie());
			log.warning("Session ID from URL?:" + httpRequest.isRequestedSessionIdFromUrl());
			log.warning("Session ID from URL?:" + httpRequest.isRequestedSessionIdFromURL());
			log.warning("Session ID from SSL?:" + httpRequest.isSecure());
			log.warning("Session ID is valid?:" + httpRequest.isRequestedSessionIdValid());
			
			if (httpRequest.isRequestedSessionIdFromURL()) {
				
			}
		}

		// pass the request along the filter chain
		chain.doFilter(request, response);
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

}
