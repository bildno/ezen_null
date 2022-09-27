<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<link rel="stylesheet" href="css/admin/ad_FAQ.css">

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
		<h1 id="space_FAQ_h1">도움말 관리</h1>
		<h2 id="space_FAQ_h2">
			도움말관리페이지입니다. <img src="/img/service/space_icon.png" alt="space_icon"
				id="space_icon">
		</h2>
		<div class="contents">
			<div class="search_box">
				<ul class="search_box_ul">
					<li>
						<p>검색항목</p> <select>
							<option value="title">제목</option>
							<option value="name">작성자</option>
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
						<th>번호</th>
						<th>제목</th>
						<th>작성일시</th>
						<th>?</th>
					</tr>
				<c:forEach var="dto" items="${ faq_list }">
					<tr>
						<td onclick="location.href='/ad_FAQ_update?faq_number=${ dto.faq_number }'" style="cursor: pointer;">${ dto.faq_number }</td>
						<td onclick="location.href='/ad_FAQ_update?faq_number=${ dto.faq_number }'" style="cursor: pointer;">${ dto.faq_title }</td>
						<td onclick="location.href='/ad_FAQ_update?faq_number=${ dto.faq_number }'" style="cursor: pointer;">
						<fmt:formatDate value="${ dto.faq_date }" pattern = "yyyy-MM-dd HH:mm:ss"/></td>
						<td>
							<button class="btn_FAQdel" onclick="location.href='/ad_FAQ_delete?faq_number=${ dto.faq_number }'">삭제</button>
						</td>
					</tr>
				</c:forEach>
				</table>
				<input class="ad_btn" type="button" value="작성" onclick="location.href='/ad_FAQ_write'">
			</div>

			
			<div class="container-fluid">
				<div class="row" style="justify-content: center; margin-top: 30px;">
					<ul class="pagination">

						<li class="page-item <c:if test="${ page == 1 }">disabled</c:if>">
							<a class="page-link" href="/ad_FAQ?page=${page-1}">Previous</a>
						</li>

						<li class="page-item <c:if test="${ page == 1 }">active</c:if>">
							<a class="page-link" href="/ad_FAQ?page=1">1</a>
						</li>
						<li class="page-item <c:if test="${ page == 2 }">active</c:if>">
							<a class="page-link" href="/ad_FAQ?page=2">2</a>
						</li>
						<li class="page-item <c:if test="${ page == 3 }">active</c:if>">
							<a class="page-link" href="/ad_FAQ?page=3">3</a>
						</li>
						<li class="page-item <c:if test="${ page == 4 }">active</c:if>">
							<a class="page-link" href="/ad_FAQ?page=4">4</a>
						</li>
						<li class="page-item <c:if test="${ page == 5 }">active</c:if>">
							<a class="page-link" href="/ad_FAQ?page=5">5</a>
						</li>
						<li class="page-item <c:if test="${ page == 5 }">disabled</c:if>">
							<a class="page-link" href="/ad_FAQ?page=${page+1}">Next</a>
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