<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 페이지</title>
<link rel="stylesheet" href="css/member/login.css">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
</head>
<body>
	<div class="container">
		<h1 id="login_h1">로그인</h1>
		<div class="contents">
			<div>
				<input class="id" type="text" placeholder="아이디">
			</div>
			<div>
				<input class="pw" type="password" placeholder="비밀번호">
			</div>
			<div class="check">
				<input type="checkbox" name="loginremem" value="">
				<p style="margin: 0; color: gray; font-size: small;">로그인 기억하기</p>

			</div>
			<div>
				<a id="find_a" href="idfind">아이디 찾기</a>
			</div>
			<br>
			<div>
				<a id="find_a" href="pwfind" style="margin-bottom: 30px;">비밀번호 찾기</a>
			</div>
			<div>
				<input type="button" value="login" id="loginbtn">
			</div>
			<div class="joingo">
				<p class="yet">아직 스페이스 그라운드 회원이 아니신가요?</p>
				<a id="find_a" href="member_join" style="margin-bottom: 30px;">회원가입</a>
			</div>
		</div>
	</div>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.min.js"></script>

</body>
</html>