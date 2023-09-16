<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>리뷰 상세 보기</title>
</head>
<body>
	<h2>리뷰 상세 보기</h2>
	<hr>
	<div> 제목 :${review.title }</div>
	<div> 쓰니 : ${review.content }</div>
	<div> 조회수 : ${review.viewCnt }</div>

	<div>
		<a href="review?act=list&youtubeId=${param.youtubeId }">목록</a>
		 <a href="review?act=updateform&youtubeId=${param.youtubeId }&id=${review.id }">수정</a> 
		 <a href="review?act=delete&id=${review.id }">삭제</a>


	</div>

</body>
</html>