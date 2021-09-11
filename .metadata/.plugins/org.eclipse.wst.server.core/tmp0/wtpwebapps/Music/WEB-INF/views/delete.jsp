<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>음악 삭제</title>
<link href="<c:url value="/resources/css/delete.css" />"
	rel="stylesheet">
</head>
<body>
	<h1>음악 삭제</h1>

	<%
		String id = request.getParameter("id");
	String song_title = request.getParameter("song_title");
	String song_singer = request.getParameter("song_singer");
	String song_genre = request.getParameter("song_genre");
	String song_price = request.getParameter("song_price");
	String song_passwd = request.getParameter("song_passwd");
	String song_date = request.getParameter("song_date");
	%>

	<div>
		<%=id%>번 음악 <strong>"<%=song_title%>"
		</strong>를 삭제하시려면 비밀번호를 입력해주세요<br>
		<br>
		<form method="post" action="/delete_result">
			PW : <input type="password" name="song_passwd" placeholder="비밀번호" /><br>
			<br> 
			<input type="hidden" name="song_title"value="${music.song_title }" /> 
			<input type="hidden" name="song_singer" value="${music.song_singer }" /> 
			<input type="hidden" name="song_genre" value="${music.song_genre }" /> 
			<input type="hidden" name="song_price" value="${music.song_price }" /> 
			<input type="hidden" name="real_passwd" value="${music.song_passwd }" /> 
			<input type="hidden" name="song_date" value="${music.song_date }" />
			<button type="submit">삭제</button>
		</form>
	</div>
</body>
</html>