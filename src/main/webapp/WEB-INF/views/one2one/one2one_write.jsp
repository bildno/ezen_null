<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<link rel="stylesheet" href="css/one2one/one2one_write.css">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">

<div class="container">
	<h1 id="one2one_write">1:1 문의하기</h1>
	<hr />

	<div class="o2owrite_tb">
	<form method="post" action="/one2one_writeAction">
		<table>
			<tr>
				<th>문의 제목</th>
				<td><input id="ask" type="text" placeholder="문의 제목을 입력하세요" style="width:99%" name="one2one_title"></td>
			</tr>
			<tr>
				<th>문의 내용</th>
				<td><textarea id="ask" rows="15"
						style="resize: none;" name="one2one_content"></textarea></td>
			</tr>
		</table>

		<div class="write">
			<input class="writebtn" type="submit" value="문의하기">
			<input class="writebtn" type="button" value="취소"
				onclick="location.href='/one2one'">
		</div>
	</form>
	</div>
</div>