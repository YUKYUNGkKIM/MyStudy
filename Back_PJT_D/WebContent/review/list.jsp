<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>

<html>

<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>운동영상 리뷰 관리</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9"
	crossorigin="anonymous" />
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.0/font/bootstrap-icons.css" />
<link rel="stylesheet" href="style.css" />
</head>

<body>
	<header>
		<nav id="navbar-example2" class="navbar bg-body-tertiary px-3 mb-3">
			<a class="navbar-brand" href="index.html"> <img
				src="img/ssafit.png" width="60px" />
			</a>
			<ul class="nav nav-pills">
				<li class="nav-item"><a class="nav-link" href="index.html">HOME</a>
				</li>
				<li class="nav-item"><a class="nav-link" href="search.html">헬스장찾기</a>
				</li>
				<li class="nav-item">
					<button type="button" class="btn btn-outline-success fa-2x"
						style="margin-right: 10px" data-bs-toggle="modal"
						data-bs-target="#Register" data-bs-whatever="@getbootstrap">
						<i class="bi bi-person-plus"></i>
					</button>
				</li>
				<li class="nav-item">
					<button type="button" class="btn btn-outline-warning fa-2x"
						data-bs-toggle="modal" data-bs-target="#login"
						data-bs-whatever="@getbootstrap">
						<i class="bi bi-box-arrow-in-right"></i>
					</button></
				</li>


				</li>
			</ul>
		</nav>

		<div class="container text-center fs-2">
			<i class="bi bi-award"></i> 운동영상 리뷰 <i class="bi bi-award"></i>
		</div>
		<hr />
	</header>

	<main width="100%">
	<div class="contianer text-center">
		<iframe width="728" height="410"
			src="https://www.youtube.com/embed/${param.youtubeId }"
			title="YouTube video player" frameborder="0"
			allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
			allowfullscreen></iframe>
	</div>
	<hr>
	<section class="section">
		<span>
			<button type="button" class="btn btn-primary btn3"
				data-bs-toggle="modal" data-bs-target="#reviewResigterModal"
				data-bs-whatever="@getbootstrap"
				onclick="location.href='review?act=writeform&youtubeId=${param.youtubeId}'">리뷰 등록</button>
		</span>
		<div class="search">
			<i class="bi bi-search"></i>검색
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		</div>
	</section>
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
	
			<c:if test="${review.youtubeId == param.youtubeId}">
				<tr>
					<td>${review.id }</td>
					<td><a href="review?act=detail&youtubeId=${param.youtubeId}&id=${review.id }">${review.title }</a>
					</td>
					<td>${review.writer }</td>
					<td>${review.viewCnt }</td>
					<td>${review.regDate }</td>
				</tr>
			</c:if>
		</c:forEach>
	</table>
</body>
</html>