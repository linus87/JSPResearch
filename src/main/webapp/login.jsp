<?xml version="1.0" encoding="GB18030" ?>
<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030" />
<title>Welcome!</title>
</head>
<body>
	<form action="j_security_check" method="post">
		<table>
			<tr>
				<td>Username</td>
				<td><input type="text" name="j_username" /></td>
			</tr>
			<tr>
				<td>Password</td>
				<td><input type="text" name="j_password" /></td>
			</tr>
		</table>
		<input type="submit" value="Login" />
	</form>
</body>
</html>