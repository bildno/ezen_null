<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<link rel="stylesheet" href="css/member/pwfind.css">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">


<div class="container">
	<h1 id="idfind_h1">비밀번호 찾기</h1>
	<h2 id="pwfind_exp">
		이름과 전화번호를 입력해주세요 <img src="/img/service/space_icon.png"
			alt="space_icon" id="space_icon">
	</h2>
	<div class="contents">
		<form action="/pwfindAction">
		<div>
			<input name="pw_id" class="id" type="text" placeholder="아이디">
		</div>
		<div>
			<input name="pw_name" class="name" type="text" placeholder="이름">
		</div>
		<hr>
		<div>
			<input type="submit" value="비밀번호 찾기" id="pwfindbtn">
		</div>
		<div>
			<input style="text-align: left;" class="pwknow" type="text"
				placeholder="비밀번호 : " value="${member_pw }">
		</div>
		</form>
		<div class="reset">
			<input type="button" value="비밀번호 재설정" id="pwchangebtn">
		</div>
	</div>
</div>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.min.js"></script>