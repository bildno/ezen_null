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
								${dto.notice_title } </a> <span id="span1"> ${dto.notice_date } </span>
						</h4>
					</div>
					<div id="collapseOne${dto.notice_number }" class="panel-collapse collapse in"
						role="tabpanel" aria-labelledby="headingOne${dto.notice_number }">
						<div class="panel-body" id="noti_answer">${ dto.notice_content }</div>
					</div>
				</div>
			</c:forEach>
				
	<!-- pagination 부트 스트랩 사용 -->
	<div class="container-fluid">
		<div class="row" style="justify-content: center; margin-top:30px;">
		  <ul class="pagination">
		    
		    <li class="page-item <c:if test="${ page_notice == 1 }">disabled</c:if>">
		    	<a class="page-link" href="/service?page_notice=${page_notice-1}">Previous</a>
		    </li>
		    
		    <li class="page-item <c:if test="${ page_notice == 1 }">active</c:if>">
		    	<a class="page-link" href="/service?page_notice=1">1</a>
		    </li>
		    <li class="page-item <c:if test="${ page_notice == 2 }">active</c:if>">
		    	<a class="page-link" href="/service?page_notice=2">2</a>
		    </li>
		    <li class="page-item <c:if test="${ page_notice == 3 }">active</c:if>">
		    	<a class="page-link" href="/service?page_notice=3">3</a>
		    </li>
		    <li class="page-item <c:if test="${ page_notice == 4 }">active</c:if>">
		    	<a class="page-link" href="/service?page_notice=4">4</a>
		    </li>
		    <li class="page-item <c:if test="${ page_notice == 5 }">active</c:if>">
		    	<a class="page-link" href="/service?page_notice=5">5</a>
		    </li>
		    <li class="page-item <c:if test="${ page_notice == 5 }">disabled</c:if>">
		    	<a class="page-link" href="/service?page_notice=${page_notice+1}">Next</a>
		    </li>
		  </ul>
		</div> 
	</div>
</div>



<hr id="customer_hr">

<!-- 도움말 -->
<div class="notice">
	<div class="tb_notice">
		<div class="panel-group" id="accordion" role="tablist"
			aria-multiselectable="true">
			
			
		<c:forEach var="dto" items="${ faqlist }">
			<div class="panel panel-default" id="panel"
				onMouseOver="this.className='noti_over'"
				onMouseOut="this.className='noti_'">
				<div class="panel-heading" role="tab" id="headingOne">
					<h4 class="panel-title">
						<a role="button" data-toggle="collapse" data-parent="#accordion"
							href="#collapseOne1${dto.faq_number }" aria-expanded="true"
							aria-controls="collapseOne" id="num1"> ${dto.faq_title } </a> <span
							id="span1">${dto.faq_date }</span>
					</h4>
				</div>
				<div id="collapseOne1${dto.faq_number }" class="panel-collapse collapse in"
					role="tabpanel" aria-labelledby="headingOne${ dto.faq_number }">
					<div class="panel-body" id="noti_answer">${ dto.faq_content }</div>
				</div>
			</div>
			</c:forEach>
			</div>
		</div>
	</div>
	<div class="container-fluid">
		<div class="row" style="justify-content: center; margin-top:30px;">
		  <ul class="pagination">
		    
		    <li class="page-item <c:if test="${ page_faq == 1 }">disabled</c:if>">
		    	<a class="page-link" href="/service?page_faq=${page_faq-1}">Previous</a>
		    </li>
		    
		    <li class="page-item <c:if test="${ page_faq == 1 }">active</c:if>">
		    	<a class="page-link" href="/service?page_faq=1">1</a>
		    </li>
		    <li class="page-item <c:if test="${ page_faq == 2 }">active</c:if>">
		    	<a class="page-link" href="/service?page_faq=2">2</a>
		    </li>
		    <li class="page-item <c:if test="${ page_faq == 3 }">active</c:if>">
		    	<a class="page-link" href="/service?page_faq=3">3</a>
		    </li>
		    <li class="page-item <c:if test="${ page_faq == 4 }">active</c:if>">
		    	<a class="page-link" href="/service?page_faq=4">4</a>
		    </li>
		    <li class="page-item <c:if test="${ page_faq == 5 }">active</c:if>">
		    	<a class="page-link" href="/service?page_faq=5">5</a>
		    </li>
		    <li class="page-item <c:if test="${ page_faq == 5 }">disabled</c:if>">
		    	<a class="page-link" href="/service?page_faq=${page_faq+1}">Next</a>
		    </li>
		  </ul>
		</div> 
	</div>
</div>
<!-- pagination 부트 스트랩 사용 -->


</div>

</div>
