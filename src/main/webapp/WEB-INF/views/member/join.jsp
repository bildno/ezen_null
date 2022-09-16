<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<link rel="stylesheet" href="css/member/join.css">

<!--  회원가입 유효성 검사 -->
    <script type="text/javascript">
 
        function Validation(){
    	
        //정규식 부분입니다
         var nameExp = /^[가-힣]{2,4}|[a-zA-Z]{2,10}\s[a-zA-Z]{2,10}$/; // 이름 유효성 검사
         var RegExp = /^[a-zA-Z0-9]{4,12}$/; // 아이디 유효성 검사
         var exptext = /^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/; // 이메일 유효성 검사
         var patternPhone=/^[0-9]{2,3}-[0-9]{3,4}-[0-9]{4}/; //핸드폰 번호 유효성 검사
         var reg = /^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[~?!@#$%^&*_-]).{8,}$/;
         var reg2 = /(\w)\1\1\1/;
        	

         
         
         
         
         //변수 선언 부분입니다
         var userId = document.getElementById("userid");
         
         var userPs = document.getElementById("userPs");
         
         var userPc = document.getElementById("userPc");
         
         var userM = document.getElementById("userm");
         
         var userN = document.getElementById("usern");
         
         var userR = document.getElementById("userRe");
         
         var phonenum = document.getElementById("phonenum");
         
         var chk1 = document.join.terms_1.checked; // chk1(약관1 체크박스)의 체크여부를 true로 설정 
         
         var chk2 = document.join.terms_2.checked; // chk2(약관2 체크박스)의 체크여부를 true로 설정
         
     
         
         
         
         
         
         
         // 이름이 영문자 섞여서 입력될 경우
         
         if(nameExp.test(userN.value) == false){
         
         alert("이름형식이 맞지 않습니다.");
        
         return false;
        
        } 

        
        // 이메일이 이메일 형식과 맞지 않을 경우
         
        if(exptext.test(userM.value) == false){
         
         alert("이메일형식이 맞지 않습니다.");
        
         return false;
        
        }

        
        //핸드폰 번호가 제대로 입력 안될 경우
        if (patternPhone.test(phonenum.value) == false || phonenum.value=="") {
        	
        alert("핸드폰 번호를 다시 확인해주세요.");
        
        return false;
        
        }
         


        
        //----------------------------------------------------------
        
         // 아이디에 아무것도 안들어가있을 경우
         
         if(userId.value == ""){
         
          alert("아이디를 입력해주세요.");
         
          return false;
         
         }
         
         // 아이디가 4~12자리 영문대소문자와 숫자로만 입력
         
         if(!RegExp.test(userId.value)){
         
          alert("아이디를 4~12자리 문자,숫자로 해주세요.");
         
          return false;
         
         }
         
         
         //id와 password가 같을 경우
         
         if(userId.value == userPs.value){
         
          alert("아이디와 비밀번호가 같습니다.");
         
          return false;
         
         }
         
         
         
         
         
         //==============================================================
         
         //password가 입력되지 않을 경우
         
         if(userPs.value==""){
         
          alert("비밀번호가 입력되지 않았습니다.");
         
          return false;
         
         }
         
         //비밀번호를 8자 이상으로 입력하지 않을 경우
         
         if(userPs.value.length <8){
         
          alert("비밀번호는 8자 이상으로 작성해주세요.");
         
          return false;
         
         }
         
         
         //정규식 이용한 비밀번호 유효성 검사
         
         if( !reg.test(userPs.value)){
         
          alert("비밀번호는 8자이상,숫자,대문자,소문자,특수문자 포함입니다.");
         
          return false;
         
         }
         
         
         //같은 문자 4번 이상으로 비밀번호 불가
         
         if(/(\w)\1\1\1/.test(userPs.value)) {
        	 
        	 alert("같은 문자를 4번 이상 사용하실 수 없습니다.");
        	 
        	 return false;
         }
         
         
    
         
         
         //----------------------------------------------------------------
         
         //비밀번호 확인이 입력되지 않을 경우
         
         if(userPc.value==""){
         
          alert("비밀번호 확인이 입력되지 않았습니다.");
         
          return false;
         
         }
         
         
         //정규식 이용한 비밀번호 확인 유효성 검사
         
         if(!reg.test(userPc.value)){
         
          alert("비밀번호 확인을 4~12자리 영문대소문자와 숫자로만 입력해주세요.");
         
          return false;
         
         }
     
         
         
         // 비밀번호와 비밀번호 확인이 같지 않을 경우
         if(userPs.value != userPc.value) {
        	 
        	 alert("비밀번호와 비밀번호 확인이 맞지 않습니다.");
        	 
        	 return false;
         }
         
         
         
         
         //----------------------------------------------------------------    
        
         
         
         
         //chk1의 반전값이 true일 경우 alert창 띄우고 return false 
         if(!chk1){ 
        	 alert("약관 동의가 모두 체크되어 있지 않습니다.");
        	 return false;
         }
       	//chk2의 반전값이 true일 경우 alert창 띄우고 return false
         if(!chk2){
        	 alert("약관 동의가 모두 체크되어 있지 않습니다.");
        	 return false;
         }
         
         

        }
         
        
        
        </script>
        
           <script type="text/javascript">
        	function checkall(){
        		   if(document.getElementById("check_terms").checked==true){  //id 를 사용하여 하나의 객체만을 호출
        		         for(var i=0;i<3;i++)   document.getElementsByName("termsck")[i].checked = true;   //name 을 사용하여 배열 형태로 담아 호출
        		      }
        		      if(document.getElementById("check_terms").checked==false){
        		         for(var i=0;i<3;i++)   document.getElementsByName("termsck")[i].checked=false;  
        		      }
        	}
        </script>
    <div class="container">
        <h1 id="join_h1">회원가입</h1>
        <h2 id="join_exp">
            스페이스 그라운드의 회원이 되어주세요 ! <img src="/img/service/space_icon.png" alt="space_icon" id="space_icon">
        </h2>
        <div class="contents">
        <form name="join" action="/end" onsubmit="return Validation();">
            <div id="insert">
                <div>
                    <input type="text" placeholder="이름" name="name" id="usern">
                </div>
                <div>
                    <input type="email" placeholder="이메일"name="mail" id = "userm">
                </div>
                <div>
                    <input type="text" placeholder="전화번호('-'까지 입력해주세요)" id="phonenum">
                </div>
                <div>
                    <input type="text" placeholder="아이디" name="id" id ="userid">
                </div>
                <div>
                    <input type="password" placeholder="비밀번호"  name="password" id="userPs" >
                </div>
                <div>
                    <input type="password" placeholder="비밀번호 확인" name="password" id ="userPc" >
                </div>

				<div class="gender" id="gender_female">
					<input type="radio" name="room" />여성
				</div>

				<div class="gender" id="gender_male">
					<input type="radio" name="room" />남성
				</div>
			</div>



            <div id="checkForm">
                <div class="check">
                    <input type="checkbox" id="check_host">
                    <p style="margin: 0 0 0 5px">호스트 자격으로 가입합니다.</p>
                </div>
                <hr>
                <div class="check">
                    <input type="checkbox" id="check_terms" onclick=checkall()>
                    <p style="margin: 0 0 0 5px">아래 약관에 모두 동의합니다.</p>
                </div>
                <br>
                <div class="check">
                    <input type="checkbox" class="agreeck" id="terms_1" name="termsck">
                    <p style="margin: 0 0 0 5px">약관 1</p>
                </div>
                <textarea name="terms_1_content" rows="1" readonly style="resize: none;">약관내용1</textarea>
                <div class="check">
                    <input type="checkbox" class="agreeck" id="terms_2" name="termsck">
                    <p style="margin: 0 0 0 5px">약관 2</p>
                </div>
                <textarea name="terms_2_content" rows="1" readonly style="resize: none;">약관내용2</textarea>
            </div>
            <div>
                <input type="submit" value="회원가입" id="joinbtn">
            </div>
            <br>
        </form>
        </div>
     
    </div>
    

