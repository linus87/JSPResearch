<?xml version="1.0" encoding="utf-8" ?>
<%@ page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="custom" tagdir="/WEB-INF/tags" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030" />
<title>Welcome to JSP Research</title>
</head>
<body>
	Welcome to JSP
	
	<table>
		<tbody>
			<tr>
				<td>Context Path:</td>
				<td><%= application.getContextPath() %></td>
			</tr>
			<tr>
				<td>Resources:</td>
				<td><%= application.getAttribute("org.apache.catalina.resources") %></td>
			</tr>
		</tbody>
	</table>
	
	<% 
	ArrayList<String> columnTitles = new ArrayList<String>();
	columnTitles.add("Title 1");
	columnTitles.add("Title 2");
	columnTitles.add("Title 3");
	columnTitles.add("Title 4");
	request.setAttribute("columnTitles", columnTitles);
	
	%>
	
	<custom:table columnTitles="${ columnTitles }"></custom:table>
	
	
	<% String output = "";
    	output += "\nContext Path :" + request.getContextPath();
    	
    	output += "\nServlet Path :" + request.getServletPath();
    	
    	output += "\nPath info :" + request.getPathInfo(); %>
    	<%=output %>
</body>
</html>