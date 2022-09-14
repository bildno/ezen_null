<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<link rel="stylesheet" href="css/member/login.css">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">

 <script>
    window.onload = function () {
  
    let myform = document.getElementById('myform');
 
    myform.onsubmit = function() {
      
      let name = document.getElementById('lo_name').value; 
      if (name.length < 2 || name==null) {
        alert("아이디를 다시 확인해주세요.");
        document.getElementById('lo_name').focus();
      }
      console.log("asd");
      let pass = document.getElementById('lo_pass').value;
      if(pass.length <4 || pass=="") {
        alert("비밀번호를 다시 확인해주세요.");
        document.getElementById('lo_pass').focus();
        return false;
      }
    }
    return;
  };
    </script>


<div class="container">
	<h1 id="login_h1">로그인</h1>
	<div class="contents">
        <form  id="myform" action="">
		<div>
			<input class="id" type="text" placeholder="아이디" id="lo_name">
		</div>
		<div>
			<input class="pw" type="password" placeholder="비밀번호" id="lo_pass">
		</div>
        
		<div class="check">
			<input type="checkbox" name="loginremem" value="">
			<p style="margin: 0; color: gray; font-size: small;">로그인 기억하기</p>

		</div>
		<div>
			<a id="find_a" href="idfind" >아이디 찾기</a>
		</div>
		<br>
		<div>
			<a id="find_a" href="pwfind" style="margin-bottom: 30px;" >비밀번호 찾기</a>
		</div>
		<div>
			<input type="submit" value="login" id="loginbtn">
		</div>
    </form>
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
