<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet" href="/css/host/space_info_host.css">
<script>
        //체크박스 하나만 선택하도록 구현 
        function checkOnlyOne(element) {
            const checkboxes
                = document.getElementsByName("room");
            checkboxes.forEach((cb) => {
                cb.checked = false;
            })
            element.checked = true;
        }
    </script>


<script type="text/javascript">
        // 이미지 유효성 검사
        function confirmFileExtension(file) {
            console.log(file);
            var reg = /(.*?)\.(jpg|jpeg|png|gif|bmp|JPG|PNG|JPEG|GIF|BMP)$/;
            if (file.match(reg)) {
                alert("업로드 되었습니다.");
            } else {
                alert("해당 파일은 이미지 파일이 아닙니다.");
            }
        }

        // 이미지 미리보기
        function readURL(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();
                reader.onload = function (e) {
                    document.getElementById('preview').src = e.target.result;
                };
                reader.readAsDataURL(input.files[0]);
            } else {
                document.getElementById('preview').src = "";
            }
        }
    </script>

<!-- 주소검색 -->
<script>
        function openZipSearch() {
            new daum.Postcode({
                oncomplete: function (data) {
                    $('[name=zip]').val(data.zonecode); 
                    $('[name=addr1]').val(data.address);
                    $('[name=addr2]').val(data.buildingName);
                }
            }).open();
        }
    </script>

<!-- 저장 알럿창 -->
<script>
        function btn() {
            alert('저장이 완료되었습니다');
        }
    </script>

<!-- 주소검색 링크 -->
<script
	src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>




<div class="container">
	<c:forEach var="dto" items="${ enter_list}">


		<h1 id="space_host_h1">공간 상세정보</h1>
		<h2 id="space_host_h2">
			호스트의 공간 상세정보 페이지입니다 <img src="/img/service/space_icon.png"
				alt="space_icon" id="space_icon">
		</h2>

		<hr>
		<div>
			<h2 id="space_host_enterh2">공간 상세 정보입니다.</h2>
			<h2 id="space_host_info">
				호스트님께서 등록하신 공간에 대해 수정하고 확인하는 페이지 입니다.<br> 각 입력란에 맞는 규격으로 아래의 공간
				상세정보를 수정하시기 바랍니다
			</h2>
		</div>

		<img id="title_img" src="${dto.hostenter_title_img } " alt="" />


		<div class="space_host_name">
			<h3 id="space_host_h3">공간명</h3>
			<input type="text" placeholder="${dto.hostenter_name }"
				id="host_input">
			<div class="caution_div">
				<img src="/img/host/caution.png" alt="조심" id="caution"><small
					id="can_small">사용 가능한 특수문자 : ( , ) , [ , ] , - , .(마침표),
					,(쉼표)</small>
			</div>
		</div>

		<div class="space_host_select">
			<h3 id="space_host_h3">공간유형</h3>
			<div class="div_select">
				<div class="div_ch">
					<input type="checkbox" style="zoom: 10.5;" name="room"
						value="partyroom" checked id="ch" onclick='checkOnlyOne(this)'>
				</div>
				<label id="ch1">파티룸</label>
				<div class="div_ch">
					<input type="checkbox" style="zoom: 10.5;" name="room"
						value="partyroom" id="ch" onclick='checkOnlyOne(this)'>
				</div>
				<label id="ch1">엑티브룸</label>
				<div class="div_ch">
					<input type="checkbox" style="zoom: 10.5;" name="room"
						value="partyroom" id="ch" onclick='checkOnlyOne(this)'>
				</div>
				<label id="ch1">슈팅룸</label>
				<div class="div_ch">
					<input type="checkbox" style="zoom: 10.5;" name="room"
						value="partyroom" id="ch" onclick='checkOnlyOne(this)'>
				</div>
				<label id="ch1">갤러리룸</label>
			</div>
			<div class="caution_div">
				<img src="/img/host/caution.png" alt="조심" id="caution"><small
					id="can_small">적합한 용도 내에서 최대 1개만 선택가능</small>
			</div>
		</div>

		<div class="space_host_onerow">
			<h3 id="space_host_h3">공간 한 줄 소개</h3>
			<div class="small">
				<h3 id="small">*최대 30자</h3>
			</div>
			<input type="text" placeholder="${dto.hostenter_onerow }"
				id="host_input">
		</div>

		<div class="space_host_description">
			<h3 id="space_host_h3">공간 소개</h3>
			<div class="small">
				<h3 id="small">*최대 500자</h3>
			</div>
			<input type="text" placeholder="${dto.hostenter_description }"
				id="host_input_des">
		</div>

		<div class="space_host_caution">
			<h3 id="space_host_h3">공간 예약 시 주의사항</h3>
			<input type="text" placeholder="${dto.hostenter_caution }"
				id="host_input">
		</div>
	
		<div class="space_host_img">
			<h3 id="space_host_h3">이미지</h3>
			<label for="imgFile">파일선택</label> <input type="file" id="imgFile"
				required multiple="multiple" /> <img id="preview"
				style="width: 150px;" /> <br /> <label for="imgFile2">업로드</label>
			<input type="button" onClick="confirmFileExtension(imgFile.value);"
				value="업로드" id="imgFile2" />
		</div>



		<div class="space_host_price">
			<h3 id="space_host_h3">가격</h3>
			<input type="text" placeholder="${dto.hostenter_price }"
				id="host_input">
		</div>


		<div class="space_host_bnum">
			<h3 id="space_host_h3">사업자등록번호</h3>
			<input type="text" placeholder="${dto.hostenter_bnumber}"
				id="host_input">
		</div>

		<div class="space_host_head">
			<h3 id="space_host_h3">수용 가능 인원</h3>
			<input type="text" placeholder="${dto.hostenter_headcount }"
				id="host_input">
		</div>

		<div class="space_finish">
			<div class="saver">
				<button type="button" onclick="javascript:btn()" id="btnfn">저장</button>
			</div>
			<div class="cancel">
				<button type="button" id="btnfn"
					onclick="window.open('/mypage_host')">
					<a id="canceler" href="/mypage_host"> 취소</a>
				</button>
			</div>
		</div>
	</c:forEach>
</div>
