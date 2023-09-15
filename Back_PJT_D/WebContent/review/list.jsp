<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<title>목록</title>
<style>
table {
	width: 100%;
	border: 1px solid #444444;
	border-collapse: collapse;
}

th, td {
	border: 1px solid #444444;
}
</style>
</head>

<body>
	<h2>댓글 목록</h2>
	<hr>
	<table>
		<tr>
			<th>번호</th>
			<th>제목</th>
			<th>글쓴이</th>
			<th>조회수</th>
			<th>등록일</th>
		</tr>
		<c:forEach items="${list}" var="review">
			<tr>
				<td>${review.id }</td>
				<td><a href="review?act=detail&id=${review.id }">${review.title }</a>
				</td>
				<td>${review.writer }</td>
				<td>${review.viewCnt }</td>
				<td>${review.regDate }</td>
			</tr>
		</c:forEach>
	</table>
	<a href="review?act=writeform">글 등록</a>

</body>
</html>