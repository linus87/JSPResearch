<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Authentication Log</title>
<style>
	th {
		text-align: left;
	}
</style>
</head>
<body>
	<table>
		<tbody>
			<tr>
				<th>Auth Type</th>
				<td>${pageContext.request.authType }</td>
			</tr>
			<tr>
				<th>Remove User</th>
				<td>${pageContext.request.remoteUser }</td>
			</tr>
			<tr>
				<th>Principal name</th>
				<td>${pageContext.request.userPrincipal.name }</td>
			</tr>
		</tbody>
	</table>
</body>
</html>