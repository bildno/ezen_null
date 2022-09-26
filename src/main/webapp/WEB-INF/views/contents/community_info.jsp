<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<link rel="stylesheet" href="/css/contents/community_info.css">

<div class="container">
	<h1>컨텐츠 상세 페이지</h1>
	<h2>
		커뮤니티 정보를 확인하세요 <img src="/img/service/space_icon.png" alt="space_icon"
			id="space_icon">
	</h2>
	<hr>
	
	<div class="main">
		<div class="asidecomm">
			<div class="section11">
				<div class="con11">
					<a href="#"> <img class="con-img1" src="img/host/cat.png"
						alt="contents1" id="cominfo">
						<div name="membername" id="membername">
                        	<h3 id="comh3">
                            강남 파티룸
                            </h3>
						</div>
					</a>
				</div>
				<div class="con11">
					<a href="#"> <img class="con-img1" src="img/host/cat.png"
						alt="contents1" id="cominfo">
						<div name="membername" id="membername">
                        	<h3 id="comh3">
                            홍대 루프탑
                            </h3>
						</div>
					</a>
				</div>
				<div class="con11">
					<a href="#"> <img class="con-img1" src="img/host/cat.png"
						alt="contents1" id="cominfo">
						<div name="membername" id="membername">
                        	<h3 id="comh3">
                            건대라운지
                            </h3>
						</div>
					</a>
				</div>
			</div>
		</div>

		<div class="sectioncomm">
		
		
		<form action="community_infoAction" method="post">
			<div class="section22">
				<div class="con22" style="padding: 40px 40px 0 40px;">
					<!-- 게시글 보기 -->
					<c:forEach var="dtowo" items="${ community_contents}">
					<input name="community_number" type="hidden" value="${dtowo.community_number}">
					<textarea name="comm_info" class="contents" readonly="readonly" id="comm_info" cols="90" rows="10"
						style="resize: none; width: 100%;">${dtowo.community_content}</textarea>
					<hr>
					</c:forEach>
					
					<!-- 댓글보기 -->
					<div>
					<c:forEach var="dtowe" items="${replyView}">
						<div id="reple">
							${dtowe.reply_content}
						</div>
					</c:forEach>	
					</div>
					
					<!-- 댓글 달기 -->
					<div>		
					<input type="hidden"  name="reply_idx" />
						<textarea name="commu_info" id="comm_info" cols="90" rows="2"
							style="resize: none;" class="com_info2">게시글 댓글</textarea>
							<button id="reple_btn" style="float: right;">답글달기</button> 
					</div>				
				</div>
			</div>
		</form>
		
		
		</div>
	</div>
	<button id="list_btn" type="submit" style="float: right;" onclick="location.href='/community'">리스트</button>
</div>
<!-- container -->
