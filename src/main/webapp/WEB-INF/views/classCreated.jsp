<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>My College Info</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/main.css">
</head>
<body>
	<h2 class="title">제출이 완료되었습니다.</h2>
	<table class="table">
		<thead class="table__head">
			<tr>
				<th>년도</th>
				<th>학기</th>
				<th>교과목명</th>
				<th>교과구분</th>
				<th>담당교수</th>
				<th>학점</th>
			</tr>
		</thead>
		<tbody class="table__body">
			<tr>
				<td><c:out value="${info.getYear()}"></c:out></td>
				<td><c:out value="${info.getSemester()}"></c:out></td>
				<td id="subject_name"><c:out value="${info.getSubject_name()}"></c:out></td>
				<td><c:out value="${info.getCategory()}"></c:out></td>
				<td><c:out value="${info.getProfessor()}"></c:out></td>
				<td><c:out value="${info.getCredit()}"></c:out></td>
			</tr>
		</tbody>
	</table>
</body>
</html>
