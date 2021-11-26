<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<title>My Custom Login Form</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/main.css">
</head>
<body>
	<div class="container">
		<form class="form" method="post" action="<c:url value="login"/>">
			<h2 class="form-signin-heading">Please sign in</h2>

			<c:if test="${not empty errorMsg}">
				<div style="color: #ff0000">
					<h4>${errorMsg}</h4>
				</div>
			</c:if>

			<c:if test="${not empty logoutMsg}">
				<div style="color: #0000ff">
					<h4>${logoutMsg}</h4>
				</div>
			</c:if>
			<p class="form__content, username">
				<label for="username" class="sr-only">Username</label> <input
					type="text" id="username" name="username" class="form-control"
					placeholder="Username" required autofocus>
			</p>
			<p class="form__content, password">
				<label for="password" class="sr-only">Password</label> 
					<input
					type="password" id="password" name="password" class="form-control"
					placeholder="Password" required>
			</p>
			<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
			<button class="form__content submit" type="submit">Sign	in</button>
		</form>
	</div>
</body>
</html>