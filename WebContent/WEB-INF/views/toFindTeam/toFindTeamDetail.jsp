<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Generic Page - Industrious by TEMPLATED</title>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
<meta name="description" content="" />
<meta name="keywords" content="" />
<link rel="stylesheet" href="/TeamFinder/css/toFindTeamDetail.css" />
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
					<div class="mainContent">
						<header>
							<h2>팀을 찾아요</h2>
						</header>
						<div class="highlights" style="background:E6E6E6;" >
								<table class="tableLayout">
														
									<tr id="firstLine">
										<td class="label" rowspan="2">제 목</td>
										<td class="labelVal" rowspan="2" colspan="2">${post.title}</td>
										<td class="emptySpace" rowspan="2" colspan="7"></td>				
									</tr>
									<tr>	
									</tr>				
									<tr>
										<td class="label">글쓴이</td>
										<td class="labelVal" colspan="2">${post.user.user_id}</td>
										<td class="emptySpace" colspan="7"></td>	
									</tr>
									<tr>
										<td class="label">활동 지역</td>
										<td class="labelVal" colspan="2">${post.region}</td>
										<td class="emptySpace" colspan="7"></td>							
									</tr>
									<tr>
										<td class="label">기술 스택</td>
										<td class="labelVal" colspan="2">${post.project_stack}</td>
										<td class="emptySpace" colspan="7"></td>								
									</tr>
									<tr>
										<td class="label">미팅 방식</td>
										<td class="labelVal" colspan="2">${post.meeting_method}</td>
										<td class="emptySpace" colspan="7"></td>								
									</tr>
									<tr>
										<td class="label">예상 기간</td>
										<td class="labelVal" colspan="2">${post.project_period}</td>
										<td class="emptySpace" colspan="7"></td>								
									</tr>
									<tr>
										<td class="label">본 문</td>
										<td colspan="9" class="context">${post.context}</td>
									</tr>		
								</table>
						</div>
						<div class="highlights" style="background:blue; height: 200px;">
							<div>리뷰</div>
						</div>
						<div class="highlights" style="background:green; height: 100px;">
							<div>댓글</div>
						</div>					
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

	</body>
</html>