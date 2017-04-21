<?xml version="1.0" encoding="utf-8" ?>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Parameter multiple value research</title>
</head>
<body>
	<h2>application/x-www-form-urlencoded</h2>
	<form action="parameters" method="post">
		<input type="text" name="skills" value="css" />
		<input type="text" name="skills" value="html"/>
		<input type="text" name="skills" value="js"/>
		<input type="text" name="skills" value="java"/>
		<input type="text" name="skills" value="flex"/>
		
		<input type="submit" value="submit" />
	</form>
	
	<p>posted skills are: 
		<% String[] skills = (String[])request.getAttribute("skills"); %>
		<% if (skills != null) { %>
			<% for (int i = 0; i < skills.length; i++){ %> 
				<%= skills[i] %>, 
			<% } %>
		<% } %> 
	</p>
	
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
</body>
</html>