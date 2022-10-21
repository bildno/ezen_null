<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %> 
<link rel="stylesheet" href="css/contents/spacerent.css">

<!-- <script type="text/javascript">
	function Value() {
		
		var pattern_num = /^[0-9]*$/;	// 정규식 부분
		
		var headcount = document.getElementById("headcount");
		var keyword = document.getElementById("keyword"); //변수 선언 부분
		
		
		if(pattern_num.test(headcount.value) == false || headcount=="") {
			
			alert("인원에 숫자만 입력해주세요");
			
			return false;
			
			}
		
		}
	
</script> -->




<div class="container">
	<h1>공간 리스트</h1>
	<h2 id="host_list_exp">
		공간을 확인하세요 <img src="/img/service/space_icon.png" alt="space_icon"
			id="space_icon">
	</h2>
	
	<form action="/space_search" onsubmit="return Value();" method="post">
	<div id="selectbox">
		<input type="text" name="headcount" placeholder="인원" id="headcount">
		<input type="text" name="search_name" placeholder="키워드" id="keyword"> 
		<input type="hidden" value="${contents_number }" name="contents_number">
			<c:forEach var="dt" items="${hostenterlist }" varStatus="dto">
			</c:forEach>
		<button type="submit">검색</button>
	</div>
	</form>
	
	<div id="spacelist" class="row">
	<c:if test="${fn:length(space_list) == 0 and fn:length(hostenterlist) == 0 }">
	<h2>검색된 공간이 없습니다.</h2>
	
	</c:if>
	<c:forEach var="dto" items="${space_list }">
			<div style="cursor: pointer" onclick="location.href='/space_info?hostenter_number=${dto.hostenter_number }&hostenter_name=${dto.hostenter_name }'"
				class="col-4 spacebox">
				<img class="spacelist_img" src="${dto.hostenter_title_img }" alt="" style="width: 250px; height: 190px"> 
				<div>
					<textarea id="space_exp" rows="" cols="" readonly="readonly">${dto.hostenter_name}</textarea>
				</div>
			</div>
		</c:forEach>
		
	<c:forEach var="dto" items="${hostenterlist }">
			<div style="cursor: pointer" onclick="location.href='/space_info?hostenter_number=${dto.hostenter_number }&hostenter_name=${dto.hostenter_name }'"
				class="col-4 spacebox">
				<img class="spacelist_img" src="${dto.hostenter_title_img }" alt="" style="width: 250px; height: 190px"> 
				<div>
					<textarea id="space_exp" rows="" cols="" readonly="readonly">${dto.hostenter_name}</textarea>
				</div>
			</div>
		</c:forEach>

		

	</div>
	</div>

