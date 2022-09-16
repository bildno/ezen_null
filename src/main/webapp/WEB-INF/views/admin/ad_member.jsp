<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<link rel="stylesheet" href="css/admin/ad_member.css">

<div class="container">
	<hr>
	
	<div class="list">

		<div class="asidelist">		
			<table>
				<tr>
					<td onclick="location.href='/ad_member'" style="cursor:pointer">회원정보 관리</td>
				</tr>
				<tr>
					<td onclick="location.href='/ad_host'" style="cursor:pointer">호스트정보 관리</td>
				</tr>
				<tr>
					<td onclick="location.href='/ad_one2one'" style="cursor:pointer">1:1문의 관리</td>
				</tr>
				<tr>
					<td onclick="location.href='/ad_notice'" style="cursor:pointer">공지사항 관리</td>
				</tr>
				<tr>
					<td onclick="location.href='/ad_FAQ'" style="cursor:pointer">도움말 관리</td>
				</tr>
			</table>
		</div>

		<div class="sectionlist">
		
			<h1 id="space_host_h1">회원정보관리</h1>
			<h2 id="space_host_h2">
				회원정보관리페이지입니다. <img src="/img/service/space_icon.png"
					alt="space_icon" id="space_icon">
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
						<tr>
							<th>아이디</th>
							<th>비밀번호</th>
							<th>이름</th>
							<th>이메일</th>
							<th>전화번호</th>
							<th>성별</th>
						</tr>
						<tr>
							<td>das</td>
							<td>ads</td>
							<td>das</td>
							<td>ads</td>
							<td>ads</td>
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
</div>