# 📌 PJT3-D

## Back-End 관통 프로젝트

<br/>
<br/>

## 👐 팀원 구성 및 역할 분담👐

<table align="center">
    <tr align="center">
        <td style="min-width: 220px;">
            <a href="https://github.com/YUKYUNGkKIM">
              <img src="https://avatars.githubusercontent.com/u/139313708?v=4" width="100">
              <br />
              <b>김유경(팀장)</b>
            </a> 
        </td>
        <td style="min-width: 220px;">
            <a href="https://github.com/se2develop">
              <img src="https://avatars.githubusercontent.com/u/139305078?v=4" width="100">
              <br />
              <b>노세희</b>
            </a>
        </td>
        <td style="min-width: 220px;">
            <a href="https://github.com/jhahe">
              <img src="https://avatars.githubusercontent.com/u/139293627?v=4" width="100">
                <br />
              <b>정현아</b>
            </a> 
        </td>
    </tr>
    <tr align="left">
        <td>
        0. 리뷰 생성, 조회, 수정, 삭제 구현<br>
        1. 운동 부위별 영상 조회 구현<br>
        <br/>
        </td>
        <td>
        0. Controller 모든 기능 담당<br>
        1. 운동 부위별 영상 조회 구현<br>
        2. 비디오 페이지 조회순 영상 기능 구현 <br>
        3. 영상별 리뷰 페이지 관리 구현<br>
        <br/>
        </td>
        <td>
        0. 리뷰 생성, 조회, 수정, 삭제 구현<br>
        1. 운동 부위별 영상 조회 구현<br>
        2. 비디오 페이지 조회순 영상 기능 구현 <br>
        <br/>
        </td>
    </tr>
</table>

<br/>
<br/>

## 프로젝트 정보

### 📌 요구사항

> ✅ : 구현 완료  ❌ : 미구현

#### 1️⃣ 기본기능

- 메인 페이지 백엔드 기능
    - 조회수 기준 영상 ✅
    - 운동 부위별 기준 영상 ✅
- 운동영상에 대한 리뷰관리 백엔드 기능 구현
    - 운동 상세 페이지에서 리뷰 생성 ✅
    - 운동 상세 페이지에서 리뷰 조회 ✅
    - 운동 상세 페이지에서 리뷰 수정 ✅
    - 운동 상세 페이지에서 리뷰 삭제 ✅

#### 2️⃣ 추가기능

- 회원가입 백엔드 구현❌
- 로그인, 로그아웃 백엔드 구현❌

#### 3️⃣ 심화기능

- 관심영상 찜하고 찜한영상 삭제 ❌
- 다른 회원을 팔로우할 수 있다. ❌

<br>

### 📌 프로젝트 요약
> SSAFIT 프로젝트의 BackEnd 파트를 MVC 기반의 웹 프로젝트로 설계하고 구현하였다. 백엔드 데이터 관리는 이전 자바 관통에서 진행한 것처럼 메모리를 활용하여 진행하였다. 소스 작성 전 작성하려는 BackEnd 클래스의 구조와 네이밍룰 등을 검토하여 완성도 높은 결과물이 나오는 것을 목표로 하였다.

### 📌 프로젝트 목표
- Java의 BackEnd 기술인 Servlet/JSP를 이해하고 일을 활용하여 웹 서버를 구축할 수 있다.
- MVC 구조를 이해하고 이를 활용하여 프로그램을 작성할 수 있다.
- FrontEnd 관통 프로젝트를 참고하여 화면과 연계가 필요한 부분의 BackEnd를 완성한다.

### ✔ 프로젝트 폴더구조
### 📁폴더 구조
```
  📁  BACK_PJT3_D
    📁java Resources
        📁src
          📁com
            📁ssafy
              📁fit
                📁model
                  📁controller
                    📃MainController.java
                  📁dao
                    📃MainDao.java(interface)
                    📃MainDaoImpl.java
                  📁dto
                    📃Video.java
                  📁service
                  📃MainService.java(interface)
                  📃MainServiceImpl.java
                📁review
                  📁controller
                    📃ReviewController.java
                  📁dao
                    📃ReviewDao.java(interface)
                    📃ReviewDaoImpl.java
                  📁dto
                    📃Review.java
                  📁service
                  📃ReviewService.java(interface)
                  📃ReviewServiceImpl.java
  📁WebContent
    📁img
      🖼mainImg.jpg
      🖼ssafit.jpg
    📁main
      📃list.jsp
    📁review
      📃detail.jsp
      📃list.jsp
      📃updateform.jsp
      📃writeform.jsp
    📃index.jsp
    📃app.css
    📃style.css
```

### ✔ 구현 기능 설명
1. 메인 페이지에 접속하면 바로 main의 list.jsp파일로 forward되고 list.jsp에서는 전체 비디오 리스트를 조회수 기준으로 최근 가장 많이 본 영상순으로 보여지는 부분과, 운동부위를 선택하면 선택한 운동부위에 해당하는 영상만 보여지는 부분으로 나눠져 보여진다. 
2. 각 영상에 대해 제목을 클릭하면 각 영상의 상세 페이지로 이동할 수 있으며 해당 영상에 대해 작성된 리뷰를 조회하거나 새로 작성, 수정, 삭제할 수 있다.
3. 리뷰 클릭하면 클릭 횟수만큼 조회수가 증가한다.


## 🎬 구현 결과 OVERVIEW

### 🖥 Main Home (메인 화면)
<img src="세희_assets/메인화면.avi">
전체 비디오 리스트를 조회수 기준으로 최근 가장 많이 본 영상순으로 보여지는 부분과, 운동부위를 선택하면 선택한 운동부위에 해당하는 영상만 보여지는 부분으로 나눠져 보여진다. 

### 🖥 조회수 기준으로, 운동 부위 기준으로 영상 보여주기
<img src="세희_assets/조회수기준,운동부위별.avi">
- 조회수 기준으로 가장 많은 조회수 순으로 보여지며 캐러셀 버튼을 이용하여 옆으로 이동가능하도록 구현하였다.
- 처음에는 모든 영상 리스트가 보여지고 운동부위를 선택하면 선택한 운동부위에 해당하는 영상만 보여지도록 구현하였다.

### 🖥 Review Page (상세영상 및 리뷰 페이지)
<img src="세희_assets/리뷰페이지,리뷰등록.avi">
각 영상에 대해 제목을 클릭 할 시에 영상의 상세 페이지에 접근할 수 있으며 해당  영상을 재생하고 리뷰를 작성할 수 있다. 리뷰를 클릭할 때마다 조회수가 반영된다. 

### 🖥 Review Insert (리뷰 등록)
### 🖥 Review Update (리뷰 수정)
### 🖥 Review Delete (리뷰 삭제)

## 추후 구현해야 할 사항
- 팔로우 삭제 기능
- Admin 유저와 일반 유저 구분 및 권한에 따른 작업 제한