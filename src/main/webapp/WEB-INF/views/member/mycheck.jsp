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
	$(document).ready(function() { // 객체가 준비가 될때 function을 실행함

		$(function() {		// 제이쿼리형식의 function을 만들어 실행
			var calendarEl = $('#calendar1')[0];	// id로 calendar1된 객체를 얻어와서 calendarEl 변수에다가 넣어줌
			var calendar = new FullCalendar.Calendar(calendarEl, {	// script로 선언한 라이브러리에서 FullCalendar 클래스를 불러와 calendar로 넣어줌 
				locale : 'ko', // FullCalendar 클래스 안에 Calendar 메소드에있는 속성값에 설정을 ko로 해줌 즉, 한국어로 바꿈
			});
			calendar.render();	// calendar를 실행해주는 함수
		});
		
		
		
		var calendarEl = document.getElementById('calendar1');
		var request = $.ajax({		// Ajax 통신을 한후 request에다가 통신후 return받은 값을 넣어줌
			url : "http://3.34.21.88:8090/mycheck/event",
			method : "GET"
		});

		request.done(function(data) { // ajax 통신이 완료 되면 function을 실행
			var calendar = new FullCalendar.Calendar(calendarEl, {
				//initialView : 'dayGridMonth',
				events : data,
				eventContent : {
					  html: `<img src="./img/apple.png" class="event-icon first" />`
				},
				locale : 'ko',
			headerToolbar: {
			//left: 'prev,next today',
			//center: 'title',
			right: 'custom1'
			// dayGridMonth,timeGridWeek,timeGridDay,listWeek 월, 주, 일, 일정목록 추가삭제가능 */
			},
				customButtons : {
					custom1 : {
						text : '출석 chechechecheck',
						click : function() {
							//alert('출석확인 클릭');
							
							idCheckDay();
						}
			
					}
				}
			});
			calendar.render();
		});
	});

	function idCheckDay() {
		alert("확인~");

		var calendarEl = document.getElementById('calendar1');
		var request = $.ajax({
			url : "http://3.34.21.88:8090/mycheck/checkEvent",
			method : "GET",
			

		});
		request.done(function(data) {
			var calendar = new FullCalendar.Calendar(calendarEl, {
				initialView : 'dayGridMonth',
				events : data,
				
				eventContent : {
					  html: `<img src="./img/apple.png" class="event-icon first" />`
				},
				
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