<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Removing whitespaces from template text</title>
</head>
<body>
	<pre><code>&lt;jsp-config&gt;
	&lt;jsp-property-group&gt;
		&lt;url-pattern&gt;/jsp-config/jsp-property-group/deferred-el.jsp&lt;/url-pattern&gt;
		&lt;<trim-directive-whitespaces>&gt;true&lt;/<trim-directive-whitespaces>&gt;
	&lt;/jsp-property-group&gt;
&lt;/jsp-config&gt;</code></pre>
</body>
</html>