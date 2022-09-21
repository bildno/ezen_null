<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<link rel="stylesheet" href="/css/service/service.css">


<div class="container">

	<h1 id="service_h1">고객센터</h1>
	<h2 id="service_h2">
		공지사항과 도움말을 확인해주세요 <img src="/img/service/space_icon.png"
			alt="space_icon" id="space_icon">
	</h2>

	<!-- 공지사항 -->

	<div class="notice">
		<div class="tb_notice">

			<div class="panel-group" id="accordion" role="tablist"
				aria-multiselectable="true">
		<c:forEach var="dto" items="${ noticelist }">
				<div class="panel panel-default" id="panel"
					onMouseOver="this.className='noti_over'"
					onMouseOut="this.className='noti_'">
			
					<div class="panel-heading" role="tab" id="headingOne1">
						<h4 class="panel-title">
							<a role="button" data-toggle="collapse" data-parent="#accordion"
								href="#collapseOne${dto.notice_number }" aria-expanded="true"
								aria-controls="collapseOne1" id="num1"> 
								${dto.notice_title } </a> <span id="span1"> 2022-09-07 </span>
						</h4>
					</div>
					<div id="collapseOne${dto.notice_number }" class="panel-collapse collapse in"
						role="tabpanel" aria-labelledby="headingOne${dto.notice_number }">
						<div class="panel-body" id="noti_answer">${ dto.notice_content }</div>
					</div>
				</div>
			</c:forEach>
				
	<!-- pagination 부트 스트랩 사용 -->
	<div class="pagenavi">
		<nav aria-label="Page navigation example">
			<ul class="pagination">
				<li class="page-item"><a class="page-link" href="#"
					aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
				</a></li>
				<li class="page-item"><a class="page-link" href="#">1</a></li>
				<li class="page-item"><a class="page-link" href="#">2</a></li>
				<li class="page-item"><a class="page-link" href="#">3</a></li>
				<li class="page-item"><a class="page-link" href="#">4</a></li>
				<li class="page-item"><a class="page-link" href="#">5</a></li>
				<li class="page-item"><a class="page-link" href="#"
					aria-label="Next"> <span aria-hidden="true">&raquo;</span>
				</a></li>
			</ul>
		</nav>
	</div>
</div>



<hr id="customer_hr">

