<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<link rel="stylesheet" href="/css/contents/community.css">

<div class="container">
        <h1>컨텐츠 커뮤니티</h1>
        <h2>
            커뮤니티 정보를 확인하세요<img src="/img/service/space_icon.png" alt="space_icon" id="space_icon">
        </h2>
        <hr>

        <div class="aaaa">
            <button class="spacelistbtn" onclick="location.href='/spacerent'">더보기</button>
        </div>

        <div class="space_list">
            <div class="row">
                <div class="community1 col-md-4" onclick="location.href='/space_info'" id="communi1">
                    <a href="#"> <img class="community1-img1" src="img/host/cat.png" alt="contents1">
                        <div name="membername" id="membername">
                        	<h3 id="comh3">
                            고산 진웅gym
                            </h3>
                        </div>
                    </a>
                </div>
                <div class="community1 col-md-4" id="communi1">
                    <a href="#"> 
                    <img class="community1-img1" src="img/host/cat.png" alt="contents1" id="communi1">
                        <div name="membername" id="membername">
                             <h3 id="comh3">
                            민락 단옥 아쉬탕가 요가원
                            </h3>
                        </div>
                    </a>
                </div>
                <div class="community1 col-md-4" id="communi1">
                    <a href="#"> <img class="community1-img1" src="img/host/cat.png" alt="contents1">
                        <div name="membername" id="membername">
                            <h3 id="comh3">
                            양주 진규 갓성비 연습실
                            </h3>
                        </div>
                    </a>
                </div>
            </div>
        </div>
        <hr>

        <div id="selectbox">
            <input type="text" placeholder="키워드">
            <input type="text" placeholder="인원">
            <button>검색</button>
        </div>


        <!-- <div class="sectioncomm"> -->
        <div class="section22">
            <div class="con22" style="padding: 40px;">
                <input type="text" name="con_text" id="con_text" value="게시글 제목1" onclick="location.href='community_info'">
                <input type="text" name="con_text" id="con_text" value="게시글 제목2" onclick="location.href='community_info'">
                <input type="text" name="con_text" id="con_text" value="게시글 제목3" onclick="location.href='community_info'">
                <input type="text" name="con_text" id="con_text" value="게시글 제목4" onclick="location.href='community_info'">
                <input type="text" name="con_text" id="con_text" value="게시글 제목5" onclick="location.href='community_info'">
            </div>
            <div class="pagenavi">
                <nav aria-label="Page navigation example community">
                    <ul class="pagination">
                        <li class="page-item"><a class="page-link" href="#" aria-label="Previous"> <span
                                    aria-hidden="true">&laquo;</span>
                            </a></li>
                        <li class="page-item"><a class="page-link" href="#">1</a></li>
                        <li class="page-item"><a class="page-link" href="#">2</a></li>
                        <li class="page-item"><a class="page-link" href="#">3</a></li>
                        <li class="page-item"><a class="page-link" href="#">4</a></li>
                        <li class="page-item"><a class="page-link" href="#">5</a></li>
                        <li class="page-item"><a class="page-link" href="#" aria-label="Next"> <span
                                    aria-hidden="true">&raquo;</span>
                            </a></li>
                    </ul>
                </nav>
            </div>
        </div>



    </div>
<!-- container -->
