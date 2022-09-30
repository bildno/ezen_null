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
    		<c:forEach var="dto1" items="${reviewlist }">
    		<a href="/myreview">${dto1.review_content }</a><br>
    		</c:forEach>
            
	<!-- 페이지네이션 -->
	
            
    </div>
    <hr>
    <div class="myboard">
    		<h4><b>게시글</b></h4>
    		<hr>
			<c:forEach var="dto2" items="${commulist}">
			<a href="/community_info">${dto2.community_title}</a><br>
			</c:forEach>
    </div>
    <hr>
      <div class="myboard">
    		<h4><b>댓글</b></h4>
    		<hr>
			<c:forEach var="dto3" items="${replylist}">
			<a href="/community_info">${dto3.reply_content}</a><br>
			</c:forEach>
    </div>
    <hr />
    <div class="enter">
        <input type="button" value="확인" id="review_btn" onclick="location.href='/mypage'"> 
        <input type="button" value="취소" id="review_btn" onclick="location.href='/mypage'">
    </div>
    

</div>