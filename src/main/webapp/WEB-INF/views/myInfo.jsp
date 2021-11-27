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
	<h3>내 학사정보</h3>
	<table class="table">
		<thead class="table__head">
			<tr>
				<th>년도</th>
				<th>학기</th>
				<th>취득 학점</th>
				<th>상세보기</th>
			</tr>
		</thead>
		<tbody class="table__body">
			<c:set var="total" value="0" />
			<c:forEach var="info" items="${simpleInfo}">
				<tr>
					<td><c:out value="${info.getYear()}"></c:out></td>
					<td><c:out value="${info.getSemester()}"></c:out></td>
					<td><c:out value="${info.getCredit_sum()}"></c:out></td>
					<c:set var="total" value="${total + info.getCredit_sum()}" />
					<c:url value="/detailInfo" var="target">
						<c:param name="year">${info.getYear()}</c:param>
						<c:param name="semester">${info.getSemester()}</c:param>
					</c:url>
					<td><a href="${target}">링크</a></td>
				</tr>
			</c:forEach>
		</tbody>
		<tfoot class="table__foot">
			<tr>
				<th>총계</th>
				<th>-</th>
				<th>
					<c:out value="${total}"></c:out>			
				</th>
				<th>-</th>
			</tr>
		</tfoot>
	</table>
</body>
</html>
