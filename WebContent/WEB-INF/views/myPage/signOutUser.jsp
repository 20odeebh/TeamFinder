<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="kr.co.multi.teamfinder.dto.User"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE HTML>
<html>
	<head>
		<title>구해줘 팀즈</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<meta name="description" content="" />
		<meta name="keywords" content="" />
		<link rel="stylesheet" href="/TeamFinder/css/main.css" />
		<link rel="stylesheet" href="/TeamFinder/css/table.css" />
    	<link rel="stylesheet" href="/TeamFinder/css/font-awesome.min.css" />
		<script src="/TeamFinder/js/signOutUser.js"></script>

	</head>
	<body class="is-preload">

		<!-- Header -->
		<header id="header">
			<a class="logo" href="index">구해줘 팀즈</a>
			
			<c:choose>	
				<c:when test="${sessionScope.loginCheck eq true}">
			       ${sessionScope.id} 님이 로그인 되었습니다.
			       <nav>
				       	<a href="#menu">메뉴</a>
				       
				       	<nav id="menu">
							<ul class="links">
								<li><a href="index">Home</a></li>
								<li><a href="modifyUser">마이 페이지</a></li>
								<li><a href="toFindMate">팀원 구하기</a></li>
								<li><a href="toFindTeam">팀 찾기</a></li>
								<li><a id="logOut">로그 아웃</a></li>
							</ul>
						</nav>
					</nav> 
			       	<script type="text/javascript">
							document.querySelector('#logOut').addEventListener('click', function(){
								alert('로그아웃 되었습니다.');
								location.href="/TeamFinder/logout.do";
							});	
					</script>		       
				</c:when>
				 <c:otherwise>
					<nav>
						<a href="#menu">로그인</a>
						
						<!-- Nav -->
						<nav id="menu">
							<ul class="links">
								<li><a href="index">Home</a></li>
								<li><a href="login">로그인</a></li>
								<li><a href="signUp">회원가입</a></li>
							</ul>
						</nav>
						
					</nav>
				 </c:otherwise>
			</c:choose>
		</header>

		<!-- Heading -->
			<div id="heading" >
				<h1>구해줘 팀즈</h1>	
			</div>


		<!-- Main -->
			<section id="main" class="wrapper">
				<div class="inner">
					<div class="content" align="center">
						<header>
							<h2>회원 탈퇴</h2>
						</header>
						<img src="/TeamFinder/images/user.jpg" height="100" width="100">
						<br>
						<form action="signOut" method="post">
						 ${sessionScope.id}&nbsp;님 
						<br><br>
							<input type="button" value="회원탈퇴" id="singOut" >
							<script type="text/javascript">
								document.getElementById("singOut").onclick = function() {
									if(confirm("정말 탈퇴하시겠습니까?")==true){
										this.form.submit();
									}
									else{
										location.href="/TeamFinder/signOutUser";
									}
									
								}
							</script>
						</form>
					</div>
				</div>
			</section>

			<!-- Footer -->
			<footer id="footer">
				<div class="inner">
					<div class="content">
						<section>
							<h3>MultiCampus 청년취업아카데미</h3>
							<p>자바 알고리즘을 이용한 반응형 웹 프로그래밍 전문가 과정(D반)</p>
						</section>
						<section>
							<h4>Member</h4>
							<ul class="plain">
								<li><a href="https://github.com/20odeebh" target="_blank">&nbsp;20odeebh&nbsp;</a> / <a href="https://github.com/happykwon94" target="_blank">&nbsp;happykwon94</a></li>
								<li><a href="https://github.com/hangyujung" target="_blank">&nbsp;hangyujung&nbsp;</a> / <a href="https://github.com/moonyy7012" target="_blank">&nbsp;moonyy7012</a></li>
							</ul>
						</section>
						<section>
							<h4>SNS</h4>
							<ul class="plain">
								<li><a href="#"><i class="icon fa-twitter">&nbsp;</i>Twitter</a><a href="#"><i class="icon fa-facebook">&nbsp;</i>Facebook</a></li>
								<li><a href="#"><i class="icon fa-instagram">&nbsp;</i>Instagram</a><a href="#"><i class="icon fa-github">&nbsp;</i>Github</a></li>
							</ul>
						</section>
					</div>
					<div class="copyright">
						&copy; Untitled. Photos <a href="https://unsplash.co">Unsplash</a>, Video <a href="https://coverr.co">Coverr</a>.
					</div>
				</div>
			</footer>

		<!-- Scripts -->
    <script src="/TeamFinder/js/jquery.min.js"></script>
    <script src="/TeamFinder/js/browser.min.js"></script>
    <script src="/TeamFinder/js/breakpoints.min.js"></script>
    <script src="/TeamFinder/js/util.js"></script>
    <script src="/TeamFinder/js/main.js"></script>
    <script src="/TeamFinder/js/secession.js"></script>

	</body>
</html>