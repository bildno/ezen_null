<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<link rel="stylesheet" href="css/admin/ad_one2one_answer.css">

        <hr>   
<div class="ad_wrap">
        <div class="ad_aside">
                <a href="">
                    <li class="ad_asideli">홈</li>
                </a>
                <a href="">
                    <li class="ad_asideli">회원정보관리</li>
                </a>

                <a href="">
                    <li class="ad_asideli">호스트정보 관리</li>
                </a>

                <a href="">
                    <li class="ad_asideli">1:1문의 관리</li>
                </a>

                <a href="">
                    <li class="ad_asideli">공지사항 관리</li>
                </a>

                <a href="">
                    <li class="ad_asideli">도움말 관리</li>
                </a>
        </div>
            <h1 id="ad_one2one_h1">1:1 문의 관리</h1>
        </div>
        <h2 id="ad_one2one_h2">
            1대1 문의 페이지입니다. 
            <img src="/img/service/space_icon.png" alt="space_icon" id="space_icon">
        </h2>
        <div class="container">
            <div class="ad_section">
            <table class="ad_sectiontb">
                <tr>
                    <td colspan="2">
                        <hr>
                    </td>
                </tr>
                <tr>
                    <th class="ad_sectionth">문의 내용</th>
                    <td style="width: 600px; height: 200px;">
                        <textarea 
                            style="resize: none; border-radius: 5px; width:100%; height:100%;" disabled>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptates labore in odio aliquam a rem, harum necessitatibus cupiditate. Voluptates tenetur excepturi vitae quasi aliquam accusamus nisi? Ipsa nam minus temporibus?</textarea>
                    </td>
                </tr>
                <tr>
                    <th class="ad_sectionth">답변 내용</th>
                    <td style="width: 600px; height: 400px;">
                        <textarea
                        style="resize: none; border-radius: 5px; width:100%; height:100%;">Lorem ipsum dolor sit amet consectetur adipisicing elit. Quaerat eligendi odit nam autem! Nostrum neque ea dicta quaerat vitae non odit, ullam excepturi impedit, consequuntur laboriosam ratione amet molestias. Omnis!Lorem ipsum dolor sit amet consectetur adipisicing elit. Quaerat eligendi odit nam autem! Nostrum neque ea dicta quaerat vitae non odit, ullam excepturi impedit, consequuntur laboriosam ratione amet molestias. Omnis!Lorem ipsum dolor sit amet consectetur adipisicing elit. Quaerat eligendi odit nam autem! Nostrum neque ea dicta quaerat vitae non odit, ullam excepturi impedit, consequuntur laboriosam ratione amet molestias. Omnis!</textarea>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td class="ad_btn_td">
                        <input class="ad_btn" type="button" value="답변하기" onclick="location.href='/one2one_writeAction'">
                    </td>
                </tr>
            </table>
        </div>
</div>
