<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

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
						alt="contents1">
						<div name="membername">
							홍<br>진<br>웅
						</div>
					</a>
				</div>
				<div class="con11">
					<a href="#"> <img class="con-img1" src="img/host/cat.png"
						alt="contents1">
						<div name="membername">
							홍<br>진<br>웅
						</div>
					</a>
				</div>
				<div class="con11">
					<a href="#"> <img class="con-img1" src="img/host/cat.png"
						alt="contents1">
						<div name="membername">
							홍<br>진<br>웅
						</div>
					</a>
				</div>
			</div>
		</div>

		<div class="sectioncomm">
			<div class="section22">
				<div class="con22" style="padding: 40px 40px 0 40px;">
					<textarea name="comm_info" class="contents" readonly="readonly" id="comm_info" cols="90" rows="10"
						style="resize: none; width: 100%;">게시글 내용</textarea>
					<hr>
					<div>
						<div id="reple">
							asdas
						</div>
						<div id="reple">
							asdas
						</div>
						<div id="reple">
							asdas
						</div>
					</div>
					<div >
						<textarea name="comm_info" id="comm_info" cols="90" rows="2"
							style="resize: none;">게시글 댓글</textarea>
							<button id="reple_btn" style="float: right;">답글달기</button> 
					</div>						
				</div>
			</div>
		</div>
	</div>
	<button id="list_btn" type="submit" style="float: right;" onclick="location.href='/community'">리스트</button>
</div>
<!-- container -->
