<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>

    <link rel="stylesheet" href="/css/host.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
</head>
<body>
    <div class="container">

    <div class="section" style="margin-top: 200px;">
        <div class="section1">
            <div class="con1">
                <img class="con-img1" src="img/cat.png" alt="contents1"><p>
                <div name="imgchange" style="font-size:10px;">
                    <a href="#">사진변경</a>
                </div><p>
                <div name="hostname">호스트 이름</div><p>
                <div name="spacename">공간 이름</div>
                <hr>
            </div>
            <div class="hostlist"><p>
                <a href="#"><b>예약 내역</b></a><p>
                <a href="#"><b>리뷰 관리</b></a><p>
                <a href="#"><b>정산</b></a><p>
                <a href="#"><b>공간 정보 관리</b></a>
            </div>
        </div>

        <div class="section2">
            <div class="con2" style="padding: 40px;">

               <table>
                    <tr>
                        <th>닉네임</th>
                        <td>이용자 닉네임</td>
                        <td><a href="#">변경하기</a></td>
                    </tr>
                    <tr>
                        <th>이메일</th>
                        <td>이용자 이메일</td>
                        <td><a href="#">변경하기</a></td>
                    </tr>
                    <tr>
                        <th>연락처</th>
                        <td>이용자 연락처</td>
                        <td><a href="#">변경하기</a></td>
                    </tr>
                    <tr>
                        <th>비밀번호</th>
                        <td colspan=2><a href="#">변경하기</a></td>
                    </tr>
               </table>
            </div>

            
        </div>
    </div>


    </div> <!-- container -->
</body>
</html>