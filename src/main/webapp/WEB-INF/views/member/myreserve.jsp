<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<link rel="stylesheet" href="css/member/myreserve.css">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div class="container">
	<h1 id="myreserve_h1">예약 리스트</h1>
	<h2 id="reserve_exp">
		예약내역을 확인해주세요 ! <img src="/img/service/space_icon.png" alt="space_icon"
			id="space_icon">
	</h2>
	<c:forEach var="dto" items="${reservelist}">
	<div class="list">
		<div id="myreserve_list">
			<div>
				<input type="text" value="예약내역 1" readonly="readonly">
				<button class="detail_btn" onclick="location.href='/myreserve_info'">세부내역</button>
			</div>
			<hr>
			<div>
				<input type="text" value="예약내역 2" readonly="readonly">
				<button class="detail_btn">세부내역</button>
			</div>
			<hr>
			<div>
				<input type="text" value="예약내역 2" readonly="readonly">
				<button class="detail_btn">세부내역</button>
			</div>
			<hr>
		</div>
	</div>
	</c:forEach>

</div>