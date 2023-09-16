<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 등록</title>
</head>
<body>
	<h2>게시글 등록</h2>
	<form action="review" method="POST">
		<input type="hidden" name="act" value="write"> 
		<input type="hidden" name="youtubeId" value=${param.youtubeId }> 
		<fieldset>
		<legend>글 작성 내용</legend>
		제목 : <input type="text" name="title"> <br>
		쓰니 : <input type="text" name="writer"> <br>
		내용 : <textarea name="content" rows="5" cols="100%"></textarea><br>
		
		<button>등록</button>
		</fieldset>
	</form>

</body>
</html>