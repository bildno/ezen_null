<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet" href="css/contents/spacerent.css">
<div class="container">
	<h1>공간 리스트</h1>
	<h2 id="host_list_exp">
		검색된 공간을 확인하세요 <img src="/img/service/space_icon.png" alt="space_icon"
			id="space_icon">
	</h2>
	<form action="/space_search2" onsubmit="return Value();" method="post">
		<div id="selectbox">
			<input type="text" name="headcount" placeholder="인원" id="headcount">
			<input type="text" name="search_name" placeholder="키워드" id="keyword">
			<c:forEach var="dt" items="${hostenterlist }" varStatus="dto">
			</c:forEach>
			<button type="submit">검색</button>
		</div>
	</form>
	<div id="spacelist" class="row">
		<c:if
			test="${fn:length(search_result) == 0 and fn:length(hostenterlist) == 0 }">
			<h2>검색된 공간이 없습니다.</h2>

		</c:if>
		<c:forEach var="dto" items="${search_result }">
			<div style="cursor: pointer"
				onclick="location.href='/space_info?hostenter_number=${dto.hostenter_number }&hostenter_name=${dto.hostenter_name}'"
				class="col-4 spacebox">
				<img class="spacelist_img" src="${dto.hostenter_title_img }" alt=""
					width="250px" height="150px">
				<div>
					<textarea id="space_exp" rows="" cols="" readonly="readonly">${dto.hostenter_name}</textarea>
				</div>
			</div>
		</c:forEach>
		<c:forEach var="dto" items="${hostenterlist }">
			<div style="cursor: pointer"
				onclick="location.href='/space_info?hostenter_number=${dto.hostenter_number }&hostenter_name=${dto.hostenter_name}'"
				class="col-4 spacebox">
				<img class="spacelist_img" src="${dto.hostenter_title_img }" alt=""
					width="250px" height="150px">
				<div>
					<textarea id="space_exp" rows="" cols="" readonly="readonly">${dto.hostenter_name}</textarea>
				</div>
			</div>
		</c:forEach>


	</div>
</div>