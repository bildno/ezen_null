<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<link rel="stylesheet" href="CSS/member/mypage.css">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

	<c:forEach var="dto" items="${ memberlist }">
<div class="container">
	<h1 id="mypage_h1">프로필 관리</h1>
	<h2 id="mypage_exp">
		프로필 정보를 관리해주세요 <img src="/img/service/space_icon.png" alt="space_icon"
			id="space_icon">
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
        function onDisplay() {
            $('#noneDiv').show();
        }
        function offDisplay() {
            $('#noneDiv').hide();
        }
    </script>

					<table>
						<tr>
							<th>이름</th>
							<td>
							${ dto.member_name }
							<div id="noneDiv" style="display: none;">
							<input type="text" value="${ dto.member_name }">
							<button>확인</button>
							</div>
							</td>
							<td><button onclick="onDisplay()">변경하기</button></td>
							<td><button onclick="offDisplay()">취소하기</button></td>
						</tr>
						<tr>
							<th>이메일</th>
							<td>${ dto.member_email }</td>
							<td><a id="mypage_a" href="#">변경하기</a></td>
						</tr>
						<tr>
							<th>연락처</th>
							<td >${ dto.member_phone }</td>
							<td><a id="mypage_a" href="#">변경하기</a></td>
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