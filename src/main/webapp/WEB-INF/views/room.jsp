<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<meta charset="UTF-8">
	<title>Room</title>
	<style>
		*{
			margin:0;
			padding:0;
		}
		.container{
			width: 500px;
			margin: 0 auto;
			padding: 25px
		}
		.container h1{
			text-align: left;
			padding: 5px 5px 5px 15px;
			color: rgb(151, 210, 236);
			font-family: 'Noto Sans KR', sans-serif;
			border-left: 3px solid rgb(151, 210, 236);
			margin-bottom: 20px;
		}
		.roomContainer{
			background-color: #F6F6F6;
			width: 500px;
			height: 500px;
			overflow: auto;
		}
		.roomList{
			border: none;
		}
		.roomList th{
			border: 1px solid rgb(151, 210, 236);
			padding: 10px;			
			background-color: #fff;
			font-family: 'Noto Sans KR', sans-serif;
			font-weight:300;

		}
		.roomList td{
			border: 1px solid rgb(151, 210, 236);
			background-color: #fff;
			text-align: left;
			font-family: 'Noto Sans KR', sans-serif;
			font-weight:300;

		}
		.roomList .num{
			width: 75px;
			text-align: center;
		}
		.roomList .room{
			width: 350px;
		}
		.roomList .go{
			width: 71px;
			text-align: center;
		}
		button{
			background-color: rgb(151, 210, 236);
			font-family: 'Noto Sans KR', sans-serif;
			font-size: 15px;
	        font-weight:300;
	        width:80px;
			border: none;
			border-radius: 5px;
			padding: 8px;
			margin: 3px;
		}
		.inputTable th{
			padding: 5px;
			font-family: 'Noto Sans KR', sans-serif;
			font-weight:300;
		}
		.inputTable input{
			width: 330px;
			height: 25px;
			padding:5px;
		}
		
		.inputTable input:focus {
		
		outline: 3px solid #fff;
		
		}
		
	</style>
</head>

<script type="text/javascript">
	var ws;
	window.onload = function(){
		getRoom();
		createRoom();
	}

	function getRoom(){
		commonAjax('/getRoom', "", 'post', function(result){
			createChatingRoom(result);
		});
	}
	
	function createRoom(){
		$("#createRoom").click(function(){
			var msg = {	roomName : $('#roomName').val()	};

			commonAjax('/createRoom', msg, 'post', function(result){
				createChatingRoom(result);
			});

			$("#roomName").val("");
		});
	}

	function goRoom(number, name){
		location.href="/moveChating?roomName="+name+"&"+"roomNumber="+number;
	}

	function createChatingRoom(res){
		if(res != null){
			var tag = "<tr><th class='num'>순서</th><th class='room'>방 이름</th><th class='go'></th></tr>";
			res.forEach(function(d, idx){
				var rn = d.roomName.trim();
				var roomNumber = d.roomNumber;
				tag += "<tr>"+
							"<td class='num'>"+(idx+1)+"</td>"+
							"<td class='room'>"+ rn +"</td>"+
							"<td class='go'><button type='button' onclick='goRoom(\""+roomNumber+"\", \""+rn+"\")'>참여</button></td>" +
						"</tr>";	
			});
			$("#roomList").empty().append(tag);
		}
	}

	function commonAjax(url, parameter, type, calbak, contentType){
		$.ajax({
			url: url,
			data: parameter,
			type: type,
			contentType : contentType!=null?contentType:'application/x-www-form-urlencoded; charset=UTF-8',
			success: function (res) {
				calbak(res);
			},
			error : function(err){
				console.log('error');
				calbak(err);
			}
		});
	}
</script>
<body>
	<div class="container">
		<h1>채팅방</h1>
		<div id="roomContainer" class="roomContainer">
			<table id="roomList" class="roomList"></table>
		</div>
		<div>
			<table class="inputTable">
				<tr>
					<th>방명</th>
					<th><input type="text" name="roomName" id="roomName"></th>
					<th><button id="createRoom">만들기</button></th>
				</tr>
			</table>
		</div>
		<input type="button" value="나가기"  onclick="location.href='/mypage'" 
		style="
		background-color: rgb(151, 210, 236);
			font-family: 'Noto Sans KR', sans-serif;
			font-size: 15px;
	        font-weight:300;
	        width:80px;
			border: none;
			border-radius: 5px;
			padding: 8px;
			margin: 3px;
			float: right;
			"/>
	</div>
</body>
</html>