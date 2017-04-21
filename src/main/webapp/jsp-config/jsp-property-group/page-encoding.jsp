<?xml version="1.0" encoding="GB18030" ?>
<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030" />
<title>Page Encoding</title>
</head>
<body>
	<pre><code>&lt;jsp-config&gt;
		&lt;jsp-property-group&gt;
			&lt;url-pattern&gt;/jsp-config/jsp-property-group/page-encoding.jsp&lt;/url-pattern&gt;
			&lt;page-encoding&gt;GB18030&lt;/page-encoding&gt;
		&lt;/jsp-property-group&gt;
	&lt;/jsp-config&gt;</code></pre>

	<p>我是中国人</p>
	<p>This page is encoded with GB18030, so, if page-encoding element has GB18030 body content, you can see above chinese text.</p>
	<p>If page-encoding element doesn't have GB18030 body content, this application will crash.</p>
</body>
</html>