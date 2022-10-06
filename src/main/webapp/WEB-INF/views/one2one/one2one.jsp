<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
	
	
	<!-- c태그 꼭 써야 foreach문 사용 가능 -->	
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %> 

<link rel="stylesheet" href="css/one2one/one2one.css">

<div class="container">
	<h1 id="one2one_h1">1 : 1 문의</h1>
	<h2 id="one2one_h2">
		1:1 답변을 확인해주세요 <img src="/img/service/space_icon.png" alt="space_icon"
			id="space_icon">
	</h2>
	<div class=contents>
	<c:set var="list"  value="${one2one_list }"/>
	<c:set var="flist" value="${fn:length(list) }"/>
	<c:if test="${flist == 0 }">
		<div id="one_list_div">
		<span id="list_span">
		  등록된 1 : 1 문의가 없습니다.
		</span> 
		</div> 
	</c:if>
	
	<c:forEach var="dto" items="${one2one_list}" varStatus="status">
		<button class="accordion" id="o_num${dto.one2one_number}" value="${dto.one2one_number}" name="one2one_number">
		<div id="one_list_div">
		<span id="list_span">
		  ${dto.one2one_title}
		</span> 
		<span id="list_span_date">
		  ${dto.one2one_date}
		<input type="button" value="삭제" onclick="location.href='one2oneDelete?num=${dto.one2one_number}'" 
		style="margin-left: 10px;">
		</span>
		</div> 
		</button>
		<c:set var="number" value="${dto.one2one_number}" />
		<c:set var="loop_flag" value="false" />
		<c:forEach var="answer" items = "${one2oneanswer_list }">
		<c:set var="answer_number" value="${answer.one2oneanswer_one2one_number }" />
		<div class="panel">
			<p id="o_ans1" >
			<span id="list_anspan">
			<c:if test="${number eq answer_number}">		
			${answer.one2oneanswer_content }
			<c:set var="loop_flag" value="true" />
			</c:if>
			<c:if test="${number ne answer_number}">		
				등록된 문의 답변이 없습니다.
			</c:if>	
			
			</span>
			</p>
		</div>
		</c:forEach>
		</c:forEach>	
		</div>
		<br>
		<div class="write">
			<input class="writebtn" type="button" value="글쓰기"
				onclick="location.href='/one2one_write'">
		</div>

	</div>

	<script>
		var acc = document.getElementsByClassName("accordion");
		var i;
		var back = document.getElementsByClassName("accordion");
		for (i = 0; i < acc.length; i++) {
			acc[i].addEventListener("click", function() {
				this.classList.toggle("actives");
				var panel = this.nextElementSibling;
				if (panel.style.maxHeight) {
					console.log(panel.style.maxHeight);
					panel.style.maxHeight = null;
				} else {
					console.log(panel.style.maxHeight);
					panel.style.maxHeight = panel.scrollHeight + "px";

				}
			});
		}
	</script>