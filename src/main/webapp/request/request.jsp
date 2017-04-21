<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Request Properties</title>
</head>
<body>
	<h2>Properties</h2>
	<div>
		<table>
			<tr>
				<th>Property</th>
				<th>Value</th>
			</tr>
			<tr>
				<td>Server Name : Port</td>
				<td><%=request.getServerName() %> : <%=request.getServerPort() %></td>
			</tr>
			<tr>
				<td>Local Name : Port</td>
				<td><%=request.getLocalName() %> : <%=request.getLocalPort() %></td>
			</tr>
			<tr>
				<td>Local Address</td>
				<td><%=request.getLocalAddr() %></td>
			</tr>
		</table>
	</div>
</body>
</html>