<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<style>
	table#request-info th {
		text-align: left;
	}
</style>

<h2>Request Information</h2>
<table id="request-info">
	<tbody>
		<tr>
			<th>protocol</th>
			<td>${pageContext.request.protocol }</td>
		</tr>
		<tr>
			<th>scheme</th>
			<td>${pageContext.request.scheme }</td>
		</tr>
		<tr>
			<th>host</th>
			<td>${pageContext.request.remoteHost }</td>
		</tr>
		<tr>
			<th>remote address</th>
			<td>${pageContext.request.remoteAddr }</td>
		</tr>
		<tr>
			<th>local address</th>
			<td>${pageContext.request.localAddr }</td>
		</tr>
		<tr>
			<th>remote port</th>
			<td>${pageContext.request.remotePort }</td>
		</tr>
		<tr>
			<th>local port</th>
			<td>${pageContext.request.localPort }</td>
		</tr>
		<tr>
			<th>server name</th>
			<td>${pageContext.request.serverName }</td>
		</tr>
		<tr>
			<th>local name</th>
			<td>${pageContext.request.localName }</td>
		</tr>
		<tr>
			<th>content type</th>
			<td>${pageContext.request.contentType }</td>
		</tr>
		<tr>
			<th>content length</th>
			<td>${pageContext.request.contentLength }</td>
		</tr>
		<tr>
			<th>request encoding</th>
			<td>${pageContext.request.characterEncoding }</td>
		</tr>
		<tr>
			<th>HttpRequest Header</th>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<th>Accept</th>
			<td>${header["Accept"] }</td>
		</tr>
		<tr>
			<th>Cache-Control</th>
			<td>${header["Cache-Control"] }</td>
		</tr>
		<tr>
			<th>Pragma</th>
			<td>${header["Pragma"] }</td>
		</tr>
		<tr>
			<th>User-Agent</th>
			<td>${header["User-Agent"] }</td>
		</tr>
		<tr>
			<th>Http Request URI</th>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<th>Request URL</th>
			<td>${pageContext.request.requestURI }</td>
		</tr>
		<tr>
			<th>Request Method</th>
			<td>${pageContext.request.method }</td>
		</tr>
		<tr>
			<th>Request Session ID</th>
			<td>${pageContext.request.requestedSessionId }</td>
		</tr>
		<tr>
			<th>Query String</th>
			<td>${pageContext.request.queryString }</td>
		</tr>
		<tr>
			<th>Context path</th>
			<td>${pageContext.request.contextPath }</td>
		</tr>
		<tr>
			<th>Servlet path</th>
			<td>${pageContext.request.servletPath }</td>
		</tr>
		<tr>
			<th>Path Info</th>
			<td>${pageContext.request.pathInfo }</td>
		</tr>
		<tr>
			<th>Path Translated</th>
			<td>${pageContext.request.pathTranslated }</td>
		</tr>
	</tbody>
</table>
