<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<link rel="stylesheet" href="css/admin/ad_member.css">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<div class="ad_wrap">
	<script>
		function submit2(frm) {
			frm.action = '/ad_one2oneanswer_update';
			frm.submit();
			return true;
		}
	</script>

	<div class="sectionlist">

		<h1 id="space_host_h1">1 : 1 문의</h1>
		<h2 id="space_host_h2">
			1 : 1 문의관리페이지입니다. <img src="/img/service/space_icon.png"
				alt="space_icon" id="space_icon">
		</h2>
		<div class="ad_section">
			<table class="ad_sectiontb" align="center">
				<c:forEach var="dto" items="${ ad_one2one_answer }"
					varStatus="status">

					<tr>
						<td colspan="2">
							<hr>
						</td>
					</tr>
					<tr>
						<th class="ad_sectionth">문의 제목</th>
						<td><textarea
								style="resize: none; border-radius: 5px; width: 100%; height: 30px;"
								disabled>${dto.one2one_title}</textarea></td>
					</tr>
					<tr>
						<th class="ad_sectionth">문의 내용</th>
						<td style="width: 93%; height: 200px;"><textarea
								style="resize: none; border-radius: 5px; width: 100%; height: 100%;"
								disabled>${dto.one2one_content}</textarea></td>
					</tr>
					<form method="post" action="/one2one_answer_write">

							<input type="hidden" value="${dto.one2one_number}"
								name="one2one_number"> <input type="hidden"
								value="${dto.one2one_member_id}" name="one2one_member_id">
							<tr>
								<th class="ad_sectionth">답변 내용</th>
								<td style="width: 93%; height: 400px;"><textarea
										name="one2oneanswer_content"
										style="resize: none; border-radius: 5px; width: 100%; height: 100%;">${ad_one2oneanswer_list[status.index].one2oneanswer_content }</textarea>
									<input type="hidden"
									value="${ad_one2oneanswer_list[status.index].one2oneanswer_one2one_number}"
									name="one2oneanswer_one2one_number"></td>
							</tr>
							<tr>
								<td></td>
								<td class="ad_btn_td"><input class="ad_btn" type="submit"
									value="답변하기">
									<input class="ad_btn_revise" type="button" value="수정하기"
							onclick='return submit2(this.form);'></td>
							</tr>
					</form>
				</c:forEach>
			</table>

		</div>

	</div>


</div>