<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글 상세 보기</title>
</head>
<body>
	<h2>글 상세보기</h2>
	<hr>
	<div>${review.title }</div>
	<div>${review.content }</div>
	<div>${review.viewCnt }</div>

	<div>
		<a href="review?act=list">목록</a>
		 <a href="review?act=updateform&id=${review.id }">수정</a> 
		 <a href="review?act=delete&id=${review.id }">삭제</a>


	</div>

</body>
</html>