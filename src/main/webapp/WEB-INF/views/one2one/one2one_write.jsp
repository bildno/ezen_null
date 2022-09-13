<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<link rel="stylesheet" href="css/one2one/one2one_write.css">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">

<div class="container">
	<h1 id="one2one_write">1:1 문의하기</h1>
	<hr />

	<div class="o2owrite_tb">
		<table>
			<tr>
				<th>문의 유형</th>
				<td><select name="type1" id="type1">
						<option value="1" disabled selected>선택해주세요</option>
						<option value="2">dd</option>
						<option value="3">dd</option>
						<option value="4">dd</option>
				</select> <select name="type2" id="type2">
						<option value="1" disabled selected>선택해주세요</option>
						<option value="2">dd</option>
						<option value="3">dd</option>
						<option value="4">dd</option>
				</select></td>
			</tr>
			<tr>
				<th>문의 내용</th>
				<td><textarea name="ask" id="ask" rows="15"></textarea></td>
			</tr>
		</table>

		<div class="write">
			<input class="writebtn" type="button" value="문의하기"
				onclick="location.href='/one2one_writeAction'">
		</div>

	</div>
</div>