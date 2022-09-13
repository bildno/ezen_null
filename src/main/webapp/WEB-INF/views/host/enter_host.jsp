<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>입점 등록</title>
</head>
<body>
<div class="container">
        <h1>기본 정보</h1>
        <h2 id="review_exp">
            공간 정보를 입력해주세요. <img src="/img/service/space_icon.png"
                alt="space_icon" id="space_icon">
        </h2>
        <div class="contents">
        <div id="review_info">
            <hr>
            <div class="box_form">
                <div class="tit">
                <span>공간명</span>
                </div>
                    <div class="input ">
                        <input type="text" id="space_name" placeholder="고유 업체명을 입력해주세요."
                         required="" minlength="1" maxlength="18" value="">
                    </div>
                    <p class="p_guide normal">
                        사용 가능한 특수문자 : ( , ) , [ , ] , - , .(마침표), ,(쉼표)
                    </p>
                    <label for="chk1">
                        <input type="checkbox" id="chk1" name="chk1">공간 1
                    </label>
                    <label for="chk2">
                        <input type="checkbox" id="chk2" name="chk1">공간 2
                    </label>
                    <label for="chk3">
                        <input type="checkbox" id="chk3" name="chk1">공간 3
                    </label>
                    <label for="chk4">
                        <input type="checkbox" id="chk4" name="chk1">공간 4
                    </label>
                        
    
    </div>
</div>
</div>
</div>
<script>
function checkOnlyOne(element) {
	  
	  const checkboxes 
	      = document.getElementsByName("ck1");
	  
	  checkboxes.forEach((cb) => {
	    cb.checked = false;
	  })
	  
	  element.checked = true;
	}
</script>
</body>
</html>