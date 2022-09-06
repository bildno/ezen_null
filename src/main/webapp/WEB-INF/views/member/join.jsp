<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 페이지</title>
</head>
<link rel="stylesheet" href="css/member/join.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
<body>

<div class="main">

        <div class="container">
        

            <div class="joinForm" style="margin-top: 300px;">
            <p>회원가입</p>
           
            <div id="insert">
                <div>
                    <input type="text" placeholder="이름">
                </div>
                <div>
                    <input type="text" placeholder="아이디">
                </div>
                <div>
                    <input type="password" placeholder="비밀번호">
                </div>
                <div>
                    <input type="password" placeholder="비밀번호 확인">
                </div>
              
            </div>

        <div id="checkForm">
                <span><input type="checkbox" id="check_host"> 호스트 자격으로 가입합니다.</span>
            <hr>
                <span><input type="checkbox" id="check_terms" > 아래 약관에 모두 동의합니다.</span>
                <span><input type="checkbox" id="terms_1" > 약관 1</span>
                <textarea name="terms_1_content" rows="1" readonly>약관내용1</textarea>
                <span><input type="checkbox" id="terms_2" > 약관 2</span>
                <textarea name="terms_2_content" rows="1" readonly>약관내용2</textarea>
        </div>
        <br>
        <br>
        <div>
            <input type="button" value="회원가입" id="joinbtn">
        </div>
        <br>

        </div>
        
        </div>

    </div>

</body>
</html>