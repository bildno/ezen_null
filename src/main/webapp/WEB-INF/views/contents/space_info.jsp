<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet" href="/css/contents/spaceinfo.css">
<div class="container">
<c:forEach var="dto" items="${space_info }">
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
			<h1 id="space_host_tit">${dto.hostenter_name }</h1>
			<h2 id="space_host_simintro">${dto.hostenter_onerow }</h2>
		</div>
		<div class="nav_wrapper">
			<table class="space_table">
				<tr class="navi_area">
					<td onclick= movespace(1); class="td-1"><a>공간소개</a></td>
					<td onclick= movespace(2); class="td-1"><a>주의사항</a></td>
					<td onclick= movespace(3); class="td-1"><a>환불정책</a></td>
					<td onclick= movespace(4); class="td-1"><a>Q&amp;A</a></td>
					<td onclick= movespace(5); class="td-1"><a>이용후기</a></td>
				</tr>
			</table>
		</div>
		<div>
			<h4 id="space_host_sotit" class="space_tag">공간소개</h4>
		</div>
		<div class="divide">
			<hr class="line">
		</div>
		<p class="p_intro">
			<textarea rows="30" cols="100" style="border: none; resize: none; background-color: white;" readonly="readonly" disabled="disabled" >${dto.hostenter_description }</textarea>
		</p>

		<div>
			<h4 id="space_host_sotit">시설안내</h4>
		</div>
		<div class="divide">
			<hr class="line">
		</div>
		<div class="info_wrapper">
			
		</div>
		<div>
			<h4 id="space_host_sotit" class="sotiit">주의사항</h4>
		</div>
		<div class="divide">
			<hr class="line">
		</div>
		<div>
		<textarea rows="15" cols="100" style="border: none; resize: none; cursor: none; background-color: white;" readonly="readonly" style="border: none; resize: none; bac " readonly="readonly" disabled="disabled">${dto.hostenter_caution }</textarea>
		</div>
		<div>
			<h4 id="space_host_sotit" class="refund_title">환불규정</h4>
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
				<p class="sp_address">${dto.hostenter_location } ${dto.hostenter_location_detail }</p>
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
		
		  <div id="map" style="width:100%; height: 100vh;"></div>
			  <script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCJM5Ya_Czct-X20F3NH7CivlxX4U2zj_M&callback=initMap&region=kr"></script>
			  <script>
			  var map;
			  var button = document.getElementById('button');
			  button.addEventListener('click', changeCenter)
			  
			    function initMap() {
			      var seoul = { lat: 37.2392902 ,lng: 131.867377 };
			      var map = new google.maps.Map(
			        document.getElementById('map'), {
			       	  
			          zoom: 12,
			          center: seoul
			        });
			      
			      new google.maps.Marker({
			    	    position: seoul,
			    	    map: map,
			    	    label: "서울 중심 좌표"
			    	  });
			    }
			  </script>
		
		<!-- <iframe id="map"
			src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3155.
			164599740011!2d127.0426239156514!3d37.739282521972946!2m3!1f0!2f0!3f0!3m2!
			1i1024!2i768!4f13.1!3m3!1m2!1s0x357cc730e7a0a4e5%3A0xcea407a2baced2ee!2z7J
			207KCg7Lu07ZOo7YSw7ZWZ7JuQIOydmOygleu2gOy6oO2NvOyKpA!5e0!3m2!1sko!2skr!4v16
			63034928101!5m2!1sko!2skr"
			width="100%" height="450" style="border: 0; margin-bottom: 50px;"
			allowfullscreen="" loading="lazy"
			referrerpolicy="no-referrer-when-downgrade"> </iframe> -->


		<div id="s_qna" >
			<h4 id="space_host_sotit" class="info_QnA">
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
			<h4 id="space_host_sotit" class="review_tag">
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
		</c:forEach>
	</div>
	<script type="text/javascript">
	function movespace(int){
		switch (int) {
            case 1:
            var location = document.querySelector(".space_tag").offsetTop;
                break;
        
            case 2:
            var location = document.querySelector(".sotiit").offsetTop;
                break;

            case 3:
            var location = document.querySelector(".refund_title").offsetTop;
            	break;

            case 4:
            var location = document.querySelector(".info_QnA").offsetTop;
            	break;

            case 4:
            var location = document.querySelector(".review_tag").offsetTop;
            	break;
        }
	
		window.scrollTo({top:location, behavior:'smooth'})
	}

</script>
	
	

