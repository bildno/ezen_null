<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 페이지</title>
<link rel="stylesheet" href="css/member/login.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
</head>
<body>
 <div class="container">
        <div class="login" style="margin-top:150px; border: navy 1px solid; width: 500px;">
                    <p>아이디 찾기</p>
                    <div id="insert">
                        <div>
                            <input class="name" type="text" placeholder="이름">
                        </div>
                        <div>
                            <input class="phone" type="text" placeholder="전화번호">
                        </div>
                        <hr>
                        <div>
                            <input type="button" value="아이디 찾기" id="id_find_btn">
                        </div>
         </div>
         <br><br><br>

         <div id="id_select">
            <input type="text" value="아이디 : ">
         </div>
        </div>
    </div>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.min.js"></script>
 
</body>
</html>