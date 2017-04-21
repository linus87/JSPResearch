<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<h2>Request Attributes Information</h2>
<ul id="request-attributes">
	<%
		java.util.Enumeration<String> attrs = request.getAttributeNames();
	%>
	<%
		if (attrs != null) {
	%>
	<%
		while (attrs.hasMoreElements()) {
				String attr = attrs.nextElement();
	%>
	<li><%=attr%>: <%=request.getAttribute(attr)%></li>
	<%
		}
	%>
	<%
		}
	%>
</ul>
