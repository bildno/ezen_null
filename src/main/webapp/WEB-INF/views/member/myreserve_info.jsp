<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<link rel="stylesheet" href="css/member/myreserve_info.css">
<!DOCTYPE html>
<div class="container">

	<div id="reserve_info">
		<h1>예약 공간 상세</h1>
		<hr>
		<div id="carouselExampleIndicators" class="carousel slide"
			data-ride="carousel">
			<ol class="carousel-indicators">
				<li data-target="#carouselExampleIndicators" data-slide-to="0"
					class="active"></li>
				<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
				<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
			</ol>
			<div class="carousel-inner">
				<div class="carousel-item active">
					<img src="/img/member/sharekitchen.jpg" class="d-block w-80 img1 " alt="">
				</div>
				<div class="carousel-item">
					<img src="/img/member/sharekitchen2.jpg" class="d-block w-50 img1" alt="...">
				</div>
				<div class="carousel-item">
					<img src="/img/member/sharekitchen.jpg" class="d-block w-100 img1" alt="...">
				</div>
			</div>
			<button class="carousel-control-prev" type="button"
				data-target="#carouselExampleIndicators" data-slide="prev">
				<span class="carousel-control-prev-icon" aria-hidden="true"></span>
				<span class="sr-only">Previous</span>
			</button>
			<button class="carousel-control-next" type="button"
				data-target="#carouselExampleIndicators" data-slide="next">
				<span class="carousel-control-next-icon" aria-hidden="true"></span>
				<span class="sr-only">Next</span>
			</button>
		</div>
		<hr>
		<div id="info_list">
			<div>
				<input type="text" value="예약 공간 이름" readonly>
			</div>
			<div>
				<textarea name="예약공간 설명" id="" cols="30" rows="10" readonly>Lorem ipsum dolor sit amet consectetur adipisicing elit. Iure itaque odit ipsum ab facere, facilis voluptatem, nobis voluptas commodi veritatis vitae ipsa debitis est inventore pariatur sunt sapiente soluta fuga. lo</textarea>
			</div>
			<div id="btn_box">
				<button style="right: 0; margin-left: 50px;">확인</button>
				<button>예약취소</button>
			</div>
		</div>
	</div>

</div>