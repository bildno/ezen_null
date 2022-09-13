<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link rel="stylesheet" href="/css/host/space_info_host.css">

	<div class="container">
        <h1 id="space_host_h1">공간 상세페이지</h1>
        <h2 id="space_host_h2">호스트의 공간 상세페이지입니다
        <img src="/img/service.img/space_icon.png" alt="space_icon"id="space_icon">
        </h2>
        <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel" id="name_host_carousel">
            <ol class="carousel-indicators">
              <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
              <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
              <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
            </ol>
            <div class="carousel-inner">
              <div class="carousel-item active">
                <img src="/img/space_info_host.img/roof.jpg" class="d-block w-100" alt="..." id="host_img1">
              </div>
              <div class="carousel-item">
                <img src="img/space_info_host.img/room1.jpg" class="d-block w-100" alt="..." id="host_img2">
              </div>
              <div class="carousel-item">
                <img src="img/space_info_host.img/roof3.jpg" class="d-block w-100" alt="..." id="host_img3">
              </div>
            </div>
            <button class="carousel-control-prev" type="button" data-target="#carouselExampleIndicators" data-slide="prev">
              <span class="carousel-control-prev-icon" aria-hidden="true"></span>
              <span class="sr-only">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-target="#carouselExampleIndicators" data-slide="next">
              <span class="carousel-control-next-icon" aria-hidden="true"></span>
              <span class="sr-only">Next</span>
            </button>
        </div>
        <hr>
        <div>
            <h2 id="space_host_enterh2">등록 공간 상세정보입니다.</h2>
            <h2 id="space_host_info">호스트님께서 등록하실 공간에 대해 작성하는 '공간 상세정보'입니다.<br>
                                     각 입력란에 맞는 규격으로 아래의 공간 상세정보 신청서를 작성하시기 바랍니다</h2>
        </div>
        <div class="space_host_name">
            <h3 id="space_host_h3">공간명</h3>
            <input type="text" placeholder="고유 업체명을 입력해주세요.ex)하이브 회의실" id="host_input">
            <div class="caution_div">
            <img src="/img/space_info_host.img/caution.png" alt="조심" id="caution"><small id="can_small">사용 가능한 특수문자 : ( , ) , [ , ] , - , .(마침표), ,(쉼표)</small>
            </div>
        </div>
        <div>
            <h3 id="space_host_h3">공간유형</h3>
            <input type="checkbox" style="zoom:10.5;" name="partyroom" value="partyroom" checked id="ch"><label id="ch1">파티룸</label>
        </div>
    </div>