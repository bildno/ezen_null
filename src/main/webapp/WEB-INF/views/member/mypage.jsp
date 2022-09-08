<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="CSS/member/mypage.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
    
    
    <div class="container">
	<h1 id="mypage_h1">프로필 관리</h1>
  
    <div class="mypage_section" style="margin-top: 100px;">
        <div class="mypage_section1">
            <div class="mypage_con1">
                <img class="mypage_con-img1" src="img/host/cat.png" alt="contents1"><p>
                <div name="imgchange" style="font-size:10px;">
                    <a href="#">사진변경</a>
                </div><p>
                <div name="membername">이용자 이름</div><p>
                <hr>
            </div>
            <div class="mypage_mylist"><p>
                <a href="/reserveList"><b>예약 내역</b></a><p>
                <a href="/mylist"><b>내가 쓴 리뷰/게시글</b></a><p>
                <a href="#"><b>1:1 문의 내역</b></a><p>
                <a href="#"><b>ZZIM 한 공간</b></a><p>
                <span>♥ X ?</span>
            </div>
        </div>

        <div class="mypage_section2">
            <div class="mypage_con2" >

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