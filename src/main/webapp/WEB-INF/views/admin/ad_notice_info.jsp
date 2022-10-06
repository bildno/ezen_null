<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<link rel="stylesheet" href="css/admin/ad_notice_write.css">
<!-- include libraries(jQuery, bootstrap) -->
<link
	href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css"
	rel="stylesheet">
<script
	src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script>
<script
	src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script>

<!-- include summernote css/js-->
<link
	href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.css"
	rel="stylesheet">
<script
	src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.js"></script>
<script>
	$(document).ready(function() {
		$('#summernote').summernote();
	});
</script>
	<c:forEach var="dto" items="${ ad_notice_info }">
<div class="ad_wrap">
		<div class="sectionlist">
			<form action="ad_notice_update" method="post">
				<input type="hidden" value="${ dto.notice_number }"
					name="notice_number">
				<h1 id="space_host_h1">공지사항 관리</h1>
				<h2 id="space_host_h2">
					공지사항 관리페이지입니다. <img src="/img/service/space_icon.png"
						alt="space_icon" id="space_icon">
				</h2>

				<div class="ad_section">
					<div class="write_tit">공지사항 > 글쓰기</div>
					<div class="tit">
						<input name="notice_title" type="text" placeholder="제목을 입력하시오."
							style="width: 100%;" value="${ dto.notice_title }">
					</div>
					<div class="tit">
						<input name="notice_contents_number" type="text"
							placeholder="클래스를 입력하시오." style="width: 100%;"
							value="${ dto.notice_contents_number }">
					</div>
					<div class="form-group">
						<label for="exampleInputPassword1">Content</label>
						<textarea name="notice_content" class="form-control"
							name="notice_content" rows="3" id="content">${ dto.notice_content }</textarea>


						<!-- include summernote-ko-KR -->
						<script src="/summernote/lang/summernote-ko-KR.js"></script>

						<script type="text/javascript">
							$(document).ready(function() {
								//아이디가 content 에 서머노트를 적용 한다.
								$('#content').summernote({
									height : 500,
									lang : 'ko-KR' // default: 'en-US'
								});
							});
						</script>


					</div>
					<div class="ad_btn">
						<input class="ad_btn_write" type="submit" value="수정">
			</form>
			<input class="ad_btn_back" type="button" value="삭제"
				onclick="location.href='noticeDelete?num=${dto.notice_number}'">
		</div>
</div>

</c:forEach>
</div>
</div>