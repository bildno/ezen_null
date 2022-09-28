<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<link rel="stylesheet" href="/css/contents/community.css">


<div class="container">
	<c:forEach var="dto" items="${ contentsload }">
		<h1>${ dto.contents_title }</h1>
		<h2>
			${ dto.contents_content }<img src="/img/service/space_icon.png"
				alt="space_icon" id="space_icon">
		</h2>
			
		<hr>
</c:forEach>
	<div class="aaaa">
		<button class="spacelistbtn" onclick="location.href='/spacerent'">더보기</button>
	</div>

	<div class="space_list">
		<div class="row">
			<div class="community1 col-md-4"
				onclick="location.href='/space_info'" id="communi1">
				<a href="#"> <img class="community1-img1" src="img/host/cat.png"
					alt="contents1">
					<div name="membername" id="membername">
						<h3 id="comh3">고산 gym</h3>
					</div>
				</a>
			</div>
			<div class="community1 col-md-4" id="communi1">
				<a href="#"> <img class="community1-img1" src="img/host/cat.png"
					alt="contents1" id="communi1">
					<div name="membername" id="membername">
						<h3 id="comh3">민락 요가원</h3>
					</div>
				</a>
			</div>
			<div class="community1 col-md-4" id="communi1">
				<a href="#"> <img class="community1-img1" src="img/host/cat.png"
					alt="contents1">
					<div name="membername" id="membername">
						<h3 id="comh3">양주 댄스연습실</h3>
					</div>
				</a>
			</div>
		</div>
	</div>
	<hr>

	<div id="selectbox">
		<input type="text" placeholder="키워드"> <input type="text"
			placeholder="인원">
		<button>검색</button>
	</div>


	<!-- <div class="sectioncomm"> -->
	<div class="section22">


		<div class="con22">
			<table>
				<tr>
					<th style="width: 5%;"><span>번호</span></th>
					<th style="width: 70%;">게시글 제목</th>
					<th style="width: 10%;"><span>작성자</span></th>
					<th style="width: 10%;"><span>작성일</span></th>
					<th style="width: 5%;"><span>조회수</span></th>
				</tr>

				<c:forEach var="dto" items="${ communitylist }">
					<tr>
						<td><span>${ dto.community_number }</span></td>
						<td><input type="text" name="con_text" id="con_text"
							value="${ dto.community_title }"
							onclick="location.href='community_info?community_number=${dto.community_number}'" readonly></td>
						<td><span>${ dto.community_member_name }</span></td>
						<td><span><fmt:formatDate
									value="${ dto.community_date }" pattern="yyyy-MM-dd" /></span></td>
						<td><span>${ dto.community_hit }</span></td>
					</tr>
				</c:forEach>
			</table>
		</div>

		<%
		String member_id = (String) session.getAttribute("member_id");
		if(member_id != null) {
		%>
		<div id=Btn_write>
			<input type="button" id="btn_write" value="글쓰기" onclick="location.href='/community_write'">
		</div>
		<%
		} else{
		%>
			
		<%
		}
		%>
	<c:forEach var="dto" items="${ contentsload }">
	
	<div class="container-fluid">
		<div class="row" style="justify-content: center; margin-top:30px;">
		  <ul class="pagination">
		    
		    <li class="page-item <c:if test="${ page_commu == 1 }">disabled</c:if>">
		    	<a class="page-link" href="/community?contents_number=${dto.contents_number}&page_commu=${page_commu-1}">Previous</a>
		    </li>
		    
		    <li class="page-item <c:if test="${ page_commu == 1 }">active</c:if>">
		    	<a class="page-link" href="/community?contents_number=${dto.contents_number}&page_commu=1">1</a>
		    </li>
		    <li class="page-item <c:if test="${ page_commu == 2 }">active</c:if>">
		    	<a class="page-link" href="/community?contents_number=${dto.contents_number}&page_commu=2">2</a>
		    </li>
		    <li class="page-item <c:if test="${ page_commu == 3 }">active</c:if>">
		    	<a class="page-link" href="/community?contents_number=${dto.contents_number}&page_commu=3">3</a>
		    </li>
		    <li class="page-item <c:if test="${ page_commu == 4 }">active</c:if>">
		    	<a class="page-link" href="/community?contents_number=${dto.contents_number}&page_commu=4">4</a>
		    </li>
		    <li class="page-item <c:if test="${ page_commu == 5 }">active</c:if>">
		    	<a class="page-link" href="/community?contents_number=${dto.contents_number}&page_commu=5">5</a>
		    </li>
		    <li class="page-item <c:if test="${ page_commu == 5 }">disabled</c:if>">
		    	<a class="page-link" href="/community?contents_number=${dto.contents_number}&page_commu=${page_commu+1}">Next</a>
		    </li>
		  </ul>
		</div> 
	</div>
	</c:forEach>
	</div>

	
	

</div>
<!-- container -->
<script>
	// 웹브라우저 back키 누를 때, 페이지 재로딩
	window.onpageshow = function(event) {
		if (event.persisted) {
			document.location.reload();
		}
	}
</script>
