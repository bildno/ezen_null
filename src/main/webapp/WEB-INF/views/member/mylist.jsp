<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<title>페이지 제목</title>

<link rel="stylesheet" href="css/member/mylist.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">


<div class="container">
    <h1 class="mylist">나의 활동</h1>
    <h2 id="mylist_exp">
		나의 활동을 확인해주세요
		<img src="/img/service/space_icon.png" alt="space_icon"id="space_icon">
	</h2>
    <hr>
    <!-- class="contents" 부터 내용 입력 -->
    <div class="myreview">
    		<h4><b>리뷰</b></h4>
    		<hr>
    		<c:forEach var="dto1" items="${myreview_pagelist }">
    		<a href="/myreview">${dto1.review_content }</a><br>
    		</c:forEach>
    </div>
    
    	<div>
		<div class="container-fluid">
		<div class="row" style="justify-content: center; margin-top:30px;">
		  <ul class="pagination">
		    
		    <li class="page-item <c:if test="${ myreview_page == 1 }">disabled</c:if>">
		    	<a class="page-link" href="/mylist?myreview_page=${myreview_page-1}">Previous</a>
		    </li>
		    <li class="page-item <c:if test="${ myreview_page == 1 }">active</c:if>">
		    	<a class="page-link" href="/mylist?myreview_page=1">1</a>
		    </li>
		    <li class="page-item <c:if test="${ myreview_page == 2 }">active</c:if>">
		    	<a class="page-link" href="/mylist?myreview_page=2">2</a>
		    </li>
		    <li class="page-item <c:if test="${ myreview_page == 3 }">active</c:if>">
		    	<a class="page-link" href="/mylist?myreview_page=3">3</a>
		    </li>
		    <li class="page-item <c:if test="${ myreview_page == 4 }">active</c:if>">
		    	<a class="page-link" href="/mylist?myreview_page=4">4</a>
		    </li>
		    <li class="page-item <c:if test="${ myreview_page == 5 }">active</c:if>">
		    	<a class="page-link" href="/mylist?myreview_page=5">5</a>
		    </li>
		    <li class="page-item <c:if test="${ myreview_page == 5 }">disabled</c:if>">
		    	<a class="page-link" href="/mylist?myreview_page=${myreview_page+1}">Next</a>
		    </li>
		  </ul>
		</div> 
	</div>
	</div>
	
	
    <hr>
    <div class="myboard">
    		<h4><b>게시글</b></h4>
    		<hr>
			<c:forEach var="dto2" items="${mycommu_pagelist}">
			<a href="/community_info?community_number=${dto2.community_number}">${dto2.community_title}</a><br>
			</c:forEach>
    </div>
    
    <div>
   
	<div class="container-fluid">
		<div class="row" style="justify-content: center; margin-top:30px;">
		  <ul class="pagination">
		    
		    <li class="page-item <c:if test="${ mycommu_page == 1 }">disabled</c:if>">
		    	<a class="page-link" href="/mylist?mycommu_page=${mycommu_page-1}">Previous</a>
		    </li>
		    <li class="page-item <c:if test="${ mycommu_page == 1 }">active</c:if>">
		    	<a class="page-link" href="/mylist?mycommu_page=1">1</a>
		    </li>
		    <li class="page-item <c:if test="${ mycommu_page == 2 }">active</c:if>">
		    	<a class="page-link" href="/mylist?mycommu_page=2">2</a>
		    </li>
		    <li class="page-item <c:if test="${ mycommu_page == 3 }">active</c:if>">
		    	<a class="page-link" href="/mylist?mycommu_page=3">3</a>
		    </li>
		    <li class="page-item <c:if test="${ mycommu_page == 4 }">active</c:if>">
		    	<a class="page-link" href="/mylist?mycommu_page=4">4</a>
		    </li>
		    <li class="page-item <c:if test="${ mycommu_page == 5 }">active</c:if>">
		    	<a class="page-link" href="/mylist?mycommu_page=5">5</a>
		    </li>
		    <li class="page-item <c:if test="${ mycommu_page == 5 }">disabled</c:if>">
		    	<a class="page-link" href="/mylist?mycommu_page=${mycommu_page+1}">Next</a>
		    </li>
		  </ul>
		</div> 
	</div>
	
    </div>
    
    
    <hr>
      <div class="myboard">
    		<h4><b>댓글</b></h4>
    		<hr>
			<c:forEach var="dto3" items="${myreply_pagelist}">
			<a href="/community_info?community_number=${dto3.reply_communty_number}">${dto3.reply_content}</a><br>
			
			</c:forEach>
    </div>
    
        <div>
		<div class="container-fluid">
		<div class="row" style="justify-content: center; margin-top:30px;">
		  <ul class="pagination">
		    
		    <li class="page-item <c:if test="${ myreply_page == 1 }">disabled</c:if>">
		    	<a class="page-link" href="/mylist?myreply_page=${myreply_page-1}">Previous</a>
		    </li>
		    <li class="page-item <c:if test="${ myreply_page == 1 }">active</c:if>">
		    	<a class="page-link" href="/mylist?myreply_page=1">1</a>
		    </li>
		    <li class="page-item <c:if test="${ myreply_page == 2 }">active</c:if>">
		    	<a class="page-link" href="/mylist?myreply_page=2">2</a>
		    </li>
		    <li class="page-item <c:if test="${ myreply_page == 3 }">active</c:if>">
		    	<a class="page-link" href="/mylist?myreply_page=3">3</a>
		    </li>
		    <li class="page-item <c:if test="${ myreply_page == 4 }">active</c:if>">
		    	<a class="page-link" href="/mylist?myreply_page=4">4</a>
		    </li>
		    <li class="page-item <c:if test="${ myreply_page == 5 }">active</c:if>">
		    	<a class="page-link" href="/mylist?myreply_page=5">5</a>
		    </li>
		    <li class="page-item <c:if test="${ myreply_page == 5 }">disabled</c:if>">
		    	<a class="page-link" href="/mylist?myreply_page=${myreply_page+1}">Next</a>
		    </li>
		  </ul>
		</div> 
	</div>
	</div>
    
    <hr/>
    <div class="enter">
        <input type="button" value="확인" id="review_btn" onclick="location.href='/mypage'"> 
    </div>
    

</div>