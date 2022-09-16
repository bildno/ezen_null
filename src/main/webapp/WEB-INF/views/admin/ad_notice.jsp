<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<link rel="stylesheet" href="css/admin/ad_notice.css">

<div class="container">
	<hr>
	<div class="list row">

		<div class="asidelist col-12 col-md-4">
			<table>
				<tr>
					<td onclick="location.href='/ad_member'" id="asd">회원정보 관리</td>
				</tr>
				<tr>
					<td onclick="location.href='/ad_host'" id="asd">호스트정보 관리</td>
				</tr>
				<tr>
					<td onclick="location.href='/ad_one2one'" id="asd">1:1문의 관리</td>
				</tr>
				<tr>
					<td onclick="location.href='/ad_notice'" id="asd">공지사항 관리</td>
				</tr>
				<tr>
					<td onclick="location.href='/ad_FAQ'" id="asd">도움말 관리</td>
				</tr>
			</table>
		</div>


		<div class="sectionlist col-12 col-md-8">
			<div class="title">
		<h1 id="ad_notice_h1">공지사항 관리</h1>
	</div>
	<h2 id="ad_notice_h2">
		공지사항 관리 페이지입니다 <img src="/img/service/space_icon.png" alt="space_icon"
			id="space_icon">
	</h2>
			<div class="contents">
				<div class="search_box">
					<ul class="search_box_ul">
						<li>
							<p>검색항목</p> <select>
								<option value="name">이름</option>
								<option value="rnum">예약번호</option>
								<option value="phone">전화번호</option>
								<option value="email">이메일</option>
						</select> &nbsp;&nbsp;<input type="text" name="search_contents"
							id="search_contents">
						</li>
					</ul>
					<div class="search_btn">
						<button>검색</button>
					</div>
				</div>

				<div>
					<p class="txt_primary">
						총 <em>0</em>건이 검색되었습니다.
					</p>
					<table class="search_table">
						<tr id="ad_th">
							<th id="ad_th">번호</th>
							<th id="ad_th">제목</th>
							<th id="ad_th">클래스</th>
							<th id="ad_th">작성일시</th>
							<th id="ad_th">삭제</th>
						</tr>
						<tr>
							<td>1</td>
							<td>공지입니다</td>
							<td>Active class</td>
							<td>2022-09-15</td>
							<td>
								<button class="btn_ad_notice">삭제</button>
							</td>

						</tr>
					</table>
				</div>
				<div class="pagenavi">
					<nav aria-label="Page navigation example community">
						<ul class="pagination">
							<li class="page-item"><a class="page-link" href="#"
								aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
							</a></li>
							<li class="page-item"><a class="page-link" href="#">1</a></li>
							<li class="page-item"><a class="page-link" href="#">2</a></li>
							<li class="page-item"><a class="page-link" href="#">3</a></li>
							<li class="page-item"><a class="page-link" href="#">4</a></li>
							<li class="page-item"><a class="page-link" href="#">5</a></li>
							<li class="page-item"><a class="page-link" href="#"
								aria-label="Next"> <span aria-hidden="true">&raquo;</span>
							</a></li>
						</ul>
					</nav>
				</div>
			</div>

		</div>
	</div>
</div>


