<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:set var="stepList" value="${ 'Draft>Nomination eDM in approve flow>Nomination eDM approved>Seller nomination_Need approve>Promotion Submitted>Promotion Approved>Notification eDM in approve flow>Notification eDM approved>Seller Feedback>Promotion in progress>Promotion in validation>Promotion validated' }" />
	<c:set var="steps" value="${ fn:split(stepList, '>') }" />
	<c:out value="${fn.indexOf(steps, 'Promotion Submitted') }"></c:out>
	
	<c:forTokens items="${ stepList }" delims=">" var="step">
		<c:out value="${ step }"></c:out>
	</c:forTokens>
	
</body>
</html>