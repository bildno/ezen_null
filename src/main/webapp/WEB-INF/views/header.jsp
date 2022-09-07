<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- 헤더 -->
<style>
	@import url('https://fonts.googleapis.com/css2?family=Black+Han+Sans&display=swap');
    @import url('https://fonts.googleapis.com/css2?family=Do+Hyeon&display=swap');
    @import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;500&display=swap');
</style>
    

<html>
<link rel="stylesheet" href="css/main.css">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.min.js"></script>

<script>

	let num = 1;

    function sideon() {

    if (num == 1) {
    	document.getElementById("sidelist").style.width = "250px";
		document.getElementById("liston").style.backgroundColor = " rgb(238, 238, 238)";
		
		num = 0;
		} else {
		document.getElementById("sidelist").style.width = "0";
		document.getElementById("liston").style.backgroundColor = "white";
		num = 1;
		}
	}

</script>
	
    <div class="header">
        <div class="small_header">
            <h1>
                <a href="#">
                    <img src="/img/로고.JPG" id="logo">
                </a>
            </h1>
            <div class="search" style="margin-top: 5px;">
                <input type="text" id="text">
            </div>
        </div>

        <div id="sidelist" class="sidelist">
            <a href="#">홈</a>
            <a href="/login">고객센터</a>
            <a href="/one2one">one2one</a>
            <a href="#">best 게시글</a>
        </div>
        <button id="liston" class="liston" onclick="sideon()">☰</button>
    </div>

        