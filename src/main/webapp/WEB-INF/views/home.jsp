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
	<div class="outerBox">
		<h1>College Info</h1>
		<p id="introduce">이 홈페이지에서는 학생들이 전에 들었던 학사정보를 관리합니다. 학생들의 수강내역을 볼
			수 있고, 추가로 다음 학기에 들을 과목을 신청하고 조회할 수 있습니다.</p>

		<%-- ${pageContext.request.contextPath} is context root url --%>
		<a id="goToMyInfo" href="${pageContext.request.contextPath}/infoMenu">
			조회 바로가기</a>
	</div>
</body>
</html>
