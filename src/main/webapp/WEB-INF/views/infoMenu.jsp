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
	<div class="infoMenu-container">
		<h3 class="title">메뉴</h3>
		<ul class="infoMenu__list">
			<li><a class="infoMenu__list__item" href="${pageContext.request.contextPath}/myInfo">학년/학기별 이수 총 학점 보기</a></li>
			<li><a class="infoMenu__list__item" href="${pageContext.request.contextPath}/#">수강 신청하기</a></li>
			<li><a class="infoMenu__list__item" href="${pageContext.request.contextPath}/#">수강 신청 조회</a></li>
		</ul>
	</div>
</body>
</html>
