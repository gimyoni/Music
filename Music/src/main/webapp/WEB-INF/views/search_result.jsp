<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>검색 결과</title>
<link href="<c:url value="/resources/css/result.css" />" rel="stylesheet">
</head>
<body>
<h1>검색결과</h1>
<h3>Title  : ${requestScope.song_title }</h3>
<h3>Singer : ${requestScope.song_singer}</h3>
<h3>Genre  : ${requestScope.song_genre }</h3>
<h3>Price  : ${requestScope.song_price}</h3>
<h3>PW     : ${requestScope.song_passwd }</h3>
<h3>Date   : ${requestScope.song_date}</h3>
<a href="/"><button>HOME</button></a>
<a href="/search"><button>다시 검색</button></a>
</body>
</html>