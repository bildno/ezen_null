<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<link rel="stylesheet" href="css/member/mywish.css">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">

<div class="container">
	<h1 id="wish_h1">찜 목록</h1>
	<h2 id="wish_h2">
		찜 목록을 확인해주세요 <img src="/img/service/space_icon.png" alt="space_icon"
			id="space_icon">
	</h2>
	<!-- '삭제'는 타입을 submit으로 해서 form action대로 실행됨 -->
	<!-- 세부사항은 타입을 그냥 button으로 만들어서 onclick에 걸어준 주소로 이동됨 -->
	<div class="w_contents">
		<div class="contents">
		<c:forEach var="dto" items="${wish_list}">
		<form action="/zzim_delete">
			<div class="wish">
				<input type="text" value="${dto.hostenter_name}" readonly>
				<button class="detail" type="button" onclick="location.href='/space_info?hostenter_number=${dto.hostenter_number}'">세부내역</button>
				<button type="submit" class="detail" value="${dto.hostenter_number}" name="my_wish_hostenter_number">삭제</button>	
			</div>	
	
		</form>	
		</c:forEach>
		</div>
		
		<div class="wish_cancel">
			<input class="wish_cancel2" type="button" value="취소"
			onclick="location.href='/mypage'">
		</div>
	</div>
</div>


