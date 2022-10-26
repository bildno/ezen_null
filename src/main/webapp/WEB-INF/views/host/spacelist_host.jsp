<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %> 
<link rel="stylesheet" href="css/host/spacelist_host.css">
<div class="container">
	<h1>호스트 공간 리스트</h1>
	<h2 id="host_list_exp">
		호스트님의 공간을 확인하세요 <img src="/img/service/space_icon.png"
			alt="space_icon" id="space_icon">
	</h2>
		<form action="/space_search3" onsubmit="return Value();" method="post">
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
		<c:if test="${fn:length(enter_list) == 0 and fn:length(hostenterlist) == 0 }">
	<h2>검색된 공간이 없습니다.</h2>
	
	</c:if>
	<c:forEach var="dto" items="${enter_list }">
		<div onclick="location.href='/space_info_host?host_name=${dto.hostenter_name}'" class="col-4 spacebox">
			<img class="spacelist_img" src="${dto.hostenter_title_img }" alt="" style="width: 250px; height: 180px">
			<div>
				<textarea id="space_exp" rows="" cols="" readonly="readonly">${dto.hostenter_name }</textarea>
			</div>
		</div>
	</c:forEach>
		<c:forEach var="dto" items="${hostenterlist }">
		<div onclick="location.href='/space_info_host?host_name=${dto.hostenter_name}'" class="col-4 spacebox">
			<img class="spacelist_img" src="${dto.hostenter_title_img }" alt="" style="width: 250px; height: 180px">
			<div>
				<textarea id="space_exp" rows="" cols="" readonly="readonly">${dto.hostenter_name }</textarea>
			</div>
		</div>
	</c:forEach>
	</div>
	
			<div class="ho_space_list">
		    <input class ="ho_space_list2" type="button" value="취소"
			onclick="location.href='/mypage_host'">	
		</div>
		
		
</div>