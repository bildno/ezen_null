<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<link rel="stylesheet" href="css/host/reserve_host.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js" integrity="sha512-uto9mlQzrs59VwILcLiRYeLKPPbS/bT71da/OEBYEwcdNUk8jYIy+D176RYoop1Da+f9mvkYrmj5MCLZWEtQuA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.css" integrity="sha512-aOG0c6nPNzGk+5zjwyJaoRUgCdOrfSDhmMID2u4+OIslr0GjpLKo7Xm0Ao3xmpM4T8AmIouRkqwj1nrdVsLKEQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<title>예약 내역관리</title>
	<div class="container">
		<h1 id="space_host_h1">예약관리 페이지</h1>
		<h2 id="space_host_h2">
			호스트의 예약 관리 페이지입니다 <img src="/img/service/space_icon.png"
			alt="space_icon" id="space_icon">
		</h2>
		<div class="contents">
			<div class="search_box">
				<ul class="search_box_ul">
					<li>
						<p>예약기간</p> <input type="text" id="datepicker"> <script>
							$(function() {
								//input을 datepicker로 선언
								$("#datepicker")
										.datepicker(
												{
													dateFormat : 'yy-mm-dd' //Input Display Format 변경
													,
													showOtherMonths : true //빈 공간에 현재월의 앞뒤월의 날짜를 표시
													,
													showMonthAfterYear : true //년도 먼저 나오고, 뒤에 월 표시
													,
													changeYear : true //콤보박스에서 년 선택 가능
													,
													changeMonth : true //콤보박스에서 월 선택 가능                
													,
													showOn : "both" //button:버튼을 표시하고,버튼을 눌러야만 달력 표시 ^ both:버튼을 표시하고,버튼을 누르거나 input을 클릭하면 달력 표시  
													,
													buttonImage : "http://jqueryui.com/resources/demos/datepicker/images/calendar.gif" //버튼 이미지 경로
													,
													buttonImageOnly : true //기본 버튼의 회색 부분을 없애고, 이미지만 보이게 함
													,
													buttonText : "선택" //버튼에 마우스 갖다 댔을 때 표시되는 텍스트                
													,
													yearSuffix : "년" //달력의 년도 부분 뒤에 붙는 텍스트
													,
													monthNamesShort : [ '1',
															'2', '3', '4', '5',
															'6', '7', '8', '9',
															'10', '11', '12' ] //달력의 월 부분 텍스트
													,
													monthNames : [ '1월', '2월',
															'3월', '4월', '5월',
															'6월', '7월', '8월',
															'9월', '10월', '11월',
															'12월' ] //달력의 월 부분 Tooltip 텍스트
													,
													dayNamesMin : [ '일', '월',
															'화', '수', '목', '금',
															'토' ] //달력의 요일 부분 텍스트
													,
													dayNames : [ '일요일', '월요일',
															'화요일', '수요일',
															'목요일', '금요일', '토요일' ] //달력의 요일 부분 Tooltip 텍스트
													,
													minDate : "-1M" //최소 선택일자(-1D:하루전, -1M:한달전, -1Y:일년전)
													,
													maxDate : "+1M" //최대 선택일자(+1D:하루후, -1M:한달후, -1Y:일년후)                
												});
								//초기값을 오늘 날짜로 설정
								$('#datepicker').datepicker('setDate', 'today'); //(-1D:하루전, -1M:한달전, -1Y:일년전), (+1D:하루후, -1M:한달후, -1Y:일년후)            
							});
						</script>
						&nbsp&nbsp~&nbsp&nbsp
						<input type="text" id="datepicker2"> <script>
							$(function() {
								//input을 datepicker로 선언
								$("#datepicker2")
										.datepicker(
												{
													dateFormat : 'yy-mm-dd' //Input Display Format 변경
													,
													showOtherMonths : true //빈 공간에 현재월의 앞뒤월의 날짜를 표시
													,
													showMonthAfterYear : true //년도 먼저 나오고, 뒤에 월 표시
													,
													changeYear : true //콤보박스에서 년 선택 가능
													,
													changeMonth : true //콤보박스에서 월 선택 가능                
													,
													showOn : "both" //button:버튼을 표시하고,버튼을 눌러야만 달력 표시 ^ both:버튼을 표시하고,버튼을 누르거나 input을 클릭하면 달력 표시  
													,
													buttonImage : "http://jqueryui.com/resources/demos/datepicker/images/calendar.gif" //버튼 이미지 경로
													,
													buttonImageOnly : true //기본 버튼의 회색 부분을 없애고, 이미지만 보이게 함
													,
													buttonText : "선택" //버튼에 마우스 갖다 댔을 때 표시되는 텍스트                
													,
													yearSuffix : "년" //달력의 년도 부분 뒤에 붙는 텍스트
													,
													monthNamesShort : [ '1',
															'2', '3', '4', '5',
															'6', '7', '8', '9',
															'10', '11', '12' ] //달력의 월 부분 텍스트
													,
													monthNames : [ '1월', '2월',
															'3월', '4월', '5월',
															'6월', '7월', '8월',
															'9월', '10월', '11월',
															'12월' ] //달력의 월 부분 Tooltip 텍스트
													,
													dayNamesMin : [ '일', '월',
															'화', '수', '목', '금',
															'토' ] //달력의 요일 부분 텍스트
													,
													dayNames : [ '일요일', '월요일',
															'화요일', '수요일',
															'목요일', '금요일', '토요일' ] //달력의 요일 부분 Tooltip 텍스트
													,
													minDate : "-1M" //최소 선택일자(-1D:하루전, -1M:한달전, -1Y:일년전)
													,
													maxDate : "+1M" //최대 선택일자(+1D:하루후, -1M:한달후, -1Y:일년후)                
												});

								//초기값을 오늘 날짜로 설정
								$('#datepicker').datepicker('setDate', 'today'); //(-1D:하루전, -1M:한달전, -1Y:일년전), (+1D:하루후, -1M:한달후, -1Y:일년후)            
							});
						</script>
					</li>
					<li>
						<p>검색항목</p> <select>
							<option value="name">이름</option>
							<option value="rnum">예약번호</option>
							<option value="phone">전화번호</option>
							<option value="email">이메일</option>
					</select> <input type="text" name="search_contents" id="search_contents">
					</li>
					<li>
						<p>예약상태</p> <label><input type="checkbox">전체</label> <label><input
							type="checkbox">예약완료</label> <label><input
							type="checkbox">예약대기</label> <label><input
							type="checkbox">예약취소</label>
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
					<th>예약번호</th>
					<th>예약자</th>
					<th>휴대폰</th>
					<th>예약일시</th>
					<th>처리현황</th>
					<th>관리</th>
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