<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<html>
<head>
<title>Home</title>
</head>
<body>
	<h1>Hello world!</h1>
	
	<%-- ${pageContext.request.contextPath} is context root url --%>
	<P> <a href="${pageContext.request.contextPath}/offers"> Show current offers</a> </P>
</body>
</html>
