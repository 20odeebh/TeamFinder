<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<meta name="description" content="" />
<meta name="keywords" content="" />
<link rel="stylesheet" href="/TeamFinder/css/toFindTeamCreate.css" />
<title>구해줘 팀즈</title>
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
							<h2>게시글 작성 (팀원 찾기)</h2>
						</header>
						<form action="addMatePost" method="post" id="addMatePostForm">
							<input type="hidden" name="board_type" value="0"/>
							<!-- 추후 회원 session에서 꺼내야 됌 -->
							<input type="hidden" name="user_index" value="${sessionScope.user_index}"/>
							<table>
								<tr>
									<td><h3>주제</h3></td>
									<td><input type="text" name="title"></td>
								</tr>
								<tr>
									<td><h3>모집 인원</h3></td>
									<td>  
										<select name="recruiting_number" form="addMatePostForm">
										    <option value="1">1</option>
										    <option value="2">2</option>
										    <option value="3">3</option>
										    <option value="4">4</option>
										    <option value="5">5</option>
									  </select>
									 </td>
								</tr>
								<tr>
									<td><h3>활동 지역</h3></td>
									<td>
										<select form="addMatePostForm" name="region">
										    <option value="서울">서울</option>
										    <option value="부산">부산</option>
										    <option value="대구">대구</option>
										    <option value="대전">대전</option>
										    <option value="광주">광주</option>
										    <option value="울산">울산</option>
										    <option value="제주">제주</option>
										    <option value="충청">충청도</option>
										    <option value="경상">경상도</option>
										    <option value="전라">전라도</option>
										    <option value="강원">강원도</option>
										    <option value="경기">경기도</option>
									  	</select>
									</td>
								</tr>
								<tr>
									<td><h3>기술 스택</h3></td>
									<td><input type="text" name="project_stack"></td>
								</tr>
								<tr>
									<td><h3>미팅 방식</h3></td>
									<td>
										<select form="addMatePostForm" name="meeting_method">
										    <option value="대면">대면</option>
										    <option value="비대면">비대면</option>
									  	</select>								
									</td>
								</tr>
								<tr>
									<td><h3>예상 기간</h3></td>
									<td>
										<select form="addMatePostForm" name="project_period">
											<option value="1달 미만">1달 미만</option>
											<option value="1달 이상">1달 이상</option>
											<option value="3달 이상">3달 이상</option>
											<option value="6달 이상">6달 이상</option>
											<option value="1년 이상">1년 이상</option>										
										</select>
									</td>
								</tr>
								<tr>
									<td><h3>이미지</h3></td>
									<td><input type="file"></td>
								</tr>
								<tr>
									<td><h3>내용</h3></td>
									<td>
										<textarea name="context" form="addMatePostForm"></textarea>
									</td>
								</tr>
								<tr>
									<td colspan="2">
										<input type="submit" value="작성 완료">
									</td>
								</tr>
							
							</table>
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
		
</body>
</html>