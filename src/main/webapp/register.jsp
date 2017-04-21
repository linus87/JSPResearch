<?xml version="1.0" encoding="utf-8" ?>
<%@ page language="java" contentType="text/html; charset=GB18030"
	pageEncoding="GB18030"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030" />
<title>Register a new user</title>
</head>
<body>
	Register a new user here
	<% String output = "";
	String name = request.getParameter("username");
	
	output += "\nusername from request :" + name;
	
	output += "\nContext Path :" + request.getContextPath();
	
	output += "\nServlet Path :" + request.getServletPath();
	
	output += "\nPath info :" + request.getPathInfo();
	
	 
	
	output += "\nOne of the init-param is: username = " + this.getInitParameter("username");
	response.getWriter().write(output); %>
</body>
</html>