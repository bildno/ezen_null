<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<link rel="stylesheet" href="css/admin/ad_FAQ_write.css">
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

<div class="ad_wrap">
	<!-- <div class="ad_aside">
		<div class="ad_asidetb">
		<a href="/ad_member">
			<li class="ad_asideli" style="cursor: pointer">회원정보관리</li>
		</a> <a href="/ad_host">
			<li class="ad_asideli" style="cursor: pointer">호스트정보 관리</li>
		</a> <a href="/ad_one2one">
			<li class="ad_asideli" style="cursor: pointer">1:1문의 관리</li>
		</a> <a href="/ad_notice">
			<li class="ad_asideli" style="cursor: pointer">공지사항 관리</li>
		</a> <a href="/ad_FAQ">
			<li class="ad_asideli" style="cursor: pointer">도움말 관리</li>
		</a>
		</div>
	</div> -->
	<div class="sectionlist">
	
<form action="/ad_FAQ_writeAction" method="post">
		
			<h1 id="space_host_h1">도움말 관리</h1>
			<h2 id="space_host_h2">
				도움말 관리페이지입니다. <img src="/img/service/space_icon.png"
					alt="space_icon" id="space_icon">
			</h2>

			<div class="ad_section">
				<div class="write_tit">도움말 > 글쓰기</div>
				

				<div class="tit">
					<input type="text" placeholder="제목을 입력하시오." style="width: 100%;" name="faq_title">
				</div>
				<div class="form-group">
					<label for="exampleInputPassword1">Content</label>
					<textarea class="form-control" name="faq_content" rows="3" id="content"></textarea>

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
					<input type="submit" class="ad_btn_write" value="작성">
					<input type="button" class="ad_btn_back" value="뒤로가기" onclick="location.href='/ad_FAQ'">
				</div>
			</div>
	</div>
	</div>

</form>