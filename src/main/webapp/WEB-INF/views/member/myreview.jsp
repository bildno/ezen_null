<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<link rel="stylesheet" href="css/member/myreview.css">
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내가 쓴 리뷰</title>
</head>
<body>
	<div class="container">

		<h1>리뷰 상세</h1>
		<h2 id="review_exp">
			상세한 리뷰 내용을 확인해주세요 ! <img src="/img/service/space_icon.png"
				alt="space_icon" id="space_icon">
		</h2>
		<hr>
		<div id="review_info">


			<div class="carousel-inner">
				<div class="review_img">
					<img src="/img/member/sharekitchen.jpg" class="d-block img1" alt="">
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
			<div>
				<input type="text" value="예약 공간 이름" readonly id="review_title">
			</div>
			<hr>
			<div id="info_list">
				<div>
					<input type="text" value="리뷰내역" readonly id="review_title">
				</div>
				<div>
					<textarea id="review_contents" name="리뷰 내용" cols="30" rows="10"
						style="resize: none" readonly>Lorem ipsum dolor sit amet consectetur adipisicing elit. Iure itaque odit ipsum ab facere, facilis voluptatem, nobis voluptas commodi veritatis vitae ipsa debitis est inventore pariatur sunt sapiente soluta fuga. lo</textarea>
				</div>
			</div>
			<div id="btn_box">
				<button style="right: 0; margin-left: 50px;">확인</button>
				<button>리뷰 수정</button>
			</div>
		</div>

	</div>
</body>
</html>