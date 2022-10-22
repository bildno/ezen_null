<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link rel="stylesheet" href="css/contents/community_write.css">
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
<%
	String session_id = (String)session.getAttribute("member_id");

	String contents_number = (String) session.getAttribute("contents_number");
%>

<div class="ad_wrap">

	<div class="sectionlist">

		<div class="ad_section">
		<form method="post" action="/community_writeAction">
			<div class="write_tit">커뮤니티 > 글쓰기</div>
			<div class="tit">
				<input type="text" placeholder="제목을 입력하시오." style="width: 100%;"name="commu_title">
			</div>
			<div class="tit">
				<input type="text" value="${contents_title }" style="width: 100%;">
				<input type="hidden" name="commu_contents_number" value="<%=contents_number %>" />
			</div>
			<div class="tit">
				<input type="text" value="<%=session_id%>"  style="width: 100%;"name="commu_name" readonly="readonly">
			</div>
			<div class="form-group">
				<label for="exampleInputPassword1" >Content</label>
				<textarea class="form-control" name="commu_content" rows="3" id="content"></textarea>

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
			<div class="btn_revise">
			<input class="ad_btn_revise" type="submit" value="작성"
				>
			</div>
		</form>
		</div>


	</div>

</div>