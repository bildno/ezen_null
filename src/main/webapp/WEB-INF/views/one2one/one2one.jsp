<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>1:1 문의 목록</title>
<link rel="stylesheet" href="css/main.css">
<link rel="stylesheet" href="css/one2one/one2one (1).css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
</head>
<body>
 
    <div class="container">
        <h2>1:1문의</h2>
        <button class="accordion">1 : 1 문의 11111</button>
        <div class="panel">
            <p>1 : 1 문의 답변 1</p>
        </div>
         
        <button class="accordion">1 : 1 문의 2</button>
        <div class="panel">
            <p>1 : 1 문의 답변 2</p>
        </div>
         
        <button class="accordion">1 : 1 문의 3</button>
        <div class="panel">
            <p>1 : 1 문의 답변 3</p>
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

  
    
</body>
</html>