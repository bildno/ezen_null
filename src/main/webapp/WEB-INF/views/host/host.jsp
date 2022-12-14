<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<link rel="stylesheet" href="css/host/host.css">

<c:forEach var="dto" items="${ member_list }">
<div class="container">
	<h1 id="mypage_h1">호스트 마이페이지</h1>
		<h2 id="mypage_exp">
			호스트님의 정보를 확인해주세요 ! <img src="/img/service/space_icon.png"
				alt="space_icon" id="space_icon">
		</h2>
		
		
		
		
		<div class="mypage_section" style="margin-top: 50px;">
			<div class="mypage_section1">
			<c:forEach var="imgdto" items="${sel_myimg }">
				<div class="mypage_con1">
					<img class="mypage_con-img1" src="${imgdto.mypage_img }" alt="contents1">
					<p>
					<p>
					<div name="membername">${ dto.member_name }</div>
					<p>
					<hr>
				</div>
				</c:forEach>

				
				<div class="mypage_mylist">
					<p>
						<a id="mypage_a" href="/#"><b>예약 내역</b></a>
					<p>
						<a id="mypage_a" href="#"><b>리뷰 관리</b></a>
					<p>
						<a id="mypage_a" href="#"><b>정산</b></a>
					<p>
						<a id="mypage_a" href="/spacelist_host"><b>공간 정보 관리</b></a>
					<p>
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
						function check_name() {
							var nameExp = /^[가-힣]{2,4}|[a-zA-Z]{2,10}\s[a-zA-Z]{2,10}$/;
							var user_name = document
									.getElementById("member_name");

							if (nameExp.test(user_name.value) == false) {

								alert("이름 형식이 아닙니다.");
								return false;

							} else {
								alert("변경되었습니다.");
								return true;

							}
						}

						function check_email() {
							var exptext = /^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/;
							var user_email = document
									.getElementById("member_email");

							if (exptext.test(user_email.value) == false) {

								alert("이메일 형식이 아닙니다.");
								return false;
							} else {
								alert("변경되었습니다.");
								return true;
							}
						}

						function check_phone() {
							var patternPhone = /^[0-9]{2,3}-[0-9]{3,4}-[0-9]{4}/; //핸드폰 번호 유효성 검사
							var user_phone = document
									.getElementById("member_phone");

							if (patternPhone.test(user_phone.value) == false) {
								alert("번호 형식이 아닙니다.");
								return false;
							} else {
								alert("변경되었습니다.");
								return true;
							}
						}
					</script>

					<table class="profile">
						<tr>
							<th>이름</th>
							<td>
								<form action="/hostnamechange" method="get"
									onsubmit="return check_name();">
									<p id="name" style="margin-bottom: 0;">${ dto.member_name }
									</p>
									<div id="noneDiv" style="display: none;">
										<input id="member_name" name="member_name" type="text"
											value="${ dto.member_name }" style="width: 130px;">
										<button id="namechange" type="submit">확인</button>

									</div>
								</form>
							</td>
							<td>
								<button id="od" onclick="onDisplay()">변경하기</button>
								<button id="ofd" onclick="offDisplay()">취소하기</button>
							</td>
						</tr>



						<tr>

							<th>이메일</th>
							<td>
								<form action="/hostemailchange"
									onsubmit="return check_email();">
									<p id="email" style="margin-bottom: 0;">${ dto.member_email }
									</p>
									<div id="noneDiv1" style="display: none;">
										<input id="member_email" name="member_email" type="text"
											value="${ dto.member_email }" style="width: 130px;">
										<button id="mailchange" type="submit">확인</button>

									</div>
								</form>
							</td>
							<td><button id="od1" onclick="onDisplay1()">변경하기</button>
								<button id="ofd1" onclick="offDisplay1()">취소하기</button></td>
						</tr>


						<tr>

							<th>번호</th>
							<td>
								<form action="/hostphonechange"
									onsubmit="return check_phone();">
									<p id="phone" style="margin-bottom: 0;">${ dto.member_phone }
									</p>
									<div id="noneDiv2" style="display: none;">
										<input id="member_phone" name="member_phone" type="text"
											value="${ dto.member_phone }" style="width: 130px;">
										<button id="phonechange" type="submit">확인</button>

									</div>
								</form>
							</td>
							<td><button id="od2" onclick="onDisplay2()">변경하기</button>
								<button id="ofd2" onclick="offDisplay2()">취소하기</button></td>
						</tr>

						<tr>
							<th>비밀번호</th>
							<td colspan=2><a  id="od2" href="/pwchange" class="modify_pass">변경하기</a></td>
						</tr>
						<tr>
							<td colspan=3>
								<button class="enter_host" type="submit" onclick="location.href='/enter_host'">입점 등록</button>
							</td>
						</tr>

					</table>

				</div>
			</div>

			
			</div>
			</div>
	</c:forEach>



