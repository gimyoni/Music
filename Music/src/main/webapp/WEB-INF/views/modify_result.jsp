<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="<c:url value="/resources/css/result.css" />"
	rel="stylesheet">
<title>수정 결과</title>
</head>
<body>
	<h1>수정 결과</h1>
	<h3>제목 : ${requestScope.song_title }</h3>
	<h3>가수 : ${requestScope.song_singer}</h3>
	<h3>장르 : ${requestScope.song_genre }</h3>
	<h3>가격 : ${requestScope.song_price}</h3>
	<h3>비밀번호 : ${requestScope.song_passwd }</h3>
	<h3>발매년도 : ${requestScope.song_date}</h3>
	<br>
	<h3>음악 수정 성공하였습니다.</h3>
</body>
</html>