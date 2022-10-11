<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>



<!-- c태그 꼭 써야 foreach문 사용 가능 -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<link rel="stylesheet" href="css/one2one/one2one.css">

<div class="container">
	<h1 id="one2one_h1">1 : 1 문의</h1>
	<h2 id="one2one_h2">
		1:1 답변을 확인해주세요 <img src="/img/service/space_icon.png" alt="space_icon"
			id="space_icon">
	</h2>
	<div class=contents>
		<c:set var="list" value="${one2one_list }" />
		<c:set var="flist" value="${fn:length(list) }" />
		<c:if test="${flist == 0 }">
			<div id="one_list_div">
				<span id="list_span"> 등록된 1 : 1 문의가 없습니다. </span>
			</div>
		</c:if>
				<h3 class="sub_title">답변 문의</h3>
		<c:forEach var="dto" items="${one2oneDtoAndAnswer_list}">
				<button class="accordion" id="o_num${dto.one2oneDto.one2one_number }  "
				value="${dto.one2oneDto.one2one_number }" name="one2one_number">
				<div id="one_list_div">
					<span id="list_span"> ${dto.one2oneDto.one2one_title }  </span> <span
						id="list_span_date"> ${dto.one2oneDto.one2one_date }  <input
						type="button" value="삭제" class="deletebtn"
						onclick="location.href='one2oneDelete?num=${dto.one2oneDto.one2one_number }'"
						style="margin-left: 10px;">
					</span>
				</div>
			</button>
					<div class="panel">
						<p id="o_ans1">
							<span id="list_anspan">${dto.one2one_answerDto.one2oneanswer_content }  </span>
						</p>
					</div>
		</c:forEach>
		<br>
		<br>
		<br>
		<h3 class="sub_title">미답변 문의</h3>
		<c:forEach var="dto2" items="${one2one_list }" >
		<c:set var="number" value="${dto.one2one_number }" />
		<button class="accordion" id="o_num${dto2.one2one_number }"
				value="${dto2.one2one_number }" name="one2one_number">
				<div id="one_list_div">
					<span id="list_span"> ${dto2.one2one_title } </span> <span
						id="list_span_date"> ${dto2.one2one_date }  <input
						type="button" value="삭제" class="deletebtn"
						onclick="location.href='one2oneDelete?num=${dto2.one2one_number }'"
						style="margin-left: 10px;">
					</span>
				</div>
			</button>
					<div class="panel">
						<p id="o_ans1">
							<span id="list_anspan">아직 답변이 달리지 않았습니다.</span>
						</p>
					</div>
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