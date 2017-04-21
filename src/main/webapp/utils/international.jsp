<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<style>
	table#request-info th {
		text-align: left;
	}
</style>

<h2>Request Locale Information</h2>
<table id="request-info">
	<tbody>
		<tr>
			<th>Locale information</th>
			<td><%=request.getLocale().getLanguage() + "-" +  request.getLocale().getCountry()%></td>
		</tr>
		<tr>
			<th>Variant</th>
			<td>${pageContext.request.locale.variant }</td>
		</tr>
		<tr>
			<th>Display Variant</th>
			<td>${pageContext.request.locale.displayVariant }</td>
		</tr>
		<tr>
			<th>Name</th>
			<td>${pageContext.request.locale.displayName }</td>
		</tr>
		<tr>
			<th>Country</th>
			<td>${pageContext.request.locale.country }</td>
		</tr>
		<tr>
			<th>ISO3Country</th>
			<td><%=request.getLocale().getISO3Country() %></td>
		</tr>
		<tr>
			<th>Display Country</th>
			<td>${pageContext.request.locale.displayCountry }</td>
		</tr>
		<tr>
			<th>Language</th>
			<td>${pageContext.request.locale.language }</td>
		</tr>
		<tr>
			<th>Display Language</th>
			<td>${pageContext.request.locale.displayLanguage }</td>
		</tr>
		<tr>
			<th>ISO3Language</th>
			<td><%=request.getLocale().getISO3Language() %></td>
		</tr>
		<tr>
			<th>Accept</th>
			<td>${header["Accept"] }</td>
		</tr>
		<tr>
			<th>Accept-Language</th>
			<td>${header["Accept-Language"] }</td>
		</tr>
		<tr>
			<th>Accept-Encoding</th>
			<td>${header["Accept-Encoding"] }</td>
		</tr>
	</tbody>
</table>
