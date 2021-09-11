<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="<c:url value="/resources/css/search.css" />" rel="stylesheet">
<title>Search Music</title>
</head>
<body>
	<h1>음악 검색하기</h1>
	<form method="post" action="/search_result" class = "menus">
		제목 : <input type="text" name="song_title" placeholder="음악 제목을 입력하세요">
		<button type="submit">확인</button>
	</form>
</body>
</html>