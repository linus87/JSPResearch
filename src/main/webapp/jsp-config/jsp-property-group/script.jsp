<?xml version="1.0" encoding="utf-8" ?>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; utf-8" />
<title>Script</title>
</head>
<body>
	<pre><code>&lt;jsp-config&gt;
		&lt;jsp-property-group&gt;
			&lt;url-pattern&gt;/jsp-config/jsp-property-group/script.jsp&lt;/url-pattern&gt;
			&lt;scripting-invalid&gt;true&lt;/scripting-invalid&gt;
		&lt;/jsp-property-group&gt;
	&lt;/jsp-config&gt;</code></pre>

	<p>3 + 4 = <%= 3 + 4 %></p>
	<p>If scripting-invalid element has true body content, &lt;% %&gt; is allowed in this page. so, it will cause org.apache.jasper.JasperException exception.</p>
	<p>If scripting-invalid element has false body content, result will be 3 + 4 = 7.</p>
</body>
</html>