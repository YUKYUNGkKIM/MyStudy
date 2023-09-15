<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 수정</title>
</head>
<body>
	<h2>게시글 수정</h2>

	<form action="review" method="POST">
		<input type="hidden" name="act" value="update">
		<input type="hidden" name="id" value="${review.id}">
		<fieldset>
		<legend>글 수정 내용</legend>
			제목 : <input type="text" name="title" value="${review.title }"> <br> 
			쓰니 : <input type="text" name="writer" readonly value="${review.writer }"> <br> 
			내용 : <textarea name="content" rows="5" cols="100%">${review.content }</textarea> <br>
			
			<button>수정</button>
		</fieldset>
	</form>

</body>
</html>