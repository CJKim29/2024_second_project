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
		<!-- 아이템 이미지 -->	
		<div class="item_image">
	       <img src="../resources/images/${ vo.filename }">
	    </div>
	
	    <span class="line"></span>	<!-- 구분선 -->
	    <!-- 아이템 설명 -->
	    <div class="content_wrap">
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
		</div>
	    
	    <span class="line2"></span>	<!-- 구분선2 -->
	    
	    <div class="content_wrap">
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
	    </div>
    	<hr>
      </c:forEach>
</div>

</body>
</html>