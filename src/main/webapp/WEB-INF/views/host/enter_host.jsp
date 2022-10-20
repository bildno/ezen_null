<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
             <link rel="stylesheet" href="/css/host/enterhost.css">
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
            	  alert('저장이 완료되었습니다');
                return true;
            } else {
                alert("해당 파일은 이미지 파일이 아닙니다.");
                return false;
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

<script>
		function setDetailImage(event){
			console.log("호출");
			for(var image of event.target.files){
				var reader = new FileReader();
				
				reader.onload = function(event){
					var img = document.createElement("img");
					img.setAttribute("src", event.target.result);
					img.setAttribute("class", "col-lg-6");
					img.setAttribute("name", "create_img")
					document.querySelector("div#images_container").appendChild(img);
				};
				
				console.log(image);
				reader.readAsDataURL(image);
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


	<script type="text/javascript">
		function fileReset(form){
			
			console.log("지우기 호출");
			$("#imgFile").val("");
		
			
		/* 	var ele= document.getElementsByName("create_img");
			len = ele.length;
			parentNode = ele[0].parentNode;
			for(var i=0; i<len; i++)
			{
			  parentNode.removeChild(ele[0]);
			} */
			
			
			var arrayImg = document.getElementsByName("create_img");
			console.log(arrayImg.length);
			
			len = arrayImg.length
			parent = arrayImg[0].parentNode;
	 		 for(var i = 0; i<len; i++){
	 			parent.removeChild(arrayImg[0])
			}   
			 
			
	
		}
function fileReset2(form){
			
			console.log("지우기 호출");
			$("#imgFile2").val("");
			$("#preview").attr("src"," ");
			
		/* 	var ele= document.getElementsByName("create_img");
			len = ele.length;
			parentNode = ele[0].parentNode;
			for(var i=0; i<len; i++)
			{
			  parentNode.removeChild(ele[0]);
			} */
			
			
			/* var arrayImg = document.getElementsByName("create_img");
			console.log(arrayImg.length);
			
			len = arrayImg.length
			parent = arrayImg[0].parentNode;
	 		 for(var i = 0; i<len; i++){
	 			parent.removeChild(arrayImg[0])
			}   
			  */
			
	
		}
	</script>

    <!-- 주소검색 링크 -->
    <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

    <div class="container">
        <h1 id="space_host_h1">공간 입점등록</h1>
        <h2 id="space_host_h2">호스트의 공간 입점등록페이지입니다
            <img src="/img/service/space_icon.png" alt="space_icon" id="space_icon">
        </h2>

        <hr>
        <div>
            <h2 id="space_host_enterh2">공간 입점등록입니다.</h2>
            <h2 id="space_host_info">호스트님께서 등록하실 공간에 대해 작성하는 '공간 입점등록'입니다.<br>
                각 입력란에 맞는 규격으로 아래의 공간 상세정보 신청서를 작성하시기 바랍니다</h2>  
        </div>
        
        
        
        
	<form action="uploadMultiFileOk" method="post" enctype="multipart/form-data" onsubmit="return confirmFileExtension(imgFile.value);">
	
	  <div class="space_host_img">
            <h3 id="space_host_h3">대표 이미지</h3>
            <label for="imgFile2">파일선택</label>
            <input name="filename2" type="file" id="imgFile2" accept="image/*" onchange="readURL(this);" />
            <img src="" alt="" id="preview" style="width: 150px"/>
            <div>
             <label for="imgFile4" id="delete_img2" onclick="fileReset2(this.form)">지우기</label>
             </div>
        </div>
	
        <div class="space_host_name">
            <h3 id="space_host_h3">공간명</h3>
            <input type="text" placeholder="고유 업체명을 입력해주세요.ex)하이브 회의실" id="host_input" name="host_name">
            <div class="caution_div">
                <img src="/img/host/caution.png" alt="조심" id="caution"><small id="can_small">사용 가능한 특수문자
                    : ( , ) , [ , ] , - , .(마침표), ,(쉼표)</small>
            </div>
        </div>

        <div class="space_host_select">
            <h3 id="space_host_h3">공간유형</h3>
            <div class="div_select">
                <div class="div_ch"><input value="1" type="checkbox" style="zoom:10.5;" name="room"  checked
                        id="ch" onclick='checkOnlyOne(this)'></div><label id="ch1">액티브룸</label>
                <div class="div_ch"><input value="2" type="checkbox" style="zoom:10.5;" name="room"  id="ch"
                        onclick='checkOnlyOne(this)'></div><label id="ch1">슈팅룸</label>
                <div class="div_ch"><input value="3" type="checkbox" style="zoom:10.5;" name="room"  id="ch"
                        onclick='checkOnlyOne(this)'></div><label id="ch1">파티룸</label>
                <div class="div_ch"><input value="4" type="checkbox" style="zoom:10.5;" name="room"  id="ch"
                        onclick='checkOnlyOne(this)'></div><label id="ch1">갤러리룸</label>
            </div>
            <div class="caution_div">
                <img src="/img/host/caution.png" alt="조심" id="caution"><small id="can_small">적합한 용도 내에서
                    최대 1개만 선택가능</small>
            </div>
        </div>

        <div class="space_host_onerow">
            <h3 id="space_host_h3">공간 한 줄 소개</h3>
            <div class="small">
                <h3 id="small">*최대 30자</h3>
            </div>
            <input type="text" placeholder="공간의 특장점을 한 줄로 나타내주세요" id="host_input" name="host_onerow">
        </div>

        <div class="space_host_description">
            <h3 id="space_host_h3">공간 소개</h3>
            <div class="small">
                <h3 id="small">*최대 500자</h3>
            </div>
            <textarea rows="20" cols="200" placeholder="공간을 상세하게 소개해주세요"id="host_input_des" name="host_des"></textarea>
           <!--  <input type="text" placeholder="공간을 상세하게 소개해주세요" id="host_input_des" name="host_des"> -->
        </div>

        <div class="space_host_caution">
            <h3 id="space_host_h3">공간 예약 시 주의사항</h3>
           <textarea rows="20" cols="100" placeholder="게스트들이 확인해야 하는 주의사항을 상세히 써주세요" id="host_input" name="host_caution"></textarea>
            <!-- <input type="text" placeholder="게스트들이 확인해야 하는 주의사항을 상세히 써주세요" id="host_input" name="host_caution" style="height: 300px "> -->
        </div>


	
        <div class="space_host_img">
            <h3 id="space_host_h3">이미지</h3>
            <label for="imgFile">파일선택</label>
            <input name="filename" type="file" id="imgFile" accept="image/*" onchange="setDetailImage(event);" required multiple="multiple" />
            <div style="width: 150px;" id="images_container"></div>
             <label for="imgFile3" id="delete_img" onclick="fileReset(this.form)">지우기</label>
        </div>

        <div class="space_host_location">
            <h3 id="space_host_h3">주소</h3>
            <div class="small">
             	<h3 id="small">*최초 등록 이후 변경될 수 없습니다(고객센터를 통해 변경 가능)</h3>   
            </div>
            <input type="text" name="zip" id="adr_input" placeholder="우편번호 입력" >
            <button type="button" onclick="openZipSearch()" id="openzip" >검색</button><br>
            <input type="text" name="addr1" id="host_input" readonly class="addr1" >
            <input type="text" name="addr2" id="host_input" class="addr2" placeholder="상세주소 입력란입니다" >
        </div>

        <div class="space_host_price">
            <h3 id="space_host_h3">가격</h3>
            <input type="text" placeholder="원하는 가격을 숫자와 쉼표로 입력해주세요 ex)200,000" id="host_input" name="host_price">
        </div>


        <div class="space_host_bnum">
            <h3 id="space_host_h3">사업자등록번호(-제외하고 입력해주세요)</h3>
            <input type="text" placeholder="사업자등록번호를 입력해주세요" id="host_input" name="host_bnumber">
        </div>

        <div class="space_host_head">
            <h3 id="space_host_h3">수용 가능 인원</h3>
            <input type="text" placeholder="수용 가능한 인원을 적어주세요 " id="host_input" name="host_headcount">
        </div>

        <div class="space_finish">
            <div class="saver">
                <button type="submit" id="btnfn">저장</button>
            </div>
            <div class="cancel">
                <button type="button" id="btnfn" onclick="window.open('/mypage_host')"><a id="canceler" href="/mypage_host"> 취소</a></button>
            </div>
        </div>
        	</form>
    </div>
    
