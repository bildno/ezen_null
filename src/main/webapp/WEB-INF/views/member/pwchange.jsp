<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<link rel="stylesheet" href="css/member/pwchange.css">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">

 <script>
    window.onload = function () {
  
    let myform = document.getElementById('myform');
 
    myform.onsubmit = function() {
      
      let nowpass = document.getElementById('now_pass').value; 
      if (nowpass.length < 4 || nowpass==null) {
        alert("비밀번호가 맞지 않습니다.");
        document.getElementById('now_pass').focus();
      }
      console.log("asd");
      let newpass = document.getElementById('new_pass').value;
      if(newpass.length <4 || newpass=="") {
        alert("비밀번호를 다시 입력해주세요.");
        document.getElementById('new_pass').focus();
      }
      let passcheck = document.getElementById('new_pass_check').value;
      if(passcheck != newpass || passcheck=="") {
        alert("비밀번호가 동일하지 않습니다.");
        document.getElementById('new_pass').focus();
        return false;
      }
    }
    return;
  };
    </script>


<div class="container">
	<h1 id="pwchange_h1">비밀번호 변경</h1>
	<div class="contents">
        <form  id="myform" action="">
		<div>
			<input class="now_pass" type="password" placeholder="현재 비밀번호" id="now_pass">
		</div>
		<div>
			<input class="new_pass" type="password" placeholder="새 비밀번호" id="new_pass">
		</div>
		<div>
			<input class="new_pass_check" type="password" placeholder="새 비밀번호 재입력" id="new_pass_check">
		</div>
        
		<div class="btn_change">
			<input type="submit" value="변경하기" id="changebtn">
			<input type="submit" value="취소" id="cancelbtn">
		</div>
    </form>
	</div>
</div>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.min.js"></script>
