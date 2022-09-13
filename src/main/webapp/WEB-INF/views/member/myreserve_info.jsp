<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<link rel="stylesheet" href="css/member/myreserve_info.css">

<div class="container">

	<h1>예약 공간 상세</h1>
	<h2 id="reserve_exp">
		상세한 공간 정보를 확인해주세요 ! <img src="/img/service/space_icon.png"
			alt="space_icon" id="space_icon">
	</h2>
	<div id="reserve_info">

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
					<img src="/img/member/sharekitchen.jpg" class="d-block img1 "
						alt="">
				</div>
				<div class="carousel-item">
					<img src="/img/member/sharekitchen2.jpg" class="d-block  img1"
						alt="...">
				</div>
				<div class="carousel-item">
					<img src="/img/member/sharekitchen.jpg" class="d-block img1"
						alt="...">
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
				<input type="text" value="예약 공간 이름" readonly id="reserve_title">
			</div>
			<div>
				<textarea name="예약공간 설명" id="" cols="30" rows="10"
					style="resize: none" readonly>Lorem ipsum dolor sit amet consectetur adipisicing elit. Iure itaque odit ipsum ab facere, facilis voluptatem, nobis voluptas commodi veritatis vitae ipsa debitis est inventore pariatur sunt sapiente soluta fuga. lo</textarea>
			</div>

		</div>
		<hr />
		<div>
			<iframe id="map"
				src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3155.
			164599740011!2d127.0426239156514!3d37.739282521972946!2m3!1f0!2f0!3f0!3m2!
			1i1024!2i768!4f13.1!3m3!1m2!1s0x357cc730e7a0a4e5%3A0xcea407a2baced2ee!2z7J
			207KCg7Lu07ZOo7YSw7ZWZ7JuQIOydmOygleu2gOy6oO2NvOyKpA!5e0!3m2!1sko!2skr!4v16
			63034928101!5m2!1sko!2skr"
				width="600" height="450" style="border: 0;" allowfullscreen=""
				loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>

			<textarea rows="10" cols="30" readonly="readonly"
				style="resize: none" id="notice_area">Lorem ipsum dolor sit amet consectetur adipisicing elit. Iure itaque odit ipsum ab facere, facilis voluptatem, nobis voluptas commodi veritatis vitae ipsa debitis est inventore pariatur sunt sapiente soluta fuga. lo</textarea>
		</div>


		<div id="btn_box">
			<button style="right: 0; margin-left: 50px;">확인</button>
			<button onclick="location.href='/mypage'">예약취소</button>
		</div>
	</div>

</div>