<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet" href="css/host/spacelist_host.css">
<div class="container">
	<h1>호스트 공간 리스트</h1>
	<h2 id="host_list_exp">
		호스트님의 공간을 확인하세요 <img src="/img/service/space_icon.png"
			alt="space_icon" id="space_icon">
	</h2>
	<div id="selectbox">
		<input type="text" placeholder="지역"> <input type="text"
			placeholder="키워드"> <input type="text" placeholder="인원">
		<button>검색</button>
	</div>

	<div id="spacelist" class="row">
	<c:forEach var="dto" items="${enter_list }">
		<div onclick="location.href='/space_info_host'" class="col-4 spacebox">
			<img class="spacelist_img" src="img/공간.jpg" alt="">
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