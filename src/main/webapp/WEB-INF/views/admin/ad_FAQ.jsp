<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link rel="stylesheet" href="css/admin/ad_FAQ.css"> 
<title>도움말관리</title>

	<div class="container">
        <div class="title">
            <h1>도움말 관리</h1>
        </div>
        <hr>
        <div class="list row">

            <div class="asidelist col-12 col-md-4">
                <table>
                    <tr>
                        <td onclick="location.href='/ad_member'" id="asd">회원정보 관리</td>
                    </tr>
                    <tr>
                        <td onclick="location.href='/ad_host'" id="asd">호스트정보 관리</td>
                    </tr>
                    <tr>
                        <td onclick="location.href='/ad_one2one'" id="asd">1:1문의 관리</td>
                    </tr>
                    <tr>
                        <td onclick="location.href='/ad_notice'" id="asd">공지사항 관리</td>
                    </tr>
                    <tr>
                        <td onclick="location.href='/ad_FAQ'" id="asd">도움말 관리</td>
                    </tr>
                </table>
            </div>

            <div class="sectionlist col-12 col-md-8">
                <div class="contents">
                    <div class="search_box">
                        <ul class="search_box_ul">
                            <li>
                                <p>검색항목</p> 
                                <select>
                                    <option value="title">제목</option>
                                    <option value="name">작성자</option>
                                </select> 
                                &nbsp;&nbsp;<input type="text" name="search_contents" id="search_contents">
                            </li>
                            </ul>
                        <div class="search_btn">
                            <button>검색</button>
                        </div>
                    </div>
            
                    <div>
                        <p class="txt_primary">
                            총 <em>0</em>건이 검색되었습니다.
                        </p>
                        <table class="search_table">
                            <tr>
                                <th>번호</th>
                                <th>제목</th>
                                <th>작성자</th>
                                <th>작성일시</th>
                                <th>수정/삭제</th>
                            </tr>
                            <tr>
                                <td>1</td>
                                <td>효율적인 이용방법 3가지</td>
                                <td>홀깅동</td>
                                <td>2022-09-15</td>
                                <td>
                                    <button class="btn_rev">수정</button>
                                    <button class="btn_del">삭제</button>
                                </td>
                            </tr>
                        </table>
                    </div>
                    <div class="pagenavi">
                        <nav aria-label="Page navigation example community">
                            <ul class="pagination">
                                <li class="page-item"><a class="page-link" href="#"
                                    aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
                                </a></li>
                                <li class="page-item"><a class="page-link" href="#">1</a></li>
                                <li class="page-item"><a class="page-link" href="#">2</a></li>
                                <li class="page-item"><a class="page-link" href="#">3</a></li>
                                <li class="page-item"><a class="page-link" href="#">4</a></li>
                                <li class="page-item"><a class="page-link" href="#">5</a></li>
                                <li class="page-item"><a class="page-link" href="#"
                                    aria-label="Next"> <span aria-hidden="true">&raquo;</span>
                                </a></li>
                            </ul>
                        </nav>
                    </div>
                </div>

            </div>
        </div>
    </div>
</body>
</html>