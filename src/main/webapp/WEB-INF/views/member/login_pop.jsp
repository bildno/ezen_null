<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>베너 팝업</title>
    <link rel="stylesheet" href="../css/member/idFind.css">

  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
  <!-- Bootstarp JS -->
  <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>
  <!-- 구글웹폰트 링크 -->
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Black+Han+Sans&display=swap');
        @import url('https://fonts.googleapis.com/css2?family=Do+Hyeon&display=swap');
        @import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;500&display=swap');
    </style>
</head>
<body>
    <script>
        function naver() {
            window.open("https://nid.naver.com/");
        }
        function google() {
            window.open("https://accounts.google.com/");
        }

    </script>
    <div class="container">
          <h1 style="font-family: 'Noto Sans KR', sans-serif; font-size: 20px; margin: 20px; font-weight: 500;" >
            <img src="/img/pop/circle.png" style="width: 10px; margin-right: 5px; margin-bottom: 5px;">잠시만요! 혹시 로그인 하셨나요?</h1>
        <h2 style="font-family: 'Noto Sans KR', sans-serif; font-size: 16px; color: gray; margin: 20px;">아직 로그인을 안하셨다면</h2>
        <div class="login_img" style="margin-top: 35px;">
          <img src="/img/pop/네이버.png" alt="네이버" style="width: 200px; margin-left: 20px; height: 40px; margin-top: 10px; cursor: pointer;" onclick="naver();">
          <img src="/img/pop/구글.png" alt="구글" style="width: 220px; margin-left :10px; margin-top: 10px; cursor: pointer;" onclick="google();">
        </div>
        
        
        <div class="login_under" style="margin-top: 30px; display: flex; flex-direction:row; justify-content: center;">
            <input type="button"  value="회원가입" onclick="location.href='#'"
            style="background-color: rgb(37, 49, 109); border: none; border-radius: 3px;
             width: 150px; height: 40px; color: white; 
             font-family: 'Noto Sans KR'; font-weight: 300;">
        </div>
        <hr>
        <div class="login_foot" style="margin-top: 20px; display: flex; flex-direction: row-reverse">
            <input type="button" value="닫기" onclick="self.close();"
            style="border: none; border-radius:3px;
            width: 40px; padding: 5px; font-size: 13px;
            background-color:rgb(238, 238, 238);
            font-family: 'Noto Sans KR'; font-weight: 300;">
        </div>
    </div>
    
</body>
</html>