<!-- 도움말 -->
<div class="notice">
	<div class="tb_notice">
		<div class="panel-group" id="accordion" role="tablist"
			aria-multiselectable="true">
			<div class="panel panel-default" id="panel"
				onMouseOver="this.className='noti_over'"
				onMouseOut="this.className='noti_'">
				<div class="panel-heading" role="tab" id="headingOne">
					<h4 class="panel-title">
						<a role="button" data-toggle="collapse" data-parent="#accordion"
							href="#collapseOne" aria-expanded="true"
							aria-controls="collapseOne" id="num1"> [도움말]공간을 등록하고 싶어요. </a> <span
							id="span1"> 2022-09-07 </span>
					</h4>
				</div>
				<div id="collapseOne" class="panel-collapse collapse in"
					role="tabpanel" aria-labelledby="headingOne">
					<div class="panel-body" id="noti_answer">호스트 계정으로 회원가입 후
						등록가능하십니다</div>
				</div>
			</div>
			<div class="panel panel-default" id="panel"
				onMouseOver="this.className='noti_over'"
				onMouseOut="this.className='noti_'">
				<div class="panel-heading" role="tab" id="headingTwo">
					<h4 class="panel-title">
						<a class="collapsed" role="button" data-toggle="collapse"
							data-parent="#accordion" href="#collapseTwo"
							aria-expanded="false" aria-controls="collapseTwo" id="num2">
							[도움말]이용한 공간에 물건을 두고 왔어요. </a> <span id="span2"> 2022-09-07 </span>
					</h4>
				</div>
				<div id="collapseTwo" class="panel-collapse collapse"
					role="tabpanel" aria-labelledby="headingTwo">
					<div class="panel-body" id="noti_answer">
						공간을 직접 운영/관리하는 호스트님께 직접 문의 부탁드립니다^^.<br> 연락이 되지 않을 경우 고객센터로
						070-0000-0000으로 전화부탁드립니다.
					</div>
				</div>
			</div>
			<div class="panel panel-default" id="panel"
				onMouseOver="this.className='noti_over'"
				onMouseOut="this.className='noti_'">
				<div class="panel-heading" role="tab" id="headingThree">
					<h4 class="panel-title">
						<a class="collapsed" role="button" data-toggle="collapse"
							data-parent="#accordion" href="#collapseThree"
							aria-expanded="false" aria-controls="collapseThree" id="num3">
							[도움말]공간을 여러 개 올릴 수도 있나요? </a> <span id="span3"> 2022-09-07 </span>
					</h4>
				</div>
				<div id="collapseThree" class="panel-collapse collapse"
					role="tabpanel" aria-labelledby="headingThree">
					<div class="panel-body" id="noti_answer">한 사람당 공간 1개만
						등록가능하십니다.</div>
				</div>
			</div>
			<div class="panel panel-default" id="panel"
				onMouseOver="this.className='noti_over'"
				onMouseOut="this.className='noti_'">
				<div class="panel-heading" role="tab" id="headingFour">
					<h4 class="panel-title">
						<a class="collapsed" role="button" data-toggle="collapse"
							data-parent="#accordion" href="#collapseFour"
							aria-expanded="false" aria-controls="collapseFour" id="num4">
							[도움말]당일 예약도 가능할까요? </a> <span id="span4"> 2022-09-07 </span>
					</h4>
				</div>
				<div id="collapseFour" class="panel-collapse collapse"
					role="tabpanel" aria-labelledby="headingFour">
					<div class="panel-body" id="noti_answer">이용 시간 기준으로 3시간 이상 남은
						공간에 대해 당일 예약 가능하며, 승인예약 상품의 경우 호스트 최종 승인 후 예약 확정됩니다.</div>
				</div>
			</div>
			<div class="panel panel-default" id="panel"
				onMouseOver="this.className='noti_over'"
				onMouseOut="this.className='noti_'">
				<div class="panel-heading" role="tab" id="headingFive">
					<h4 class="panel-title">
						<a class="collapsed" role="button" data-toggle="collapse"
							data-parent="#accordion" href="#collapseFive"
							aria-expanded="false" aria-controls="collapseFive" id="num5">
							[도움말]스페이스 그라운드는 어떤 사이트인가요? </a> <span id="span5"> 2022-09-07 </span>
					</h4>
				</div>
				<div id="collapseFive" class="panel-collapse collapse"
					role="tabpanel" aria-labelledby="headingFive">
					<div class="panel-body" id="noti_answer">
						복합 커뮤니티 공간대여 사이트입니다.<br> 원하는 커뮤니티를 선택 후 사람들과 같이 공간대여를 통해
						취미활동을 즐길 수 있는 플랫폼입니다.
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- pagination 부트 스트랩 사용 -->
<div class="pagenavi">
	<nav aria-label="Page navigation example">
		<ul class="pagination">
			<li class="page-item"><a class="page-link" href="#"
				aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
			</a></li>
			<li class="page-item"><a class="page-link" href="#">1</a></li>
			<li class="page-item"><a class="page-link" href="#">2</a></li>
			<li class="page-item"><a class="page-link" href="#">3</a></li>
			<li class="page-item"><a class="page-link" href="#">4</a></li>
			<li class="page-item"><a class="page-link" href="#">5</a></li>
			<li class="page-item"><a class="page-link" href="#"
				aria-label="Next"> <span aria-hidden="true">&raquo;</span>
			</a></li>
		</ul>
	</nav>
</div>

</div>

</div>
</div>
