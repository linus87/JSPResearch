<?xml version="1.0" encoding="GB18030" ?>
<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030" />
<title>Deferred Syntax</title>
</head>
<body>
<pre><code>&lt;jsp-config&gt;
	&lt;jsp-property-group&gt;
		&lt;url-pattern&gt;/jsp-config/jsp-property-group/deferred-el.jsp&lt;/url-pattern&gt;
		&lt;deferred-syntax-allowed-as-literal&gt;true&lt;/deferred-syntax-allowed-as-literal&gt;
	&lt;/jsp-property-group&gt;
&lt;/jsp-config&gt;</code></pre>

<p>If deferred-syntax-allowed-as-literal has true body content, result will be 3 + 4 = #{3 + 4}.</p>
<p>If deferred-syntax-allowed-as-literal has false body content, application is crashed for jsp translation error.</p>
</body>
</html>