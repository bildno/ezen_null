<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<link rel="stylesheet" href="CSS/member/mypage.css">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">


<c:forEach var="dto" items="${ memberlist }">
	<div class="container">
		<h1 id="mypage_h1">프로필 관리</h1>
		<h2 id="mypage_exp">
			프로필 정보를 관리해주세요 <img src="/img/service/space_icon.png"
				alt="space_icon" id="space_icon">
		</h2>
		<div class="mypage_section" style="margin-top: 50px;">
			<div class="mypage_section1">
				<div class="mypage_con1">
					<img class="mypage_con-img1" src="img/host/cat.png" alt="contents1">
					<p>
					<div name="imgchange" style="font-size: 10px;">
						<a id="mypage_a" href="#">사진변경</a>
					</div>
					<p>
					<div name="membername">${ dto.member_name }</div>
					<p>
					<hr>
				</div>

				<div class="mypage_mylist">
					<p>
						<a id="mypage_a" href="/reserveList"><b>예약 내역</b></a>
					<p>
						<a id="mypage_a" href="/mylist"><b>나의 활동</b></a>
					<p>
						<a id="mypage_a" href="/one2one"><b>1:1 문의 내역</b></a>
					<p>
						<a id="mypage_a" href="/mywish"><b>ZZIM 한 공간</b></a>
					<p>
						<span id="zzimimg"><img src="/img/member/zzim.png"
							alt="zzim" /> X ?</span>
				</div>
			</div>

			<div class="mypage_section2" style="padding: 40px">
				<div class="mypage_con2">
					<script>
						/* 이름변경 */
						$(document).ready(function() {
							$('#ofd').hide();
						})
						function onDisplay() {
							$("#name").hide();
							$('#noneDiv').show();
							$('#od').hide();
							$('#ofd').show();
						}
						function offDisplay() {
							$('#noneDiv').hide();
							$('#name').show();
							$('#od').show();
							$('#ofd').hide();
						}
						
						/* 이메일변경 */
						$(document).ready(function() {
							$('#ofd1').hide();
						})
						function onDisplay1() {
							$("#email").hide();
							$('#noneDiv1').show();
							$('#od1').hide();
							$('#ofd1').show();
						}
						function offDisplay1() {
							$('#noneDiv1').hide();
							$('#email').show();
							$('#od1').show();
							$('#ofd1').hide();
						}
						
						/* 전화번호변경 */
						$(document).ready(function() {
							$('#ofd2').hide();
						})
						function onDisplay2() {
							$("#phone").hide();
							$('#noneDiv2').show();
							$('#od2').hide();
							$('#ofd2').show();
						}
						function offDisplay2() {
							$('#noneDiv2').hide();
							$('#phone').show();
							$('#od2').show();
							$('#ofd2').hide();
						}
					</script>

<script type="text/javascript">
	function check_email(){
		  var exptext = /^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/;
		  var user_email = document.getElementById("member_email");
		
		  
		  if(exptext.test(user_email.value) == false){
			  
			  alert("이메일 형식이 아닙니다.");
			  
			  return false;
		  }else{
			  alert("변경되었습니다.");
			  
			  return true;	  
		  }
		
	}

	function check_phone(){
		 var patternPhone=/^[0-9]{2,3}-[0-9]{3,4}-[0-9]{4}/; //핸드폰 번호 유효성 검사
		 var user_phone = document.getElementById("member_phone");
		 
  	if(patternPhone.test(user_phone.value) == false){
			  
			  alert("번호 형식이 아닙니다.");
			  
			  return false;
		  }else{
			  alert("변경되었습니다.");
			  
			  return true;	  
		  }
	}
</script>


					<table class="profile">
						
						<tr>
						<form action="/namechangeAction" method="get" >
							<th>이름</th>
							<td>
								<p id="name" style="margin-bottom: 0;">${ dto.member_name }
								</p>
								<div id="noneDiv" style="display: none;">
									<input id="member_name" name="member_name" type="text"
										value="${ dto.member_name }" style="width: 130px;">
									<button id="namechange" type="submit">확인</button>
						</form>
								</div>
							</td>
							<td><button id="od" onclick="onDisplay()">변경하기</button>
								<button id="ofd" onclick="offDisplay()">취소하기</button></td>
						</tr>

						
						<tr>
						<form action="/emailchangeAction" onsubmit="return check_email();">
							<th>이메일</th>
							<td>
								<p id="email" style="margin-bottom: 0;">${ dto.member_email }
								</p>
								<div id="noneDiv1" style="display: none;">
									<input id="member_email" name="member_email" type="text"
										value="${ dto.member_email }" style="width: 130px;">
									<button id="mailchange" type="submit">확인</button>
						</form>
								</div>
							</td>
							<td><button id="od1" onclick="onDisplay1()">변경하기</button>
								<button id="ofd1" onclick="offDisplay1()">취소하기</button></td>
						</tr>
						<tr>
						<form action="/phonechangeAction" onsubmit="return check_phone(); ">
							<th>번호</th>
							<td>
								<p id="phone" style="margin-bottom: 0;">${ dto.member_phone }
								</p>
								<div id="noneDiv2" style="display: none;">
									<input id="member_phone" name="member_phone" type="text"
										value="${ dto.member_phone }" style="width: 130px;">
									<button id="phonechange" onclick= type="submit">확인</button>
						</form>
								</div>
							</td>
							<td><button id="od2" onclick="onDisplay2()">변경하기</button>
								<button id="ofd2" onclick="offDisplay2()">취소하기</button></td>
						</tr>
						<tr>
							<th>비밀번호</th>
							<td colspan=2><a id="mypage_a" href="/pwchange">변경하기</a></td>
						</tr>
					</table>

				</div>
			</div>
		</div>
	</div>
</c:forEach>