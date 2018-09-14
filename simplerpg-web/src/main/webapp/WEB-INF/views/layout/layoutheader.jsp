<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
  
</head>
<body>
	<form>
	  <!-- Navigation -->
    <nav class="navbar fixed-top navbar-expand-lg navbar-dark bg-dark fixed-top">
      <div class="container">
        <a class="navbar-brand" href="IndexForm">Simple RPG</a>
        <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive" style="position: absolute;right:20px">
          <ul class="navbar-nav ml-auto" >
            <li class="nav-item">
              <a class="nav-link" href="about.html">소식</a>
            </li>
            
           <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownBlog" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                      게임소개
              </a>
              <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownBlog">
                <a class="dropdown-item" href="gameguideform">게임배경 소개</a>
                <a class="dropdown-item" href="itemguideform">아이템 소개</a>
                <a class="dropdown-item" href="monsterguideform">몬스터 소개</a>
              </div>
            </li>
            
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownBlog" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                		랭킹
              </a>
              <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownBlog">
                <a class="dropdown-item" href="dbinserform">DB값 입력</a>
                <a class="dropdown-item" href="rankform">게임 순위</a>
                <a class="dropdown-item" href="rankinfoform">랭킹 정보</a>
              </div>
            </li>
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownPortfolio" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                	커뮤니티
              </a>
              <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownPortfolio">
                <a class="dropdown-item" href="ScreenFreeBoardForm">스크린샷</a>
                <a class="dropdown-item" href="MediaFreeBoardForm">동영상</a>
                <a class="dropdown-item" href="FreeBoardForm?id=${member.id}">자유게시판</a>
                <a class="dropdown-item" href="TipKnowBoardForm">팁/노하우</a>
              </div>
            </li>
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownBlog" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                		고객센터
              </a>
              <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownBlog">
                <a class="dropdown-item" href="blog-home-1.html">자주묻는질문</a>
                <a class="dropdown-item" href="blog-home-2.html">1:1문의</a>
                <a class="dropdown-item" href="blog-post.html">보안 센터</a>
              </div>
            </li>
            	<c:choose>
            		<c:when test="${sessionid == null}">
            		<li class="nav-item dropdown">
            				<button type="button" id="loginbutton" class="btn btn-primary">로그인</button>
					</li>
					</c:when>
            		<c:otherwise>
            			<li class="nav-item dropdown">
            				<a class="nav-link-dropdown-toggle" href="#" data-toggle="dropdown"><button type="button" class="btn btn-warning"><i class="fa fa-address-card" aria-hidden="true" style="size:30px"></i>${sessionid} 님 반갑습니다!</button></a>
            				<div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownBlog">
										<a class="dropdown-item" href="logout">로그 아웃</a>
										<a class="dropdown-item" href="loginfo?id=${sessionid}">개인 정보 수정</a>
							</div>
            			</li>
            		</c:otherwise>
            	</c:choose>
          </ul>	
          </div>
        </div>
    </nav>
    </form>
</body>
</html>