<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>1:1 문의</title>
<link rel="stylesheet" href="css/one2one.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
</head>
<body>
<div class="container">
        <h2>1:1 문의</h2>
        <button class="accordion">Lorem ipsum dolor sit amet consectetur, adipisicing elit. Dolor nam, accusamus architecto debitis quasi hic, totam quia quo iusto eveniet veniam rerum error ab omnis blanditiis odio culpa, animi maxime!</button>
        <div class="panel">
            <p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Inventore, eligendi repellendus repellat id est ratione ipsum illo libero exercitationem voluptate reprehenderit quis incidunt at sed nemo quaerat vero architecto possimus!</p>
        </div>
         
        <button class="accordion">Lorem ipsum dolor sit amet consectetur adipisicing elit. Eos aperiam cumque voluptatibus. Perferendis velit, numquam minima deleniti temporibus reiciendis illum, vel dicta placeat rem dolor error, accusamus quae voluptatibus beatae!</button>
        <div class="panel">
            <p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Minima, saepe facilis corporis, aperiam laudantium odit voluptatum enim, adipisci laboriosam necessitatibus nobis iure. Minima, illum quia. Rem atque repellat tempora soluta?</p>
        </div>
         
        <button class="accordion">Lorem ipsum dolor sit amet consectetur adipisicing elit. Deleniti minima suscipit tempore! Dolores, accusantium explicabo nobis omnis aperiam facilis at magnam quisquam deleniti voluptatem provident, laudantium quasi est perferendis. Reprehenderit.</button>
        <div class="panel">
            <p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Dignissimos doloribus illum accusantium error, ipsum vel vero ullam qui beatae, et ea esse quibusdam, alias a. Architecto possimus debitis quam suscipit?</p>
        </div>
         
        <script>
            var acc = document.getElementsByClassName("accordion");
            var i;
         
            for (i = 0; i < acc.length; i++) {
                acc[i].addEventListener("click", function () {
                    this.classList.toggle("active");
                    var panel = this.nextElementSibling;
                    if (panel.style.maxHeight) {
                        panel.style.maxHeight = null;
                    } else {
                        panel.style.maxHeight = panel.scrollHeight + "px";
                    }
                });
            }
        </script>
</div>
</body>
</html>