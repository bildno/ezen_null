    <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!-- 헤더 -->
<!DOCTYPE html>
<html lang="en">
<head>
<style>
	@import url('https://fonts.googleapis.com/css2?family=Black+Han+Sans&display=swap');
	@import url('https://fonts.googleapis.com/css2?family=Do+Hyeon&display=swap');
	@import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;500&display=swap');
</style>
<link rel="stylesheet" href="css/main.css">
<!-- <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.min.js">
</script> -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.min.js"></script>
        <script>
            let num = 1;

            function sideon() {

                if (num == 1) {
                    document.getElementById("sidelist").style.width = "300px";
                    document.getElementById("liston").style.backgroundColor = " rgb(238, 238, 238)";
                    num = 0;
                } else {
                    document.getElementById("sidelist").style.width = "0";
                    document.getElementById("liston").style.backgroundColor = "white";
                    num = 1;
                }
            }

            $(function(){
                // 스크롤 시 header fade-in
                $(document).on('scroll', function(){
                    if($(window).scrollTop() > 100){
                        $(".small_header").removeClass("deactive");
                   
                        $(".small_header").addClass("active");
                      
                    }else{
                        $(".small_header").removeClass("active");
                       
                    }
                })

            });
        </script>

        
</head>
<body>
    <div class="header">
        <div class="small_header  deactive">
            <h1>
                <a href="/main">
                    <img src="/img/로고 진짜최종 완성본.png" id="logo">
                </a>
            </h1>
            <div class="search" style="margin-top: 15px;">
                <input type="text" id="text">
            </div>
            
            
        <div id="sidelist" class="sidelist" >
        
        <a href="/login"><img src="img/member/login.png" alt="" style="width: 20px" /></a>
        <a href="/mypage">마이페이지</a>
            <a href="main">홈</a>
            <a href="/service">고객센터</a>
            <a href="one2one">one2one</a>
            <a href="#">best 게시글</a>
        </div>
        <img  class="liston" src="/img/sidelisticon.png" alt="sidelisticon" id="sidelisticon" onclick="sideon()" />
        <button id="liston" class="liston" onclick="sideon()" style="background-color: black">
        	
        </button>
    </div>
        </div>

      
