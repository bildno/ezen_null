<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<link rel="stylesheet" href="css/member/mycheck.css">

<meta charset='utf-8' />
<!-- 화면 해상도에 따라 글자 크기 대응(모바일 대응) -->
<meta name="viewport"
	content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no">
<!-- jquery CDN -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<!-- fullcalendar CDN -->
<link
	href='https://cdn.jsdelivr.net/npm/fullcalendar@5.8.0/main.min.css'
	rel='stylesheet' />
<script
	src='https://cdn.jsdelivr.net/npm/fullcalendar@5.8.0/main.min.js'></script>
<!-- fullcalendar 언어 CDN -->
<script
	src='https://cdn.jsdelivr.net/npm/fullcalendar@5.8.0/locales-all.min.js'></script>


<!-- calendar 태그 -->
<div id='calendar-wrap'>
	<div id='calendar1'></div>
</div>

<script>
	$(document).ready(function() {

		$(function() {
			// calendar element 취득
			var calendarEl = $('#calendar1')[0];

			// full-calendar 생성하기
			var calendar = new FullCalendar.Calendar(calendarEl, {
				// 해더에 표시할 툴바
				headerToolbar : {
					//left: 'prev,next today',
					//center: 'title',
					right : 'custom1'
				/* dayGridMonth,timeGridWeek,timeGridDay,listWeek 월, 주, 일, 일정목록 추가삭제가능 */
				},
				//initialDate: '2022-10-15', // 초기 날짜 설정 (설정하지 않으면 오늘 날짜가 보인다.)
				locale : 'ko', // 한국어 설정
				//editable: true, // 수정 가능
				//droppable: true,  // 드래그 가능
				// drop: function(arg) { // 드래그 엔 드롭 성공시
				//   // 드래그 박스에서 아이템을 삭제한다.
				//   arg.draggedEl.parentNode.removeChild(arg.draggedEl);
				// },
				customButtons : {
					custom1 : {
						text : '출석확인',
						click : function() {
							//alert('출석확인 클릭');
							idCheckDay();
						}
					}
				}


/* 			events : [
			  {
			    title: '출석',
			    start: '2022-10-01'
			    imageurl:"/img/star.png"
			  }
			  {
			    title: '출석',
			    start: '2022-10-03'
			  }
			] */
				
				
				
			});
			// 캘린더 랜더링
			calendar.render();
		});
		var calendarEl = document.getElementById('calendar1');
		var request= $.ajax({
		url : "/mycheck/event",
		method : "GET",
		//dataType : "json",
		
		data : {
			mycheck_number : "mycheck_number",
			myheck_member_id :"myheck_member_id",
			mycheck_date : "mycheck_date"
		}

	});
	request.done(function(data) {
		var calendar = new FullCalendar.Calendar(calendarEl, {
			//initialView : 'dayGridMonth',
			events : data,
			locale : 'ko',
		headerToolbar: {
		//left: 'prev,next today',
		//center: 'title',
		right: 'custom1'
		// dayGridMonth,timeGridWeek,timeGridDay,listWeek 월, 주, 일, 일정목록 추가삭제가능 */
		},
			customButtons : {
				custom1 : {
					text : '출석완료'
					/* click : function() {
						//alert('출석확인 클릭');
						idCheckDay();
					} */
				}
			}
		});
		calendar.render();
	});
	})();

	function idCheckDay() {
		alert("출석확인!");

		var calendarEl = document.getElementById('calendar1');
		var request = $.ajax({
			url : "/mycheck/checkEvent",
			method : "GET",
			//dataType : "json",
			
			data : {
				mycheck_number : "mycheck_number",
				myheck_member_id :"myheck_member_id",
				mycheck_date : "mycheck_date"
			}

			
		});
		request.done(function(data) {
			var calendar = new FullCalendar.Calendar(calendarEl, {
				initialView : 'dayGridMonth',
				events : data,
				locale : 'ko',
			//headerToolbar: {
			//left: 'prev,next today',
			//center: 'title',
			//right: 'prev,next'
			/* dayGridMonth,timeGridWeek,timeGridDay,listWeek 월, 주, 일, 일정목록 추가삭제가능 */
			//}
			});
			calendar.render();
		});
	}
</script>


