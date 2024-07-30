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

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<style type="text/css">
#box{
	width: 1600px;
	margin: auto;
	margin-top: 50px;
}
.item_image{
	display: inline-block;
	width: 400px;
	height: 300px;
	vertical-align: top;
	margin-left: 100px;
}
.item_content{
	display: inline-block;
	width: 400px;
	height: 300px;
	vertical-align: top;
	padding-left: 20px;
	margin-bottom: 100px;
}
</style>

<script>
    document.querySelectorAll('.item_content').forEach(function(content) {
        content.innerHTML = content.innerHTML.replace(/(?:\r\n|\r|\n)/g, '<br>');
    });
</script>

</head>
<body>
<div id="box">
	
		
		<!-- for(SawonVo vo : list) -->
		<c:forEach var="vo"  items="${ requestScope.list }">
		<div class="item_image">
	       <img src="../resources/images/${ vo.filename }">
	    </div>
	    <div class="item_content">
	    	  ${ vo.name }
	          <%-- ${ vo.category } --%>
	          ${ vo.grade }
	          ${vo.intrinsic}
	          ${ vo.durability }
	          ${ vo.req_lev }
	          ${ vo.req_str }
	          ${ vo.req_dex }
	          <%-- <c:out value="${vo.intrinsic}" escapeXml="false" /><br> --%>
	    </div>
	    <div class="item_content">
	          ${ vo.option1 }
	          ${ vo.option2 }
	          ${ vo.option3 }
	          ${ vo.option4 }
	          ${ vo.option5 }
	          ${ vo.option6 }
	          ${ vo.option7 }
	          ${ vo.option8 }
	          ${ vo.option9 }
	    </div>
	    
       </c:forEach>
</div>
</body>
</html>