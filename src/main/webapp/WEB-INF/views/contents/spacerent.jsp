<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet" href="css/contents/spacerent.css">
<div class="container">
	<h1>공간 리스트</h1>
	<h2 id="host_list_exp">
		공간을 확인하세요 <img src="/img/service/space_icon.png" alt="space_icon"
			id="space_icon">
	</h2>
	<script>
	function form_reset() {

	    document.getElementById("form_apply").reset();

	}
	</script>
	<form action="/space_search" id="form_apply" method="post" enctype="multipart/form-data">
	<div id="selectbox">
		<input type="text" name="headcount" placeholder="인원">
		<input type="text" name="search_name" placeholder="키워드">
		<input type="hidden" value="${contents_number }" name="contents_number">
		<button type="submit" style="margin-right: 10px;">검색</button>
	</form>	
	<button onclick="location.href='spacerent?contents_number=${contents_number}'">초기화</button>
	</div>
	
	<div id="spacelist" class="row">
	<c:forEach var="dto" items="${space_list }">
			<div style="cursor: pointer" onclick="location.href='/space_info?hostenter_number=${dto.hostenter_number }&hostenter_name=${dto.hostenter_name }'"
				class="col-4 spacebox">
				<img class="spacelist_img" src="${dto.hostenter_title_img }" alt="" style="width: 250px; height: 190px"> 
				<div>
					<textarea id="space_exp" rows="" cols="" readonly="readonly" style="font-family:'Noto Sans KR', sans-serif; border: none; cursor: pointer">${dto.hostenter_name}</textarea>
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