<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
<title>Sign Up Class</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/main.css">
</head>
<body>
	<sf:form method="post" action="${pageContext.request.contextPath}/docreate" modelAttribute="class">
		<table class="formtable">
			<tr>
				<td class="label"> 
					Year: </td> <td><sf:input class="control" type="text" path="year"/><br>
					<sf:errors class="error" path="year" />	
				</td> 
			</tr>
			<tr>
				<td class="label"> 
					Semester: </td> <td><sf:input class="control" type="text" path="semester"/><br>
					<sf:errors class="error" path="semester" />		
				</td>
			</tr>
			<tr>
				<td class="label">
					Subject_code: </td> <td><sf:input class="control" type="text" path="subject_code" /><br>
					<sf:errors class="error" path="subject_code" />		
				</td>
			</tr>
			<tr>
				<td class="label">
					Subject_name: </td> <td><sf:input class="control" type="text" path="subject_name" /><br>
					<sf:errors class="error" path="subject_name" />		
				</td>
			</tr>
			<tr>
				<td class="label">
					Category: </td> <td><sf:input class="control" type="text" path="category" /><br>
					<sf:errors class="error" path="category" />		
				</td>
			</tr>
			<tr>
				<td class="label">
					Professor: </td> <td><sf:input class="control" type="text" path="professor" /><br>
					<sf:errors class="error" path="professor" />		
				</td>
			</tr>
			<tr>
				<td class="label">
					Credit: </td> <td><sf:input class="control" type="text" path="credit" /><br>
					<sf:errors class="error" path="credit" />		
				</td>
			</tr>
			<tr>
				<td></td> <td><input type="submit" value="제출"/></td>
			</tr>
		</table>
	</sf:form>
</body>
</html>
