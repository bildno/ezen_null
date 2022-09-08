<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<link rel="stylesheet" href="css/one2one/one2one.css">


    <div class="container">
        <h1 id="one2one_h1">1 : 1 문의</h1>
        <h2 id="one2one_h2">1:1 답변을 확인해주세요       
          <img src="/img/service/space_icon.png" alt="space_icon" id="space_icon">
        </h2>
    <div class=contents>    
        <button class="accordion" id=o_num1>1 : 1 문의 1</button>
        <div class="panel">
            <p id=o_ans1>1 : 1 문의 답변 1</p>
        </div>
         
        <button class="accordion" id=o_num2>1 : 1 문의 2</button>
        <div class="panel">
            <p id=o_ans2>1 : 1 문의 답변 2</p>
        </div>
         
        <button class="accordion" id=o_num3>1 : 1 문의 3</button>
        <div class="panel">
            <p id=o_ans3>1 : 1 문의 답변 3</p>
        </div>
                <button class="accordion" id=o_num4>1 : 1 문의 4</button>
        <div class="panel">
            <p id=o_ans4>1 : 1 문의 답변 4</p>
        </div>
                <button class="accordion" id=o_num5>1 : 1 문의 5</button>
        <div class="panel">
            <p id=o_ans5>1 : 1 문의 답변 5</p>
        </div>
        <br>
        <div class="writebtn">
       	<input type="button" value="글쓰기" onclick="location.href='/one2one_write'">
       	</div>
        </div>
         
        <script>
            var acc = document.getElementsByClassName("accordion");
            var i;
            var back = document.getElementsByClassName("accordion");
            for (i = 0; i < acc.length; i++) {
                acc[i].addEventListener("click", function () {
                    this.classList.toggle("active");
                    var panel = this.nextElementSibling;
                    if (panel.style.maxHeight) {
                        console.log(panel.style.maxHeight);
                        panel.style.maxHeight = null;
                    } else {
                        console.log(panel.style.maxHeight);
                        panel.style.maxHeight = panel.scrollHeight + "px";
                        
                        
                    }
                });
            }
        </script>
</div>
