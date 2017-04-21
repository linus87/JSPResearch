<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Raising Errors for Undeclared Namespaces</title>
</head>
<body>
<pre><code>&lt;jsp-config&gt;
	&lt;jsp-property-group&gt;
		&lt;url-pattern&gt;/jsp-config/jsp-property-group/deferred-el.jsp&lt;/url-pattern&gt;
		&lt;error-on-undeclared-namespace&gt;true&lt;/error-on-undeclared-namespace&gt;
	&lt;/jsp-property-group&gt;
&lt;/jsp-config&gt;</code></pre>

<demo:people>Tag people is a tag in undeclared namespaces.</demo:people>
</body>
</html>