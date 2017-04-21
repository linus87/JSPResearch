<%@ tag language="java" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ attribute name="columnTitles" type="java.util.ArrayList" %>
<%@ attribute name="data" type="java.util.ArrayList" %>

<table>
	<thead>
		<tr>
			<c:forEach items="${ columnTitles }" var="columnTitle">
				<th>${ columnTitle }</th>
			</c:forEach>
		</tr>
	</thead>
	<tbody>
		<c:forEach items="${ data }" var="record">
			<tr>
				<c:forEach items="${ record }" var="col">
					<td>${ col }</td>
				</c:forEach>
			</tr>
		</c:forEach>
	</tbody>
	<tfoot>
		<tr><td></td></tr>
	</tfoot>
</table>