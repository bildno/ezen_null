<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet" href="css/admin/ad_one2one.css">
<div class="ad_wrap">
	<div class="ad_aside">
		<!-- <div class="ad_asidetb"> -->
		<a href="/ad_member">
			<li class="ad_asideli" style="cursor: pointer">회원정보관리</li>
		</a> <a href="/ad_host">
			<li class="ad_asideli" style="cursor: pointer">호스트정보 관리</li>
		</a> <a href="/ad_one2one">
			<li class="ad_asideli" style="cursor: pointer">1:1문의 관리</li>
		</a> <a href="/ad_notice">
			<li class="ad_asideli" style="cursor: pointer">공지사항 관리</li>
		</a> <a href="/ad_FAQ">
			<li class="ad_asideli" style="cursor: pointer">도움말 관리</li>
		</a>
		<!-- </div> -->
	</div>
	<div class="sectionlist">

		<h1 id="space_host_h1">1:1문의관리</h1>
		<h2 id="space_host_h2">
			회원정보관리페이지입니다. <img src="/img/service/space_icon.png" alt="space_icon"
				id="space_icon">
		</h2>
		<div class="contents">
		
		<form action="/ad_one2one" method="post">
			<div class="search_box">
				<ul class="search_box_ul">
					<li>
						<p style="min-width: 20%;">검색항목</p> 
						<select name="search_type">
							<option value="one2one_member_id">아이디</option>	
							<option value="one2one_title">제목</option>
							<option value="one2one_content">내용</option>
							<option value="one2one_date">작성일</option>
						</select> &nbsp;&nbsp; 
					<input type="text" name="search_contents"
						id="search_contents" style="width: 100%;">
					</li>
				</ul>
				<div class="search_btn">
					<button type="submit">검색</button>
				</div>
			</div>
		</form>

			<div>
			
				<p class="txt_primary">
					총 <em>0</em>건이 검색되었습니다.
					<a href="/ad_one2one">전체보기</a>
				</p>
				<table class="search_table">
					<tr>
						<th>번호</th>
						<th>제목</th>
						<th>내용</th>
						<th>아이디</th>
						<th>작성일시</th>
						<th>관리</th>
					</tr>
			<c:forEach var="dto" items="${one2one_list}">
					<tr>
						<td onclick="location.href='/ad_one2one_answer?one2one_number=${ dto.one2one_number }'" style="cursor: pointer;">${dto.one2one_number}</td>
						<td onclick="location.href='/ad_one2one_answer?one2one_number=${ dto.one2one_number }'" style="cursor: pointer;">${dto.one2one_title}</td>
						<td onclick="location.href='/ad_one2one_answer?one2one_number=${ dto.one2one_number }'" style="cursor: pointer;">${dto.one2one_content}</td>
						<td onclick="location.href='/ad_one2one_answer?one2one_number=${ dto.one2one_number }'" style="cursor: pointer;">${dto.one2one_member_id}</td>
						<td onclick="location.href='/ad_one2one_answer?one2one_number=${ dto.one2one_number }'" style="cursor: pointer;">${dto.one2one_date}</td>
						<td><input class="ad_btn_back" type="button" value="삭제" onclick="location.href='ad_one2oneDelete?num=${dto.one2one_number}'" ></td>
					</tr>
					
			</c:forEach>
				</table>
			</div>
			<div class="container-fluid">
				<div class="row" style="justify-content: center; margin-top: 30px;">
					<ul class="pagination">
						<li class="page-item <c:if test="${ page == 1 }">disabled</c:if>">
							<a class="page-link" href="/ad_one2one?page=${page-1}">Previous</a>
						</li>

						<li class="page-item <c:if test="${ page == 1 }">active</c:if>">
							<a class="page-link" href="/ad_one2one?page=1">1</a>
						</li>
						<li class="page-item <c:if test="${ page == 2 }">active</c:if>">
							<a class="page-link" href="/ad_one2one?page=2">2</a>
						</li>
						<li class="page-item <c:if test="${ page == 3 }">active</c:if>">
							<a class="page-link" href="/ad_one2one?page=3">3</a>
						</li>
						<li class="page-item <c:if test="${ page == 4 }">active</c:if>">
							<a class="page-link" href="/ad_one2one?page=4">4</a>
						</li>
						<li class="page-item <c:if test="${ page == 5 }">active</c:if>">
							<a class="page-link" href="/ad_one2one?page=5">5</a>
						</li>
						<li class="page-item <c:if test="${ page == 5 }">disabled</c:if>">
							<a class="page-link" href="/ad_one2one?page=${page+1}">Next</a>
						</li>
					</ul>
				</div>
			</div>
		</div>

	</div>

</div>