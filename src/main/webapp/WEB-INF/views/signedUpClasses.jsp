<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>My Signed Up Classes</title>
<link rel="stylesheet" type="text/css" 
	href="${pageContext.request.contextPath}/resources/css/main.css">
</head>
<body>
	<h2 class="title">2022년 수강신청 조회</h2>
	<table class="myInfoTable">
		<thead class="myInfoTable__head">
			<tr>
				<th>년도</th>
				<th>학기</th>
				<th>교과목명</th>
				<th>교과구분</th>
				<th>담당교수</th>
				<th>학점</th>
			</tr>
		</thead>
		<tbody class="myInfoTable__body">
			<c:forEach var="info" items="${signedUpClasses}">
				<tr>
					<td><c:out value="${info.getYear()}"></c:out></td>
					<td><c:out value="${info.getSemester()}"></c:out></td>
					<td id="subject_name"><c:out value="${info.getSubject_name()}"></c:out></td>
					<td><c:out value="${info.getCategory()}"></c:out></td>
					<td><c:out value="${info.getProfessor()}"></c:out></td>
					<td><c:out value="${info.getCredit()}"></c:out></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>