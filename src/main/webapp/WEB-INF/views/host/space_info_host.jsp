<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<link rel="stylesheet" href="/css/host/space_info_host.css">

<div class="container">
	<h1 id="space_host_h1">공간 상세페이지</h1>
	<h2 id="space_host_h2">
		호스트의 공간 상세페이지입니다 <img src="/img/service/space_icon.png"
			alt="space_icon" id="space_icon">
	</h2>
	<div id="carouselExampleIndicators" class="carousel slide"
		data-ride="carousel" id="name_host_carousel">
		<ol class="carousel-indicators">
			<li data-target="#carouselExampleIndicators" data-slide-to="0"
				class="active"></li>
			<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
			<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
		</ol>
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img src="/img/host/roof.jpg" class="d-block w-100" alt="..."
					id="host_img1">
			</div>
			<div class="carousel-item">
				<img src="img/host/room1.jpg" class="d-block w-100" alt="..."
					id="host_img2">
			</div>
			<div class="carousel-item">
				<img src="img/host/roof3.jpg" class="d-block w-100" alt="..."
					id="host_img3">
			</div>
		</div>
		<button class="carousel-control-prev" type="button"
			data-target="#carouselExampleIndicators" data-slide="prev">
			<span class="carousel-control-prev-icon" aria-hidden="true"></span> <span
				class="sr-only">Previous</span>
		</button>
		<button class="carousel-control-next" type="button"
			data-target="#carouselExampleIndicators" data-slide="next">
			<span class="carousel-control-next-icon" aria-hidden="true"></span> <span
				class="sr-only">Next</span>
		</button>
	</div>
	<hr>
	<div class=contents_wrapper>
	<div class="space_host_name">
		<h1 id="space_host_tit">공간명</h1>
		<h2 id="space_host_h2">공간한줄소개</h2>
	</div>
	<div class="nav_wrapper">
		<ul class="navi_area">
			<li class="nav_1"><a>공간소개</a></li>
			<li class="nav_1"><a>시설안내</a></li>
			<li class="nav_1"><a>유의사항</a></li>
			<li class="nav_1"><a>환불정책</a></li>
			<li class="nav_1"><a>Q&amp;A</a></li>
			<li class="nav_1"><a>이용후기</a></li>
		</ul>
	</div>
	</div>
</div>