<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<link rel="stylesheet" href="css/admin/ad_member.css">

	<hr>
	
	<div class="ad_wrap">
        <div class="ad_aside">
            <!-- <div class="ad_asidetb"> -->
                <a href="">
                    <li class="ad_asideli" onclick="location.href='/ad_member'" style="cursor:pointer">회원정보관리</li>
                </a>

                <a href="">
                    <li class="ad_asideli" onclick="location.href='/ad_host'" style="cursor:pointer">호스트정보 관리</li>
                </a>

                <a href="">
                    <li class="ad_asideli" onclick="location.href='/ad_one2one'" style="cursor:pointer">1:1문의 관리</li>
                </a>

                <a href="">
                    <li class="ad_asideli" onclick="location.href='/ad_notice'" style="cursor:pointer">공지사항 관리</li>
                </a>

                <a href="">
                    <li class="ad_asideli" onclick="location.href='/ad_FAQ'" style="cursor:pointer">도움말 관리</li>
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
				<div class="search_box">
				
				<div>
				
					<ul class="search_box_ul">
						<li>
							<p style="min-width: 20%;">검색항목</p>
							<select>
								<option value="name">이름</option>
								<option value="rnum">예약번호</option>
								<option value="phone">전화번호</option>
								<option value="email">이메일</option>
						</select> &nbsp;&nbsp;
						<input type="text" name="search_contents"
							id="search_contents" style="width: 100%;">

						</li>
					</ul>
					<div class="search_btn">
						<button>검색</button>
					</div>
					
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