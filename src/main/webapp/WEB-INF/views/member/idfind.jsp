<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<link rel="stylesheet" href="css/member/idfind.css">

<div class="container">
	<h1 id="idfind_h1">아이디 찾기</h1>
	<h2 id="idfind_exp">
		이름과 전화번호를 입력해주세요 <img src="/img/service/space_icon.png"
			alt="space_icon" id="space_icon">
	</h2>
	<div class="contents">
	<form action="/idfindAction">
		<div>
			<input class="name" type="text" placeholder="이름" name="fi_name">
		</div>
		<div>
			<input class="phone" type="text" placeholder="전화번호" name="fi_phone">
		</div>
		<hr>
		<div>
			<input type="submit" value="아이디 찾기" id="idfindbtn">
		</div>	
	</form>
		<div>
			<input style="text-align: left;" class="idknow" type="text"
				placeholder="아이디 : " value="${idfind}">
		</div>
		<hr>
		<div>
			<button id="confirm_btn" onclick="location.href='/login'">확인</button>
		</div>
	</div>
</div>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.min.js"></script>