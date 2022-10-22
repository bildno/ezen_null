<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<link rel="stylesheet" href="css/admin/ad_notice.css">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

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
		<div class="title">
			<h1 id="ad_notice_h1">공지사항 관리</h1>
		</div>
		<h2 id="ad_notice_h2">
			공지사항 관리 페이지입니다 <img src="/img/service/space_icon.png"
				alt="space_icon" id="space_icon">
		</h2>
		<div class="contents">
		
		<form action="/ad_noticesearch" method="post">
			<div class="search_box">
				<ul class="search_box_ul">
					<li>
						<p style="min-width: 20%;">검색항목</p> 
						<select name="search_type">
							<option value="notice_title">제목</option>
							<option value="notice_content">내용</option>
							<option value="notice_contents_number">클래스번호</option>
						</select> &nbsp;&nbsp; 
						<input type="text" name="search_contents"
						id="search_contents" style="width: 100%;">
					</li>
				</ul>
				<div class="search_btn">
					<button>검색</button>
				</div>
			</div>
		</form>

			<div>
				<p class="txt_primary">
					총 <em>0</em>건이 검색되었습니다.
					<a href="/ad_notice">전체보기</a>
				</p>
				<table class="search_table">
					<tr>
						<th>번호</th>
						<th>제목</th>
						<th>클래스</th>
						<th>작성일시</th>
						<th></th>
					</tr>
				<c:forEach var="dto" items="${notice_list}" varStatus="">
					<tr>
						<td onclick="location.href='/ad_notice_info?notice_number=${ dto.notice_number }'" style="cursor: pointer;">${dto.notice_number}</td>
						<td onclick="location.href='/ad_notice_info?notice_number=${ dto.notice_number }'" style="cursor: pointer;">${dto.notice_title}</td>
						<td onclick="location.href='/ad_notice_info?notice_number=${ dto.notice_number }'" style="cursor: pointer;">${dto.notice_contents_number}</td>
						<td onclick="location.href='/ad_notice_info?notice_number=${ dto.notice_number }'" style="cursor: pointer;">${dto.notice_date}</td>
						<td>
							<button class="btn_ad_notice" 
							onclick="location.href='noticeDelete?num=${dto.notice_number}'">삭제</button>
						</td>
					</tr>
					</c:forEach>
					<tr>
					<td></td><td></td><td></td><td></td>
					<td>
						<input class="ad_btn" type="button" value="작성" onclick="location.href='/ad_notice_write'">
					</td>
				</tr>
				</table>
			</div>
			
			<!-- <div>
			<input type="button" onclick="location.href='/ad_notice_write'" value="글쓰기">
			</div> -->
			
			<div class="container-fluid">
				<div class="row" style="justify-content: center; margin-top: 30px;">
					<ul class="pagination">

						<li class="page-item <c:if test="${ page == 1 }">disabled</c:if>">
							<a class="page-link" href="/ad_notice?page=${page-1}">Previous</a>
						</li>

						<li class="page-item <c:if test="${ page == 1 }">active</c:if>">
							<a class="page-link" href="/ad_notice?page=1">1</a>
						</li>
						<li class="page-item <c:if test="${ page == 2 }">active</c:if>">
							<a class="page-link" href="/ad_notice?page=2">2</a>
						</li>
						<li class="page-item <c:if test="${ page == 3 }">active</c:if>">
							<a class="page-link" href="/ad_notice?page=3">3</a>
						</li>
						<li class="page-item <c:if test="${ page == 4 }">active</c:if>">
							<a class="page-link" href="/ad_notice?page=4">4</a>
						</li>
						<li class="page-item <c:if test="${ page == 5 }">active</c:if>">
							<a class="page-link" href="/ad_notice?page=5">5</a>
						</li>
						<li class="page-item <c:if test="${ page == 5 }">disabled</c:if>">
							<a class="page-link" href="/ad_notice?page=${page+1}">Next</a>
						</li>
					</ul>
				</div>
			</div>
		</div>

	</div>
	<!-- <div class="ad_section">
            <table class="ad_sectiontb" style="width: 100%">
                <tr>
                    <th colspan="2">
                        <h1>1:1문의 관리</h1>
                    </th>
                </tr>
                <tr>
                    <td colspan="2">
                        <hr>
                    </td>
                </tr>
                <tr>
                    <th class="ad_sectionth">문의 내용</th>
                    <td style="width: 600px; height: 200px;">
                        <textarea 
                            style="resize: none; border-radius: 5px; width:100%; height:100%;" disabled>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptates labore in odio aliquam a rem, harum necessitatibus cupiditate. Voluptates tenetur excepturi vitae quasi aliquam accusamus nisi? Ipsa nam minus temporibus?</textarea>
                    </td>
                </tr>
                <tr>
                    <th class="ad_sectionth">답변 내용</th>
                    <td style="width: 600px; height: 400px;">
                        <textarea
                        style="resize: none; border-radius: 5px; width:100%; height:100%;">Lorem ipsum dolor sit amet consectetur adipisicing elit. Quaerat eligendi odit nam autem! Nostrum neque ea dicta quaerat vitae non odit, ullam excepturi impedit, consequuntur laboriosam ratione amet molestias. Omnis!Lorem ipsum dolor sit amet consectetur adipisicing elit. Quaerat eligendi odit nam autem! Nostrum neque ea dicta quaerat vitae non odit, ullam excepturi impedit, consequuntur laboriosam ratione amet molestias. Omnis!Lorem ipsum dolor sit amet consectetur adipisicing elit. Quaerat eligendi odit nam autem! Nostrum neque ea dicta quaerat vitae non odit, ullam excepturi impedit, consequuntur laboriosam ratione amet molestias. Omnis!</textarea>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td class="ad_btn_td">
                        <input class="ad_btn" type="button" value="답변하기" onclick="location.href='/one2one_writeAction'">
                    </td>
                </tr>
            </table>
        </div> -->

</div>