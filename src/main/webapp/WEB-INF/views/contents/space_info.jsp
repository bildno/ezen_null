<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet" href="/css/contents/spaceinfo.css">
<div class="container">
	<c:forEach var="dto" items="${space_info }">
		<h1 id="space_host_h1">공간 상세페이지</h1>
		<h2 id="space_host_h2">
			공간 상세페이지입니다 <img src="/img/service/space_icon.png"
				alt="space_icon" id="space_icon">
		</h2>
		<div class=contents_wrapper>
			<div id="carouselExampleIndicators" class="carousel slide"
				data-ride="carousel" id="name_host_carousel">
				
				<ol class="carousel-indicators">
				<c:forEach var="dto11" items="${img_list}" varStatus="status2">
					<li data-target="#carouselExampleIndicators" data-slide-to="${status.count }"
						class="active"></li>
					</c:forEach>
				</ol>
				
				<div class="carousel-inner">
				<c:forEach var="dto22" items="${img_list}" varStatus="status">
				<c:if test="${status.count eq 1}" >
					<div class="carousel-item active" >
						<img src="${dto22.hostenter_img }" class="d-block w-100" alt="..."
							id="host_img1">
					</div>
				</c:if>
				<c:if test="${status.count ne 1}">
				<div class="carousel-item">
						<img src="${dto22.hostenter_img }" class="d-block w-100" alt="..."
							id="host_img1">
				</div>
				</c:if>
				</c:forEach>
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
			
			
			<!-- 찜 버튼 -->
			<div id=zzim_button>
			<div id=done_done>
			<span id=done_zzim >${view_count}명이 찜을 했어요 <img src="img/space_info/love.png" id="love"></span>
			</div>
			<div id=zzim_btn>
				<button class="w-btn-outline w-btn-blue-outline" type="button" 
				onclick="location.href='/zzim_doAction?hostenter_number=${dto.hostenter_number}&hostenter_name=${dto.hostenter_name}'" id="zzim_update" >
					찜 하기
				</button>
			</div>
			</div>
            <script>
            function adjustHeight() {
            var textEle = $('textarea');
            textEle[0].style.height = 'auto';
            var textEleHeight = textEle.prop('scrollHeight');
            textEle.css('height', textEleHeight);
            ;
			</script>


			<hr>
			<div class="space_host_name">
				<h1 id="space_host_tit">${dto.hostenter_name }</h1>
				<h2 id="space_host_simintro">${dto.hostenter_onerow }</h2>
			</div>
			<div class="nav_wrapper">
				<table class="space_table">
					<tr class="navi_area">
						<td onclick=movespace(1); class="td-1"><a>공간소개</a></td>
						<td onclick=movespace(2); class="td-1"><a>주의사항</a></td>
						<td onclick=movespace(3); class="td-1"><a>환불정책</a></td>
						<td onclick=movespace(4); class="td-1"><a>Q&amp;A</a></td>
						<td onclick=movespace(5); class="td-1"><a>이용후기</a></td>
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
				<textarea rows="30" cols="100"
					style="border: none; resize: none; background-color: white;"
					readonly="readonly" disabled="disabled">${dto.hostenter_description }</textarea>
			</p>

			<div class="info_wrapper"></div>
			<div>
				<h4 id="space_host_sotit" class="sotiit">주의사항</h4>
			</div>
			<div class="divide">
				<hr class="line">
			</div>
			<div>
				<textarea rows="15" cols="100"
					style="border: none; resize: none;  background-color: white;"
					readonly="readonly" style="border: none; resize: none;" 
					>${dto.hostenter_caution }</textarea>
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
					<p class="sp_name">${dto.hostenter_name }</p>
					<p class="sp_address">${dto.hostenter_location }
						${dto.hostenter_location_detail }</p>
					<p class="sp_homepage">
						<a href="http://partyroomshelter.com/index.php" target="_blank">http://partyroomshelter.com/index.php</a>
					</p>
	
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
	
			<div id="map" style="width: 100%; height: 100vh;"></div>
			<script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCJM5Ya_Czct-X20F3NH7CivlxX4U2zj_M&callback=initMap&region=kr"></script>
			<script>
			
			var API_KEY = "AIzaSyCJM5Ya_Czct-X20F3NH7CivlxX4U2zj_M";
			
			var latitude
			var longitude
			function getCoordinates(address){
			  fetch("https://maps.googleapis.com/maps/api/geocode/json?address="+address+'&key='+API_KEY)
			    .then(response => response.json())
			    .then(data => {
			      latitude = data.results[0].geometry.location.lat;
			      longitude = data.results[0].geometry.location.lng;
			      initMap(latitude, longitude);
			    })
			}
			<c:forEach var="dao" items="${space_info }">
				getCoordinates("${dto.hostenter_location }+ ${dto.hostenter_location_detail }");
			</c:forEach>
			
			
			  var map;
			  var button = document.getElementById('button');
			  button.addEventListener('click', changeCenter)
			  
			    function initMap(varLat, varLng) {
			      var seoul = { lat: varLat ,lng: varLng };
			      var map = new google.maps.Map(
			        document.getElementById('map'), {
			       	  
			          zoom: 15,
			          center: seoul
			        });
			   
			      new google.maps.Marker({
			    	    position: seoul,
			    	    map: map,
			    	    label: "공간 위치"
			    	  });
			    }
			  </script>

			<div id="s_qna">
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