<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>item_list_Mybatis</title>

<!-- CSS -->
<link rel="stylesheet" href="../resources/css/member/main.css">
<!-- <link rel="stylesheet" href="../resources/css/member/mypage.css"> -->
<link rel="stylesheet" href="../resources/css/item/item_list.css">

<!--Bootstrap 3.x -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<script>
    document.querySelectorAll('.item_content').forEach(function(content) {
        content.innerHTML = content.innerHTML.replace(/(?:\r\n|\r|\n)/g, '<br>');
    });
</script>

</head>
<body>

<div id="box_content">

		<!-- <div id="main-content" style="padding-top: 10px;"> -->
			<div id="headline2">
				<strong id="headline-text"> 
					<img src="../resources/images/mypage.PNG">
					검색 결과
					<!-- <em id="piperline"> | </em> <span>목록</span> -->
					<div class="mypage-image1">
						<img src="../resources/images/cc-category-titlepin.png" style="height: 11px; width: 11px;">
					</div>
					<div class="mypage-image2">
						<img src="../resources/images/cc-category-titleline.png" style="width: 230px;">
					</div>
					<div class="mypage-image3">
						<img src="../resources/images/cc-category-titlepin.png" style="height: 11px; width: 11px;">
					</div>
				</strong>
			</div>
		<!-- </div> -->


		<!-- for(SawonVo vo : list) -->
	<c:forEach var="vo"  items="${ requestScope.list }">
		<div class="item_image">
	       <img src="../resources/images/${ vo.filename }">
	    </div>
	    <div class="item_content1">
	    	  ${ vo.name }<br>
	          <%-- ${ vo.category } --%>
	          ${ vo.grade }<br>
	          ${vo.intrinsic}<br>
	          ${ vo.durability }<br>
	          ${ vo.req_lev }<br>
	          ${ vo.req_str }<br>
	          ${ vo.req_dex }<br>
	          <%-- <c:out value="${vo.intrinsic}" escapeXml="false" /><br> --%>
	    </div>
	    
	    <div class="item_content2">
	          ${ vo.option1 }<br>
	          ${ vo.option2 }<br>
	          ${ vo.option3 }<br>
	          ${ vo.option4 }<br>
	          ${ vo.option5 }<br>
	          ${ vo.option6 }<br>
	          ${ vo.option7 }<br>
	          ${ vo.option8 }<br>
	          ${ vo.option9 }<br>
	    </div>
    	<hr>
      </c:forEach>
</div>



<div id="footer">
    <div id="footer-tab">
        <div class="footer-tab-menu">
            <span><a href="#">카오스큐브</a>&emsp;&emsp;|</span>
            <span>&emsp;&emsp;<a href="#">제휴문의</a>&emsp;&emsp;|</span>
            <span>&emsp;&emsp;<a href="#">이용약관</a>&emsp;&emsp;|</span>
            <span>&emsp;&emsp;<a href="#">개인정보 처리방침</a>&emsp;&emsp;|</span>
            <span>&emsp;&emsp;<a href="#">청소년 보호정책</a>&emsp;</span>
            
            <!-- 토글메뉴넣기  -->
            <select>                  
                <option>가이드</option>
                <option>cp란 무엇인가?</option>
                <option>cp거래 시 유의사항</option>
                <option>cp 거래완료 안내</option>
                <option>경험치/cp 획득</option>
            </select>
            <select>                  
                <option>안전거래 서비스</option>
                <option>안전거래 주의사항</option>
                <option>더치트 전화번호 조회</option>
                <option>사기 유형 및 대처법</option>
                <option>사이버 수사대</option>
            </select>                         
        </div>        
    </div>
    <hr>
    </div>
<!-- end - footer 정환 -->

</body>
</html>