<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Music</title>
<link href="<c:url value="/resources/css/index.css" />" rel="stylesheet">
</head>
<body>
	<div class="menus">
		<h1>Music Menu</h1>
		<br><br>
		<a href="/list" class="menu">음악 목록보기</a>
		<a href="/add"  class="menu">음악 추가하기</a>
		<a href="/search"  class="menu">음악 검색하기</a>
	</div>
</body>
</html>