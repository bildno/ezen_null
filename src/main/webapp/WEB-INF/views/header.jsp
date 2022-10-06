<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- 헤더 -->
<!DOCTYPE html>
<html lang="en">
<title>ezen..null..</title>
<head>
<style>
@import
	url('https://fonts.googleapis.com/css2?family=Black+Han+Sans&display=swap')
	;

@import
	url('https://fonts.googleapis.com/css2?family=Do+Hyeon&display=swap');

@import
	url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;500&display=swap')
	;
</style>
<link rel="stylesheet" href="css/main.css">
<link rel="stylesheet" href="css/member/mycheck.css">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.min.js"></script>

<script>
	num = 1;
	function sideon() {
		if (num == 1) {
			document.getElementById("sidelist").style.width = "300px";
			num = 0;
		} else {
			document.getElementById("sidelist").style.width = "0";
			num = 1;
		}
	}

	$(function() {
		// 스크롤 시 header fade-in
		$(document).on('scroll', function() {
			if ($(window).scrollTop() > 90) {
				$(".small_header").removeClass("deactive");
				$(".small_header").addClass("active");

			} else {
				$(".small_header").removeClass("active");
			}
		})
	});
</script>




</head>
<body>
	<div class="header">
		<div class="small_header deactive">
			
				<a href="/main"><img src="/img/로고 진짜최종 완성본.png" id="logo">
				</a>
			
			<div class="search" style="margin-top: 15px;">
				<input type="text" id="text_search" placeholder="원하시는 공간을 입력해보세요">

				<%
				String member_id = (String) session.getAttribute("member_id");
				if (member_id != null) {
				%>
				<span id="chk_span">
				<img alt="체크" src="img/chk.png"
				id="mychk_img" onclick="location.href='/mycheck'">
				
				<span class = "arrow_box">출석하세요!</span>
				</span>
				<%
				} else { }
				%>

			</div>

			<div id="sidelist" class="sidelist">
				<%
				//null체크
					if (member_id != null) { //로그인 상태
				%>
					<a href="/logoutAction">로그아웃</a>  
					<a href="/mypage">마이페이지</a> 
					<a href="/mypage_host">호스트 마이페이지</a>
					<a href="/one2one">one2one</a>
					
				<%
					} else { //로그아웃 상태
				%>
					<a href="/login"> <img src="img/member/login.png" alt=""
					style="width: 20px" /></a>
				<%
					}
				%>
					<a href="/main">홈</a> 
					<a href="/service">고객센터</a> 





				<%
				//null체크
					if (member_id != null) { //로그인 상태
						if (member_id.equals("admin") ) { //로그인 상태
				%>
				
					<a href="/ad_member">관리자페이지 확인용용</a>
				<%
					} else { //로그아웃 상태
						
				%>
				<%
						}
					}
				%>
				
			</div>

			<img class="liston" src="/img/sidelisticon.png" alt="sidelisticon"
				id="sidelisticon" onclick="sideon()" />

		</div>
	</div>

	<img src="/img/topmove.png" alt="" class="movetopbtn" />


	<script>
	const $topBtn = document.querySelector(".movetopbtn");

	//버튼 클릭 시 맨 위로 이동
	$topBtn.onclick = () => {
	window.scrollTo({ top: 0, behavior: "smooth" });  
	}
</script>