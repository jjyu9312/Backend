<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="app" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<Form method='Post' action="label/tour">
		
		<c:forEach items="${labelDTO}" var="dto" >
		${dto.label}<input type="checkbox" name="labels" value="${dto.label}">
		<br/>
		</c:forEach>
		
		<input type="submit" value="검색">
	</Form>
	
</body>
</html>