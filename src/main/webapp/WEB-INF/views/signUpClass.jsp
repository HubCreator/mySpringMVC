<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sign Up Class</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/main.css">
</head>
<body>
	<sf:form method="post" action="${pageContext.request.contextPath}/docreate" modelAttribute="class">
		<table class="signUpform">
			<tr class="formtable__row">
				<td class="formtable__row__label">연도 </td>
				<td class="formtable__row__content"><sf:input class="control1" type="text" path="year"/><br>
					<sf:errors class="error" path="year" />	
				</td> 
			</tr>
			<tr class="formtable__row">
				<td class="formtable__row__label">학기 </td>
				<td class="formtable__row__content"><sf:input class="control1" type="text" path="semester"/><br>
					<sf:errors class="error" path="semester" />		
				</td>
			</tr>
			<tr class="formtable__row">
				<td class="formtable__row__label">과목코드 </td>
				<td class="formtable__row__content"><sf:input class="control1" type="text" path="subject_code" /><br>
					<sf:errors class="error" path="subject_code" />		
				</td>
			</tr>
			<tr class="formtable__row">
				<td class="formtable__row__label">과목 이름 </td>
				<td class="formtable__row__content"><sf:input class="control1" type="text" path="subject_name" /><br>
					<sf:errors class="error" path="subject_name" />		
				</td>
			</tr>
			<tr class="formtable__row">
				<td class="formtable__row__label">분류 </td>
				<td class="formtable__row__content"><sf:input class="control1" type="text" path="category" /><br>
					<sf:errors class="error" path="category" />		
				</td>
			</tr>
			<tr class="formtable__row">
				<td class="formtable__row__label">담당교수 </td>
				<td class="formtable__row__content"><sf:input class="control1" type="text" path="professor" /><br>
					<sf:errors class="error" path="professor" />		
				</td>
			</tr>
			<tr class="formtable__row">
				<td class="formtable__row__label">학점 </td>
				<td class="formtable__row__content"><sf:input class="control1" type="text" path="credit" /><br>
					<sf:errors class="error" path="credit" />		
				</td>
			</tr>
			<tr class="formtable__row">
				<td></td> <td><input id="formtable__submit" type="submit" value="제출"/></td>
			</tr>
		</table>
	</sf:form>
</body>
</html>
