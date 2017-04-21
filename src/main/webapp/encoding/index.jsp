<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Response Encoding</title>
</head>
<body>
	<p>Response's character encoding is determined by the CHARSET value of page directive's contentType attribute, not by &lt;meta&gt; element's charset value.</p>
	<p>Request character encoding: ${pageContext.request.characterEncoding }</p>
	<p>Response character encoding: ${pageContext.response.characterEncoding }</p>
</body>
</html>