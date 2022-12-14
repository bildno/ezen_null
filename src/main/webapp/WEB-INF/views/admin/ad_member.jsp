<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet" href="css/admin/ad_member.css">
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>


	<div class="ad_wrap">
        <div class="ad_aside">
            <!-- <div class="ad_asidetb"> -->
                <a href="/ad_member">
                    <li class="ad_asideli" style="cursor:pointer">회원정보관리</li>
                </a>

                <a href="/ad_host">
                    <li class="ad_asideli" style="cursor:pointer">호스트정보 관리</li>
                </a>

                <a href="/ad_one2one">
                    <li class="ad_asideli" style="cursor:pointer">1:1문의 관리</li>
                </a>

                <a href="/ad_notice">
                    <li class="ad_asideli" style="cursor:pointer">공지사항 관리</li>
                </a>

                <a href="/ad_FAQ">
                    <li class="ad_asideli" style="cursor:pointer">도움말 관리</li>
                </a>
            <!-- </div> -->
        </div>
        <div class="sectionlist">
		
			<h1 id="space_host_h1">회원정보관리</h1>
			<h2 id="space_host_h2">
				회원정보관리페이지입니다. <img src="/img/service/space_icon.png"
					alt="space_icon" id="space_icon">
			</h2>
			<div class="contents">
			
			<form action="ad_member" method="post">
				<div class="search_box">
				<div>
					<ul class="search_box_ul">
						<li>
							<p style="min-width: 20%;">검색항목</p>
							<select name="search_type">
								<option value="member_name">이름</option>
								<option value="member_id">아이디</option>
								<option value="member_phone">전화번호</option>
								<option value="member_email">이메일</option>
								<option value="member_gender">성별</option>
								<option value="member_date">가입일</option>
						</select> &nbsp;&nbsp;
						<input type="text" name="search_contents"
							id="search_contents" style="width: 100%;">
						</li>
					</ul>
					<div class="search_btn">
						<button type="submit">검색</button>
					</div>
				</div>
				</div>
			</form>

				<div>
					<p class="txt_primary">
						총 <em>0</em>건이 검색되었습니다.
						<a href="/ad_member">전체보기</a>
					</p>
					<table class="search_table">
						<tr>
							<th>아이디</th>
							<th>비밀번호</th>
							<th>이름</th>
							<th>이메일</th>
							<th>전화번호</th>
							<th>성별</th>
							<th>가입일</th>
						</tr>
						<c:forEach var="dto" items="${ad_member_page}" varStatus="">
						<tr>
							<td>${ dto.member_id }</td>
							<td>${ dto.member_pw }</td>
							<td>${ dto.member_name }</td>
							<td>${ dto.member_email }</td>
							<td>${ dto.member_phone }</td>
							<td>${ dto.member_gender }</td>
							<td>${ dto.member_joindate }</td>
						</tr>
						
						</c:forEach>
					</table>
				</div>
				<div class="container-fluid">
				<div class="row" style="justify-content: center; margin-top: 30px;">
					<ul class="pagination">

						<li class="page-item <c:if test="${ page == 1 }">disabled</c:if>">
							<a class="page-link" href="/ad_member?page=${page-1}">Previous</a>
						</li>

						<li class="page-item <c:if test="${ page == 1 }">active</c:if>">
							<a class="page-link" href="/ad_member?page=1">1</a>
						</li>
						<li class="page-item <c:if test="${ page == 2 }">active</c:if>">
							<a class="page-link" href="/ad_member?page=2">2</a>
						</li>
						<li class="page-item <c:if test="${ page == 3 }">active</c:if>">
							<a class="page-link" href="/ad_member?page=3">3</a>
						</li>
						<li class="page-item <c:if test="${ page == 4 }">active</c:if>">
							<a class="page-link" href="/ad_member?page=4">4</a>
						</li>
						<li class="page-item <c:if test="${ page == 5 }">active</c:if>">
							<a class="page-link" href="/ad_member?page=5">5</a>
						</li>
						<li class="page-item <c:if test="${ page == 5 }">disabled</c:if>">
							<a class="page-link" href="/ad_member?page=${page+1}">Next</a>
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