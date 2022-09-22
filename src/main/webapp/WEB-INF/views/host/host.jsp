<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
     <link rel="stylesheet" href="css/host/host.css">
  <div class="container">
  <h1>호스트 마이페이지</h1>
<h2 id="host_exp">
            호스트님의 정보를 확인해주세요 ! <img src="/img/service/space_icon.png"
                alt="space_icon" id="space_icon">
        </h2>
        <c:forEach var="dto" items="${member_list}">
    <div class="section"  >
        <div class="host_section1">
            <div class="host_con1">
                <img class="host_con-img1" src="img/host/cat.png" alt="contents1"><p>
                <div name="imgchange" style="font-size:10px;">
                    <a href="#">사진변경</a>
                </div><p>
                <div name="hostname" id="h_name">${dto.member_name }</div><p>
                <div name="spacename" id="s_name">공간 이름</div>
                <hr>
            </div>
            <div class="hostlist"><p>
                <a href="/reserve_host">예약 내역</a><p>
                <a href="">리뷰 관리</a><p>
                <a href="#">정산</a><p>
                <a href="/spacelist_host">공간 정보 관리</a>
            </div>
        </div>

        <div class="host_section2">
            <div class="host_con2" style="padding: 40px;">

               <table>
                    <tr>
                        <th>이름</th>
                        <td id="ho_name">${dto.member_name }</td>
                        <td id="ho_name"><a href="#" >변경하기</a></td>
                    </tr>
                    <tr>
                        <th>이메일</th>
                        <td id="ho_name">${dto.member_email }</td>
                        <td><a href="#" id="ho_name">변경하기</a></td>
                    </tr>
                    <tr>
                        <th>연락처</th>
                        <td id="ho_name">${dto.member_phone }</td>
                        <td><a href="#" id="ho_name">변경하기</a></td>
                    </tr>
                    <tr>
                        <th>비밀번호</th>
                        <td colspan=2><a href="#" id="ho_name">변경하기</a></td>
                    </tr>
               </table>
            </div>

            <button type="submit"><a href="/enter_host"> 입점등록</a></button>
        </div>

    </div>
        </c:forEach>
    </div>
        