<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

	<title>구해줘 팀즈</title>
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
	<meta name="description" content="" />
	<meta name="keywords" content="" />
	<link rel="stylesheet" href="/TeamFinder/css/main.css" />

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

		<!-- Banner -->
			<section id="banner">
				<div class="inner">
					<h1>구해줘 팀즈</h1>
					<p>새로 시작할 사이드 프로젝트의 팀 또는 팀원을 찾으시나요?<br />
					</p>
				</div>
				<video autoplay loop muted playsinline src="images/banner.mp4"></video>
			</section>

		<!-- Highlights -->
			<section class="wrapper">
				<div class="inner">
					<header class="special">
						<a href="toFindMate" class="button primary1">팀원 구하기</a>
						<a href="toFindTeam" class="button secondary">팀 찾기</a>
					</header>
					
					<header class="special">
							<h2>팀원 구하기</h2>
					</header>
					<div class="highlights">

						<!-- teamList -->
						<c:forEach var="team" items="${teamList}">
								<section>
									<div class="content">
										<header>
											<form action="getPost" method="get" id="getPostForm${team.post_id}">
												<input type="hidden" name="post_id" value="${team.post_id}">
												<a onclick="document.getElementById('getPostForm${team.post_id}').submit();" class="icon fa-vcard-o" style="vertical-align: middle"><span class="label">Icon</span></a><span style="vertical-align: middle">&nbsp${team.user.user_id}</span>
												<h3>${team.title}</h3>
											</form>
										</header>
										<p>
											${team.region} / ${team.meeting_method} / ${team.project_stack} / ${team.project_period}
										</p>
										
										<hr/>
										<p> 0일전 업데이트</p>
									</div>
								</section>
						</c:forEach>
					</div>
						
						<header class="special">
							<h2>팀 찾기</h2>
						</header>
						
					<div class="highlights">
						<!-- mateList -->
						<c:forEach var="mate" items="${mateList}">
							<section>
								<div class="content">
									<header>
										<form action="getPost" method="get" id="getPostForm${mate.post_id}">
											<input type="hidden" name="post_id" value="${mate.post_id}">
											<a onclick="document.getElementById('getPostForm${mate.post_id}').submit();" class="icon fa-vcard-o" style="vertical-align: middle"><span class="label">Icon</span></a><span style="vertical-align: middle">&nbsp${mate.user.user_id}</span>
											<h3>${mate.title}</h3>
										</form>
									</header>
									<p>
										${mate.region} / ${mate.meeting_method} / ${mate.project_stack} / ${mate.project_period}
									</p>
									
									<hr/>
									<p> 0일전 업데이트</p>
								</div>
							</section>
						</c:forEach>

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