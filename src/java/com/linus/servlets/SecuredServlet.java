package com.linus.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class SecuredServlet extends HttpServlet {

	private static final long serialVersionUID = -4642550847115981593L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String output = "";
		
		output += "Remote Username: " + request.getRemoteUser();
		output += "\nRemote Username: " + request.getUserPrincipal();
		output += "\nRemote Username: " + request.isUserInRole("admin");
		
		String name = request.getParameter("username");
		
		output += "\nusername from request :" + name; 
		
		output += "\nPath info of *:" + request.getPathInfo(); 
		
		output += "\nOne of the init-param is: username = " + this.getInitParameter("username");
		response.getWriter().write(output);
	}
}