<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>

<html>

<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>SSAFIT</title>
<link rel="stylesheet" href="app.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9"
	crossorigin="anonymous" />
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.0/font/bootstrap-icons.css" />
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
					</button>
				</li>
			</ul>
		</nav>
		<img src="img/mainImg.png" alt="" width="100%" />
	</header>

	<main> <br>
	<div class="container">
		<div class="search">
			<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
				fill="currentColor" class="bi bi-search" viewBox="0 0 16 16">
					<path
					d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z" />
				</svg>
			&nbsp; 동영상 검색
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		</div>
	</div>
	<br>
	<br>

	<div class="container">
		<h2>최근 가장 많이 본 영상</h2>
		<hr>
		<div id="carouselExample" class="carousel slide">
			<div class="carousel-inner">
				<div class="carousel-item active">
					<div class="container video-View">
						<c:forEach items="${viewCntList }" var="video" begin="0" end="2">
							<div>
								<a href="review?act=list&youtubeId=${video.youtubeId }"> <img
									src="http://img.youtube.com/vi/${video.youtubeId }/mqdefault.jpg"
									class="d-block" width="350px" alt="..." />${video.title }
								</a> <br> 조회수 : ${video.viewCnt }
							</div>
						</c:forEach>
					</div>
				</div>
				<div class="carousel-item">
					<div class="container video-View">
						<c:forEach items="${viewCntList }" var="video" begin="3" end="5">
							<div>
								<a href="review?act=list&youtubeId=${video.youtubeId }"> <img
									src="http://img.youtube.com/vi/${video.youtubeId }/mqdefault.jpg"
									class="d-block" width="350px" alt="..." />${video.title }
								</a> <br> 조회수 : ${video.viewCnt }
							</div>
						</c:forEach>
					</div>
				</div>
				<div class="carousel-item">
					<div class="container video-View">
						<c:forEach items="${viewCntList }" var="video" begin="6" end="8">
							<div>
								<a href="review?act=list&youtubeId=${video.youtubeId }"> <img
									src="http://img.youtube.com/vi/${video.youtubeId }/mqdefault.jpg"
									class="d-block" width="350px" alt="..." />${video.title }
								</a> <br> 조회수 : ${video.viewCnt }
							</div>
						</c:forEach>
					</div>
				</div>
			</div>
			<br>
			<button class="carousel-control-prev" type="button"
				data-bs-target="#carouselExample" data-bs-slide="prev">
				<span class="carousel-control-prev-icon" aria-hidden="true"></span>
				<span class="visually-hidden">Previous</span>
			</button>
			<button class="carousel-control-next" type="button"
				data-bs-target="#carouselExample" data-bs-slide="next">
				</svg>
				<span class="carousel-control-next-icon" aria-hidden="true"></span>
				<span class="visually-hidden">Next</span>
			</button>
		</div>
	</div>




	<h2>운동 부위 선택</h2>
	<hr>
	<div>
		<button type="button" class="btn btn-primary"
			onclick="showVideosByPart('전신')">전신</button>
		<button type="button" class="btn btn-secondary"
			onclick="showVideosByPart('상체')">상체</button>
		<button type="button" class="btn btn-success"
			onclick="showVideosByPart('하체')">하체</button>
		<button type="button" class="btn btn-danger"
			onclick="showVideosByPart('가슴')">가슴</button>
	</div>

	<table class="partListTable">
		<tr>
			<th>영상</th>
			<th>채널명</th>
			<th>영상제목</th>
			<th>운동부위</th>
			<th>조회수</th>
		</tr>
		<c:forEach items="${PartList}" var="part">
			<tr>
				<th><a href="review?act=list&youtubeId=${part.youtubeId }">
						<img
						src="http://img.youtube.com/vi/${part.youtubeId }/mqdefault.jpg"
						class="d-block" width="350px" alt="..." />
				</a></th>
				<th>${part.channelName}</th>
				<th>${part.title}</th>
				<th>${part.fitPartName}</th>
				<th>${part.viewCnt}</th>
			</tr>
		</c:forEach>
	</table>
	<script>
		function showVideosByPart(partName) {
			// 모든 영상 행을 보이도록 설정
			var partRows = document.querySelectorAll(".partListTable tr");
			for (var i = 1; i < partRows.length; i++) {
				partRows[i].style.display = "";
			}

			// 선택한 운동 부위에 맞지 않는 영상 행을 숨김
			for (var i = 1; i < partRows.length; i++) {
				var fitPart = partRows[i].querySelector("th:nth-child(4)").textContent;
				if (fitPart !== partName) {
					partRows[i].style.display = "none";
				}
			}
		}
	</script> </main>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm"
		crossorigin="anonymous"></script>
</body>

</html>