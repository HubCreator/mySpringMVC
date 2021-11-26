<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>My College Info</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/main.css">
</head>
<body>
	<h3>hello!</h3>
	<c:forEach var="info" items="${detailInfo}">
		<p>
			<c:out value="${info}"></c:out>
		</p>
	</c:forEach>

</body>
</html>
