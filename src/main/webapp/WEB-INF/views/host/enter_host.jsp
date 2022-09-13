<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
             <link rel="stylesheet" href="/css/enterhost.css">
<div class="container">
        <h1 id="space_host_h1">공간 입점등록</h1>
        <h2 id="space_host_h2">호스트의 공간 입점등록페이지입니다
        <img src="/img/service/space_icon.png" alt="space_icon"id="space_icon">
        </h2>
        
        <hr>
        <div >
            <h2 id="space_host_enterh2">공간 입점등록입니다.</h2>
            <h2 id="space_host_info">호스트님께서 등록하실 공간에 대해 작성하는 '공간 입점등록'입니다.<br>
                                     각 입력란에 맞는 규격으로 아래의 공간 상세정보 신청서를 작성하시기 바랍니다</h2>
        </div>

        <div class="space_host_name">
            <h3 id="space_host_h3">공간명</h3>
            <input type="text" placeholder="고유 업체명을 입력해주세요.ex)하이브 회의실" id="host_input">
            <div class="caution_div">
            <img src="/img/space_info_host.img/caution.png" alt="조심" id="caution"><small id="can_small">사용 가능한 특수문자 : ( , ) , [ , ] , - , .(마침표), ,(쉼표)</small>
            </div>
        </div>
        
        <div class="space_host_select">
            <h3 id="space_host_h3">공간유형</h3>
            <div class="div_select">
            <div class="div_ch"><input type="checkbox" style="zoom:10.5;" name="room" value="partyroom" checked id="ch" onclick='checkOnlyOne(this)'></div><label id="ch1">파티룸</label>
            <div class="div_ch"><input type="checkbox" style="zoom:10.5;" name="room" value="partyroom" id="ch" onclick='checkOnlyOne(this)'></div><label id="ch1">엑티브룸</label>
            <div class="div_ch"><input type="checkbox" style="zoom:10.5;" name="room" value="partyroom" id="ch" onclick='checkOnlyOne(this)'></div><label id="ch1">슈팅룸</label>
            <div class="div_ch"><input type="checkbox" style="zoom:10.5;" name="room" value="partyroom" id="ch" onclick='checkOnlyOne(this)'></div><label id="ch1">갤러리룸</label>
            </div>
            <div class="caution_div">
                <img src="/img/space_info_host.img/caution.png" alt="조심" id="caution"><small id="can_small">적합한 용도 내에서 최대 1개만 선택가능</small>
            </div>
        </div>

        <div class="space_host_onerow">
            <h3 id="space_host_h3">공간 한 줄 소개</h3>
            <div class="small"><h3 id="small">최대 30자</h3></div>
            <input type="text" placeholder="공간의 특장점을 한 줄로 나타내주세요" id="host_input">
        </div>

        <div class="space_host_description">
            <h3 id="space_host_h3">공간 소개</h3>
            <div class="small"><h3 id="small">최대 500자</h3></div>
            <input type="text" placeholder="공간을 상세하게 소개해주세요" id="host_input_des">
        </div>

        <div class="space_host_caution">
            <h3 id="space_host_h3">공간 예약 시 주의사항</h3>
            <input type="text" placeholder="게스트들이 확인해야 하는 주의사항을 상세히 써주세요" id="host_input">
        </div>

    </div>