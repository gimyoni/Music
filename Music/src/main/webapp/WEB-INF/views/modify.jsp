<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="<c:url value="/resources/css/modify.css" />" rel="stylesheet">
<title>음악 수정하기</title>
</head>
<body>
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
		<span><%=song_title%>의 정보를 수정합니다. 비밀번호를 입력해 완료해주세요.<br><br></span>
		<form method="post" action="/modify_result">
			<input type="hidden" name="id" value=<%=Integer.parseInt(id) %>/>
			제목 : <input type="text" name="song_title" value=<%=song_title %>><br>
			가수 : <input type="text" name="song_singer" value=<%=song_singer %>><br>
			장르 : <input type="text" name="song_genre" value=<%=song_genre %>><br>
			가격 : <input type="text" name="song_price" value=<%=song_price %>><br>
			날짜 : <input type="text" name="song_date" value=<%=song_date %>><br>
			<hr>
			비밀번호 : <input type="password" name="song_passwd"/><br><br>
			<button type="submit">수정완료</button>
		</form>
	</div>
</body>
</html>