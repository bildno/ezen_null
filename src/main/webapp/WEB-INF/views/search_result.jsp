<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet" href="css/contents/spacerent.css">
<div class="container">
	<h1>공간 리스트</h1>
	<h2 id="host_list_exp">
		검색된 공간을 확인하세요 <img src="/img/service/space_icon.png" alt="space_icon"
			id="space_icon">
	</h2>
	<div id="selectbox">
		<input type="text" placeholder="지역"> <input type="text"
			placeholder="키워드"> <input type="text" placeholder="인원">
		<button>검색</button>
	</div>

	<div id="spacelist" class="row">
		<c:forEach var="dto" items="${search_result }">
			<div style="cursor: pointer" onclick="location.href='/space_info?hostenter_number=${dto.hostenter_number }&hostenter_name=${dto.hostenter_name }'"
				class="col-4 spacebox">
				<img class="spacelist_img" src="${dto.hostenter_title_img }" alt="">
				<div>
					<textarea id="space_exp" rows="" cols="" readonly="readonly">${dto.hostenter_name}</textarea>
				</div>
			</div>
		</c:forEach>

		

	</div>
</div>