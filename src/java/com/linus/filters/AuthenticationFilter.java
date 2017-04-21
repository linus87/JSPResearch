package com.linus.filters;

import java.io.IOException;
import java.security.Principal;
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
 * Servlet Filter implementation class AuthenticationFilter
 */
@WebFilter("/AuthenticationFilter")
public class AuthenticationFilter implements Filter {
	private static final Logger log = Logger.getLogger(LogFilter.class.getName());

    /**
     * Default constructor. 
     */
    public AuthenticationFilter() {
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
		log.warning("------------------------------Authentication Filter: Http Request Authentication------------------------------");
		String scheme = request.getScheme();

		if (scheme == "http") {
			authenticate((HttpServletRequest)request);
		}
		
		// pass the request along the filter chain
		chain.doFilter(request, response);
	}
	
	protected void authenticate(HttpServletRequest request) {
		Principal principal = request.getUserPrincipal();
		log.warning("Auth Type: " + request.getAuthType());
		if (principal != null) {
			log.warning("Principal : " + principal.getName());
		}
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

}
