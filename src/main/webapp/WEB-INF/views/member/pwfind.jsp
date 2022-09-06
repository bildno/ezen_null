<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호 찾기 페이지</title>
<link rel="stylesheet" href="css/member/pwfind.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
</head>
<body>
	<div class="container">
        <div class="login" style="margin-top:150px; border: navy 1px solid; width: 500px;">
                    <p style="text-align: left; margin-left: 20px; margin-bottom:50px;">비밀번호 찾기</p>
                    <div id="insert">
                        <div>
                            <input class="id" type="text" placeholder="아이디">
                        </div>
                        <div>
                            <input class="name" type="text" placeholder="이름">
                        </div>
                        <hr>
                        <div>
                            <input type="button" value="비밀번호 찾기" id="pwfindbtn">
                        </div>
                        <div>
                            <input style="text-align: left;" class="pwknow" type="text" placeholder="비밀번호 : ">
                        </div>
                        <div class="reset">
                            <input type="button" value="비밀번호 재설정" id="pwchangebtn">
                        </div>
         </div>
        </div>
    </div>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.min.js"></script>
</body>
</html>