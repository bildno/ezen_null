<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<link rel="stylesheet" href="/css/contents/spaceinfo.css">
<div class="container">
	<h1 id="space_host_h1">공간 상세페이지</h1>
	<h2 id="space_host_h2">
		호스트의 공간 상세페이지입니다 <img src="/img/service/space_icon.png"
			alt="space_icon" id="space_icon">
	</h2>
	<div class=contents_wrapper>
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
		<div class="space_host_name">
			<h1 id="space_host_tit">공간명</h1>
			<h2 id="space_host_simintro">공간한줄소개</h2>
		</div>
		<div class="nav_wrapper">
			<table class="space_table">
				<tr class="navi_area">
					<td class="td-1"><a>공간소개</a></td>
					<td class="td-1"><a>유의사항</a></td>
					<td class="td-1"><a>환불정책</a></td>
					<td class="td-1"><a>Q&amp;A</a></td>
					<td class="td-1"><a>이용후기</a></td>
				</tr>
			</table>
		</div>
		<div>
			<h4 id="space_host_sotit">공간소개</h4>
		</div>
		<div class="divide">
			<hr class="line">
		</div>
	

		<form action="/admin/admin_noticeup">
			<div style="text-align: left;"></div>
			<textarea rows="40" cols="100" id="editor4" name="editor4">
			📢 현재 신규오픈 [타임이벤트 특가할인]을 적용하고 있습니다.
			예약사이트 포토 리뷰 작성이 작은 조건입니다💜

			🤩핫딜!!(문의주세요)

			- 9/10 추석 당일 나잇패키지(6시간) 예약 가능합니다!

			
			[공간 소개]
			어디서도 볼 수 없는 커브형 메인 포토존과 파티테이블 포토존, 2면 모두 창문으로 이루어진 따뜻한 파티룸 공간입니다. 

			-브라이덜샤워, 베이비샤워, 생일파티, 프로포즈 등 프라이빗 파티

			- 빔프로젝트 활용한 소규모 세미나, 워크숍 등 

			[공간의 차별점]

			- 샤로수길 도보 30초

			- 인근 맛집,카페, 편의점 다수
			- 라운드 형태의 독특한 메인 포토존

			 * 무료이용 이벤트
	
			 -파티용 조화 테이블, 유니크 모형 케이크 세팅, 화관 등 무료

			  - 120인치 빔프로젝터, 스크린 사용 무료

			- 스마트폰 미러링, 스마트TV, 유튜브, 넷플릭스 무료
		</textarea>
			<button type="submit">수정하기</button>
		</form>

		<div>
			<h4 id="space_host_sotit">시설안내</h4>
		</div>
		<div class="divide">
			<hr class="line">
		</div>
		<div class="info_wrapper">
			<table class="officehours">
				<tr style="border-bottom: 1px solid rgb(254, 245, 172);">
					<td><span class="tit2">영업시간</span></td>
					<td><span class="data">0~24시</span></td>
				</tr>
				<tr>
				<tr>
					<td><span class="tit2">휴무일</span></td>
					<td><span class="data">없음</span></td>
				</tr>
			</table>
		</div>
		<div>
			<h4 id="space_host_sotit">주의사항</h4>
		</div>
		<div class="divide">
			<hr class="line">
		</div>
		<div>
			<ul class="caution_list">
				<li><strong>1</strong> <span class="caution_list_info">당일
						혹은 하루 전 예약과 패키지 외 시간 예약을 원하신다면 카카오톡 채널로 문의 부탁드립니다.</span></li>
				<li><strong>2</strong> <span class="caution_list_info">쾌적한
						시설 이용을 위해 기준 인원은 6명입니다. (예약한 인원과 실사용 인원이 다를 경우 페널티 비용이 발생합니다.</span></li>
				<li><strong>3</strong> <span class="caution_list_info">예약
						후, 반드시 확정 안내 연락을 드리고 있으니 확인 후 이용 바랍니다.</span></li>
				<li><strong>4</strong> <span class="caution_list_info">다음
						이용자의 편리한 이용을 위해 청소 보증금은 5만원이 발생됩니다. 공간 및 시설물 파손(분실) 시 보증금에서 차감/환불
						불가, 물품가액 청구됩니다.</span></li>
				<li><strong>5</strong> <span class="caution_list_info">러그,
						소파에 음식물 오염을 주의해주시고, 퇴실 후 대여 공간의 청소와 기물에 대한 이상이 없을 시 24시간 이내로
						환급드립니다.</span></li>
				<li><strong>6</strong> <span class="caution_list_info">숙박시설이
						아니기에 숙박은 불가하며, 침구류 및 샤워시설은 별도 준비되지 않습니다.</span></li>
				<li><strong>7</strong> <span class="caution_list_info">평일
						낮시간(업무시간) 또는 늦은 밤 시간에 과도한 소음이 발생하지 않도록 주의 부탁드립니다.</span></li>
				<li><strong>8</strong> <span class="caution_list_info">실내
						흡연(전자담배 포함)은 불가하며, 흡연장소는 1층 외부에 있습니다.(흡연 적발 시 퇴실조치 및 보증금 환불
						불가합니다.)</span></li>
			</ul>
		</div>
		<div>
			<h4 id="space_host_sotit">환불규정</h4>
		</div>
		<div class="divide">
			<hr class="line">
		</div>
		<div>
			<p class="refund">
				<strong style="color: red;">이용당일(첫 날) 이후에 환불 관련 사항은 호스트에게
					직접 문의하셔야 합니다.</strong><br> 결제 후 2시간 이내에는 100% 환불이 가능합니다.(단, 이용시간 전까지만
				가능)
			</p>
		</div>
		<div class="inner">
			<div class="sp_location">
				<p class="sp_name">강남 클럽 파티룸 쉘터 DJ파티</p>
				<p class="sp_address">서울 강남구 신사동 552-7 지하1호</p>
				<p class="sp_homepage">
					<a href="http://partyroomshelter.com/index.php" target="_blank">http://partyroomshelter.com/index.php</a>
				</p>
				<!---->
			</div>
			<div class="row callbox">
				<div class="col col6">
					<a><button class="btn_call">전화걸기</button></a>
				</div>
				<div class="col col6">
					<a><button class="btn_way">길찾기</button></a>
				</div>
			</div>
		</div>
		<iframe id="map"
			src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3155.
			164599740011!2d127.0426239156514!3d37.739282521972946!2m3!1f0!2f0!3f0!3m2!
			1i1024!2i768!4f13.1!3m3!1m2!1s0x357cc730e7a0a4e5%3A0xcea407a2baced2ee!2z7J
			207KCg7Lu07ZOo7YSw7ZWZ7JuQIOydmOygleu2gOy6oO2NvOyKpA!5e0!3m2!1sko!2skr!4v16
			63034928101!5m2!1sko!2skr"
			width="100%" height="450" style="border: 0; margin-bottom: 50px;"
			allowfullscreen="" loading="lazy"
			referrerpolicy="no-referrer-when-downgrade"> </iframe>


		<div id="s_qna">
			<h4 id="space_host_sotit">
				Q&amp;A <strong class="txt_primary"><em>0</em>개</strong>
			</h4>
			<a class="btn_qna_write"><span>질문 작성하기</span></a>
		</div>
		<div class="divide">
			<hr class="line">
		</div>
		<div class="center txt_result">
			<p class="p_result">등록된 질문이 아직 없습니다.</p>
		</div>

		<div id="s_review">
			<h4 id="space_host_sotit">
				이용후기 <strong class="txt_primary"><em>0</em>개</strong>
			</h4>
			<a class="btn_review_write"><span>후기 작성하기</span></a>
		</div>
		<div class="divide">
			<hr class="line">
		</div>
		<div class="center txt_result">
			<p class="p_result">등록된 후기가 아직 없습니다.</p>
		</div>
	</div>
</div>


<script src="https://cdn.ckeditor.com/4.15.1/standard/ckeditor.js"></script>
  <script>
  	var ckeditor_config = {
	   resize_enaleb : false,
	   enterMode : CKEDITOR.ENTER_BR,
	   shiftEnterMode : CKEDITOR.ENTER_P,
	   filebrowserUploadUrl : "${pageContext.request.contextPath}/ckUpload"
	 };
	 
	 CKEDITOR.replace("editor4", ckeditor_config);
	 
  </script>


