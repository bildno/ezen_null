<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<title>페이지 제목</title>

<link rel="stylesheet" href="css/member/mylist.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">


<div class="container">

	
	
    <h1 class="mylist">내가 쓴 리뷰/게시글</h1>
    <h2 id="mylist_exp">
		리뷰와 게시글을 확인해주세요
		<img src="/img/service/space_icon.png" alt="space_icon"id="space_icon">
	</h2>
    <hr>
    <!-- class="contents" 부터 내용 입력 -->
    <div class="myreview">
    		<h4><b>리뷰</b></h4>
    		<hr>
            <a href="#">내가 작성한 리뷰1</a><br>
            <a href="#">내가 작성한 리뷰2</a><br>
            <a href="#">내가 작성한 리뷰3</a><br>
            <a href="#">내가 작성한 리뷰4</a>
    </div>
    <hr>
    <div class="myboard">
    		<h4><b>게시글</b></h4>
    		<hr>
            <a href="#">내가 작성한 게시글1</a><br>
            <a href="#">내가 작성한 게시글2</a><br>
            <a href="#">내가 작성한 게시글3</a><br>
            <a href="#">내가 작성한 게시글4</a>
    </div>
    <hr>
    <div class="enter">
        <input type="button" value="확인" id="review_btn"> 
        <input type="button" value="취소" id="review_btn" onclick="location.href='/mypage'">
    </div>
    

</div>
