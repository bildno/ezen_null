<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <link rel="stylesheet" href="css/host/host.css">
  <div class="container">
  <h1>호스트 마이페이지</h1>
<h2 id="host_exp">
            호스트님의 정보를 확인해주세요 ! <img src="/img/service/space_icon.png"
                alt="space_icon" id="space_icon">
        </h2>
    <div class="section"  >
        <div class="host_section1">
            <div class="host_con1">
                <img class="host_con-img1" src="img/host/cat.png" alt="contents1"><p>
                <div name="imgchange" style="font-size:10px;">
                    <a href="#">사진변경</a>
                </div><p>
                <div name="hostname">호스트 이름</div><p>
                <div name="spacename">공간 이름</div>
                <hr>
            </div>
            <div class="hostlist"><p>
                <a href="#"><b>예약 내역</b></a><p>
                <a href=""><b>리뷰 관리</b></a><p>
                <a href="#"><b>정산</b></a><p>
                <a href="/spacselist_host"><b>공간 정보 관리</b></a>
            </div>
        </div>

        <div class="host_section2">
            <div class="host_con2" style="padding: 40px;">

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

            <button type="submit">입점등록</button>
        </div>
    </div>
    </div>