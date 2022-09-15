<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<link rel="stylesheet" href="css/member/join.css">

<div class="container">
	<h1 id="join_h1">회원가입</h1>
	<h2 id="join_exp">
		스페이스 그라운드의 회원이 되어주세요 ! <img src="/img/service/space_icon.png"
			alt="space_icon" id="space_icon">
	</h2>
	<div class="contents">
		<div id="insert">
			<div>
				<input type="text" placeholder="이름">
			</div>
			<div>
				<input type="email" placeholder="이메일">
			</div>
			<div>
				<input type="text" placeholder="전화번호(번호만 입력해주세요)">
			</div>
			<div>
				<input type="text" placeholder="아이디">
			</div>
			<div>
				<input type="password" placeholder="비밀번호">
			</div>
			<div>
				<input  type="password" placeholder="비밀번호 확인">
			</div>
		<div class="gender" id="gender_female">
			<input type="checkbox" />여성
		</div>
		
		<div class="gender" id="gender_male">
			<input type="checkbox" />남성
		</div>
			
		</div>
		<div id="checkForm">
			<div class="check">
				<input type="checkbox" id="check_host">
				<p style="margin: 0 0 0 5px">호스트 자격으로 가입합니다.</p>
			</div>
			<hr>
			<div class="check">
				<input type="checkbox" id="check_terms">
				<p style="margin: 0 0 0 5px">아래 약관에 모두 동의합니다.</p>
			</div>
			<br>
			<div class="check">
				<input type="checkbox" id="terms_1">
				<p style="margin: 0 0 0 5px">약관 1</p>
			</div>
			<textarea name="terms_1_content" rows="1" readonly
				style="resize: none;">약관내용1</textarea>
			<div class="check">
				<input type="checkbox" id="terms_2">
				<p style="margin: 0 0 0 5px">약관 2</p>
			</div>
			<textarea name="terms_2_content" rows="1" readonly
				style="resize: none;">약관내용2</textarea>
		</div>
		<div>
			<input type="button" value="회원가입" id="joinbtn">
		</div>
		<br>
	</div>

</div>
