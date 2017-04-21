<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<h2>Cookies Information</h2>
<table>
	<tr>
		<th>Domain</th>
		<th>Name</th>
		<th>Value</th>
		<th>Secure?</th>
		<th>Path</th>
		<th>Max Age</th>
		<th>Comment</th>
		<th>Version</th>
	</tr>
	<%
		Cookie[] cookies = request.getCookies();

		for (int i = 0; i < cookies.length; i++) {
			Cookie c = cookies[i];
	%>
	<tr>
		<td><%=c.getDomain()%></td>
		<td><%=c.getName()%></td>
		<td><%=c.getValue()%></td>
		<td><%=c.getSecure()%></td>
		<td><%=c.getPath()%></td>
		<td><%=c.getMaxAge()%></td>
		<td><%=c.getComment()%></td>
		<td><%=c.getVersion()%></td>
	</tr>
	<%
		}
	%>
</table>
