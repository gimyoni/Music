<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link href="<c:url value="/resources/css/list.css" />" rel="stylesheet">
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Music List</title>
</head>
<body>
	<h1>음악 목록</h1>
	<table>
		<thead>
			<tr id = "name">
				<th>순번</th>
				<th>제목</th>
				<th>가수</th>
				<th>장르</th>
				<th>가격</th>
				<th>발매년도</th>
				<th>비고</th>
			</tr>
		</thead>
		<c:if test="${musics.size() == 0 }">
			<tfoot>
				<tr>
					<td colspan="3">현재 데이타가 없습니다.</td>
				</tr>
			</tfoot>
		</c:if>
		<tbody>
			<c:forEach var="music" items="${musics}" varStatus="status">
				<tr>
					<td><c:out value="${music.id }" /></td>
					<td><c:out value="${music.song_title }" /></td>
					<td><c:out value="${music.song_singer }" /></td>
					<td><c:out value="${music.song_genre }" /></td>
					<td><c:out value="${music.song_price }" /></td>
					<td><c:out value="${music.song_date }" /></td>
					<td>
						<form action ="/modify" method = "post">
							<input type="hidden" name="id" value = {music.id}/>
							<input type="hidden" name="song_title" value = {music.song_title}/>
							<input type="hidden" name="song_singer" value = {music.song_singer}/>
							<input type="hidden" name="song_genre" value = {music.song_genre}/>
							<input type="hidden" name="song_price" value = {music.song_price}/>
							<input type="hidden" name="song_passwd" value = {music.song_passwd}/>
							<input type="hidden" name="song_date" value = {music.song_date}/>	
							<button id="modifyBtn" name="music" value="${music}">수정</button>						
						</form>
						
						<form action = "/delete" method = "post">
							<input type="hidden" name="id" value = {music.id}/>
							<input type="hidden" name="song_title" value = {music.song_title}/>
							<input type="hidden" name="song_singer" value = {music.song_singer}/>
							<input type="hidden" name="song_genre" value = {music.song_genre}/>
							<input type="hidden" name="song_price" value = {music.song_price}/>
							<input type="hidden" name="song_passwd" value = {music.song_passwd}/>
							<input type="hidden" name="song_date" value = {music.song_date}/>
							<button id="deleteBtn" name="music" value="${music}">삭제</button>
						</form>
					</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>