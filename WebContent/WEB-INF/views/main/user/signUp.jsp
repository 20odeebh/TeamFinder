<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>구해줘 팀즈</title>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
<meta name="description" content="" />
<meta name="keywords" content="" />
﻿<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>

<link rel="stylesheet" href="/TeamFinder/css/main.css" />

<script>
	$(function(){
	//아이디 중복검사 
		$('#id_input').click(function(){
			
			var member_id = $('#id2').val(); // .id_input에 입력되는 값 
			var data = {member_id : member_id} // '컨트롤에 넘길 데이터 이름' : '데이터' 
			$.ajax({ 
				type : "post", 
				url : "/TeamFinder/memberIdChk", 
				data : data,
				success:function(result){
					alert(result);
				}
			}); // ajax 종료
			
		});// function 종료
	});
</script>


</head>
<body class="is-preload">

		<!-- Header -->
			<header id="header">
				<a class="logo" href="index">구해줘 팀즈</a>
				<nav>
					<a href="#menu">로그인/회원가입</a>
				</nav>
			</header>

		<!-- Nav -->
			<nav id="menu">
				<ul class="links">
					<li><a href="index">Home</a></li>
					<li><a href="login">로그인</a></li>
					<li><a href="signUp">회원가입</a></li>
				</ul>
			</nav>

		<!-- Heading -->
			<div id="heading" >
				<h1>구해줘 팀즈</h1>
			</div>

		<!-- Main -->
			<section id="main" class="wrapper">
				<div class="inner">
					<div class="content">
						<header>
							<h2>회원가입</h2>
						</header>
						<form action="join" method="post">
							아이디 :<br>
							<input type="text" id="id2" name="user_id" >  <button type="button" id="id_input">중복체크</button><br>
							비밀번호 : <input type="password" name="user_pwd">
							비밀번호 확인 : <input type="password" name="user_pwd2">
							이메일 : <input type="email" name="user_email">
							지역 : <select name="region" size="8">
								<option value="seoul">서울특별시</option>
								<option >부산광역시</option>
								<option >대구광역시</option>
								<option >인천광역시</option>
								<option >광주광역시</option>
								<option >대전광역시</option>
								<option >울산광역시</option>
								<option >세종특별자치시	</option>
								<option >경기도</option>
								<option >강원도</option>
								<option >충청북도</option>
								<option >충청남도</option>
								<option >전라북도	</option>
								<option >전라남도</option>
								<option >경상북도</option>
								<option >경상남도</option>
								<option >제주특별자치도</option>
							</select>
							<br>
							<input type="submit" id="sub" value="가입하기">
							
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
			﻿
	</body>
</html>