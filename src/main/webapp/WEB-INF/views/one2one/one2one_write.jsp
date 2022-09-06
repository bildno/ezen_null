<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>1:1 문의 글 쓰기</title>
<link rel="stylesheet" href="css/one2one/one2one_write.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
</head>
<body>
<div class="container">
<h2>1:1 문의하기</h2>
<hr />
<div class="one2one">
<div class="type">
<div>문의유형</div>
<div class="cols-md-3">
    <select style="margin-left: 10px;" name="type" id="type">
    <option value="1" disabled selected>선택해주세요</option>
    <option value="2">dd</option>
    <option value="3">dd</option>
    <option value="4">dd</option>
</select></div>
<div class="cols-md-3">
    <select style="margin-left: 10px;" name="type" id="type">
    <option value="1" disabled selected>선택해주세요</option>
    <option value="2">dd</option>
    <option value="3">dd</option>
    <option value="4">dd</option>
</select></div>
</div>
<br>
<div class="contents">
<div>문의내용</div>
<textarea style="margin-left: 10px;" name="ask" id="" cols="80" rows="15"></textarea>
</div>
<div class="write"><button style="margin: 15px;">글쓰기</button></div>
</div>
</div>
</body>
</html>