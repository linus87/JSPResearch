<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
	
<style>
	table#request-parameters {
		border: 1px solid #ccc;
		border-collapse: separate;
	}
	
	table#request-parameters td,
	table#request-parameters th {
		border: 1px solid #ccc;
	}
</style>

<h2>Request Parameters Information</h2>
<table id="request-parameters">
	<tr>
		<th>Key</th>
		<th>Value</th>
	</tr>
	<%
		java.util.Enumeration parameters = request.getParameterNames();

		while(parameters.hasMoreElements()) {
			String key = (String)parameters.nextElement();
	%>
	<tr>
		<td><%=key %></td>
		<td><%=request.getParameter(key) %></td>
	</tr>
	<%
		}
	%>
</table>
