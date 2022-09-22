<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
	
	
	<!-- c태그 꼭 써야 foreach문 사용 가능 -->	
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<link rel="stylesheet" href="css/one2one/one2one.css">

<div class="container">
	<h1 id="one2one_h1">1 : 1 문의</h1>
	<h2 id="one2one_h2">
		1:1 답변을 확인해주세요 <img src="/img/service/space_icon.png" alt="space_icon"
			id="space_icon">
	</h2>
	<div class=contents>
	<c:forEach var="dto" items="${one2one_list}" varStatus="">
		<button class="accordion" id="o_num${dto.one2one_number}" value="${dto.one2one_number}" name="one2one_number">
		<div id="one_list_div">
		<span id="list_span">
		  ${dto.one2one_content}
		</span> 
		<span id="list_span_id">
		  ${dto.one2one_member_id}
		</span> 
		<span id="list_span_date">
		  ${dto.one2one_date}
		</span>
		</div> 
		</button>
		</c:forEach>
		
				
		<div class="panel">
		<c:forEach var="dto2" items="${qwer}">
			<p id="o_ans1" >
			<span id="list_anspan">
			${dto2.one2oneanswer_content }
			</span>
			</p>
		</c:forEach>	
		</div>


		<br>
		<div class="write">
			<input class="writebtn" type="button" value="글쓰기"
				onclick="location.href='/one2one_write'">
			<input class="writebtn" type="button" value="취소"
				onclick="location.href='/mypage'">
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
</div>
