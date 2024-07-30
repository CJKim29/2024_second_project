<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>



<style type="text/css">

#load {
    width: 100%;
    height: 100%;
    top: 0;
    left: 0;
    position: fixed;
    display: block;
    opacity: 0.85;
    background: #1B1D23;
    z-index: 99;
    text-align: center;
}

#load > img {
    position: absolute;
    top: 28%;
    left: 35%;
    z-index: 100;
}

</style>

</head>
<body>

<div id="load">
  <img src="../resources/images/입장.gif" alt="loading">
</div>


<script>
    const loading_page = document.getElementById("load");
    
    // 로딩 화면을 2초(2000ms) 동안 보여줍니다.
    setTimeout(function() {
      loading_page.style.display = 'none';
    }, 2000); // 2000ms = 2초
</script>

</body>
</html>