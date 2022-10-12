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
	
	<div class="w_contents">
		<div class="contents">
		<c:forEach var="dto" items="${wish_list}">
		<form action="/zzim_delete">
			<div class="wish">
				<input type="text" value="${dto.hostenter_name}" readonly>
				<button class="detail" type="button" onclick="return submit2(this.form)">세부내역</button>
				<button type="submit" class="detail" value="${dto.hostenter_number}" name="my_wish_hostenter_number">삭제</button>	
			</div>
			
			<!-- <div class="wish">
				<input type="text" value="찜내역2" readonly>
				<button class="detail">세부내역</button>
			</div>
			<div class="wish">
				<input type="text" value="찜내역3" readonly>
				<button class="detail">세부내역</button>
			</div>
			<div class="wish">
				<input type="text" value="찜내역4" readonly>
				<button class="detail">세부내역</button>
			</div>
			<div class="wish5">
				<input type="text" value="찜내역5" readonly>
				<button class="detail">세부내역</button>
			</div> -->
		</form>	
		</c:forEach>
		</div>
		
		
		<div class="wish_cancel">
			<input class="wish_cancel2" type="button" value="취소"
			onclick="location.href='/mypage'">
		</div>
	</div>
</div>

<script> 
  function submit2(frm) { 
    frm.action=''; 
    frm.submit(); 
    return true; 
  } 
</script> 
