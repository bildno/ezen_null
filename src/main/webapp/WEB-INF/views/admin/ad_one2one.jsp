<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<link rel="stylesheet" href="css/admin/ad_one2one.css">


<div class="title">
            <h1>1:1 문의 관리</h1>
        </div>
        <hr>
        <div class="list row">

            <div class="asidelist col-12 col-md-4">
                <table>
                    <tr>
                        <td>회원정보 관리</td>
                    </tr>
                    <tr>
                        <td>호스트정보 관리</td>
                    </tr>
                    <tr>
                        <td>1:1문의 관리</td>
                    </tr>
                    <tr>
                        <td>공지사항 관리</td>
                    </tr>
                    <tr>
                        <td>도움말 관리</td>
                    </tr>
                </table>
            </div>

            <div class="sectionlist col-12 col-md-8">
                <h1 id="one2one_write">1:1 문의관리</h1>
                <hr />

                <div class="o2owrite_tb">
                    <table>
                        <tr>
                            <th>문의 내용</th>
                            <td>
                                <textarea name="ask" id="ask" rows="3" style="resize: none;"></textarea>
                            </td>
                        </tr>
                        <tr>
                            <th>답변 내용</th>
                            <td><textarea name="ask" id="ask" rows="15" style="resize: none;"></textarea></td>
                        </tr>
                    </table>

                    <div class="write">
                        <input class="writebtn" type="button" value="문의하기"
                            onclick="location.href='/one2one_writeAction'">
                    </div>
                </div>
            </div>
        </div>
    </div>