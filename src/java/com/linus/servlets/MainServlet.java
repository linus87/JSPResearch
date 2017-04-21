package com.linus.servlets;

import java.io.IOException;
import java.util.logging.Logger;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class MainServlet extends HttpServlet {
	private static final long serialVersionUID = -8518564213268674461L;
	
	private static final Logger Log = Logger.getLogger(MainServlet.class.getName());

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String output = "";
		String name = request.getParameter("username");
		
		output += "\nfilter data in request : " + request.getAttribute("filterData"); 
		
		output += "\nusername from request : " + name; 
		
		output += "\nPath info of *: " + request.getPathInfo();
		
		output += "\nOne of the init-param is: username = " + this.getInitParameter("username");
		
		output += "\nTemp working temporay directory is: " + this.getServletContext().getAttribute("javax.servlet.context.tempdir");
		
		response.setContentType("text/html");
		response.getWriter().write(output);
	}
	
	@Override
	public void init(ServletConfig config) throws ServletException {
		// TODO Auto-generated method stub
		super.init(config);
//		config.getServletContext().gets
	}
}
