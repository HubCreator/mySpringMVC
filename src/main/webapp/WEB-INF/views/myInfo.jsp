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
	<table border="1">
		<thead>
			<tr>
				<th>년도</th>
				<th>학기</th>
				<th>취득 학점</th>
				<th>상세보기</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="info" items="${simpleInfo}">
				<tr>
					<td><c:out value="${info.getYear()}"></c:out></td>
					<td><c:out value="${info.getSemester()}"></c:out></td>
					<td><c:out value="${info.getCredit_sum()}"></c:out></td>
					<td><c:out value="링크"></c:out></td>
				</tr>
			</c:forEach>

		</tbody>
	</table>


</body>
</html>
