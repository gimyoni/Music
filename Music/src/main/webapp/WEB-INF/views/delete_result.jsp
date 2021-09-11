<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="<c:url value="/resources/css/result.css" />"
	rel="stylesheet">
<title>Add Result</title>
</head>
<body>
	<% 
		if(!request.getParameter("real_passwd").equals(request.getParameter("song_passwd"))){
			%>alert("비밀번호가 틀렸습니다!");
			<jsp:forward page="/delete"></jsp:forward>
			<%
		}
	%>
	<h1>음악 삭제</h1>
	<h3>제목 : <%=request.getParameter("song_title") %></h3>
	<h3>가수 : <%=request.getParameter("song_singer") %></h3>
	<h3>장르 : <%=request.getParameter("song_genre") %></h3>
	<h3>가격 : <%=request.getParameter("song_price") %></h3>
	<h3>비밀번호 : <%=request.getParameter("song_passwd") %></h3>
	<h3>발매년도 : <%=request.getParameter("song_date") %></h3>
	<br>
	<h3>음악 삭제 성공했습니다.</h3>
</body>
</html>