<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<link rel="stylesheet" href="/css/contents/community_info.css">

<div class="container">
	<c:forEach var="dtowo" items="${ community_contents}">
	<h1>컨텐츠 상세 페이지</h1>
	<h2>
		커뮤니티 정보를 확인하세요 <img src="/img/service/space_icon.png" alt="space_icon"
			id="space_icon">
	</h2>
	<hr>
	
	
	<div class="main">
		<div class="asidecomm">
			<div class="section11"  >
				<c:forEach var="space_dto" items="${space_top_hit }">
				<div class="con11" onclick="location.href='/space_info?hostenter_number=${space_dto.hostenter_number}&hostenter_name=${space_dto.hostenter_name }'">
					<a href="#"> <img class="com-img1" src="${space_dto.hostenter_title_img }"
						alt="contents1" id="cominfo" height="150px">
						<div name="membername" id="membername">
                        	<h3 id="comh3">
                           ${space_dto.hostenter_name }
                            </h3>
						</div>
					</a>
				</div>
				</c:forEach>
			</div>
		</div>

		<div class="sectioncomm">
		
		
		<form action="community_infoAction" method="post">
			<div class="section22">
		
				<div class="con22" style="padding: 40px 40px 0 40px;">
					
					<!-- 게시글 보기 -->
					<input name="communty_number" type="hidden" value="${dtowo.community_number}">
					<div name ="com_info" id="com_info">

					<span>🌏ID : </span>
						${dtowo.community_member_id}
					</div>
					<div name="comm_info" class="contents"  id="comm_info" 
						style="resize: none; width: 100%; height: 300px">
						${dtowo.community_content}
					</div>		
					
					
					<!-- 댓글보기 -->
					<div>
					<c:forEach var="dtowe" items="${replyView}">
						<div id="repl">
							<span class="reple_span">
							 ⦁ 
							</span>
							<span class="reple_span">
							${dtowe.reply_member_id}
							</span>
							<span class="reple_span">
								님
							</span>
							<span class="content_span">
							${dtowe.reply_content}
							</span>
						</div>
						<hr />
					</c:forEach>	
					</div>
					
					<input type="hidden" value="${dtowo.community_contents_number}" name="contents_number">
					</input>
					
					<!-- 댓글 달기 -->
					<div>		
					<input type="hidden"  name="reply_idx" />
						<textarea name="commu_info" id="comm_info" cols="90" rows="2"
							style="resize: none;" class="com_info2"></textarea>
							<%
							String member_id = (String) session.getAttribute("member_id");
							if(member_id != null) {
							%>
								<button id="reple_btn" style="float: right;">답글달기</button>
							<%
							} else {		
							%>
							
							<% 
							}
							%>
							
					</div>				
				</div>
				
			</div>
		</form>
		
		
		</div>
	</div>
	<button id="list_btn" type="button" style="float: right;" onclick="location.href='/community?contents_number=${dtowo.community_contents_number}'" >리스트</button>
	</c:forEach>
</div>
<!-- container -->
