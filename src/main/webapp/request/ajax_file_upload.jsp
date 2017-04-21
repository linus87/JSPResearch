<?xml version="1.0" encoding="utf-8" ?>
<%@page import="java.io.InputStream"%>
<%@page import="java.util.Iterator"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Parameter multiple value research</title>
</head>
<body>
	<h2>multipart/form-data</h2>
	<form action="multipart" method="post" enctype="multipart/form-data">
		<input type="text" name="skills" value="css" />
		<input type="text" name="skills" value="html"/>
		<input type="text" name="skills" value="js"/>
		<input type="text" name="skills" value="java"/>
		<input type="text" name="skills" value="flex"/>
		
		<input type="file" name="file"/>
		
		<input type="submit" value="submit" />
	</form>
	
	<p>posted skills are: 
		<% String[] skills = (String[])request.getParameterValues("skills"); %>
		<% if (skills != null) { %>
			<% for (int i = 0; i < skills.length; i++){ %> 
				<%= skills[i] %>, 
			<% } %>
		<% } %> 
	</p>
	
	<p>Posted file is: <%=request.getParameter("skills") %></p>
	<p>Posted file is: <%=request.getParameter("file") %></p>
	
	<p>posted request body: </p>
	<p>${content }</p>
	
	<ul>
		<% java.util.Enumeration<String> attrs = request.getAttributeNames(); %>
		<% if (attrs != null) { %>
			<% while (attrs.hasMoreElements()) {
				String attr = attrs.nextElement();
			%>
				<li><%=attr%>: <%=request.getAttribute(attr) %></li>
			<% } %>
		<% } %> 
	</ul>
	
	<ul>
		<% java.util.Collection<Part> parts = request.getParts(); 
		Iterator<Part> iter = parts.iterator(); %>
		<% while (iter.hasNext()) {
			Part part = iter.next();
		%>
			<li><%=part.getName() %>: <%=part.getContentType() %>, 
			<% 
				InputStream is = part.getInputStream();
				byte[] b = new byte[20];
				StringBuffer input = new StringBuffer();
		
				while(is.read(b) > 0) {
				// behave like request's BufferedReader
				input.append(new String(b));
			} %>
			<%=input.toString() %>
			</li>
		<% } %>
	</ul>
</body>
</html>