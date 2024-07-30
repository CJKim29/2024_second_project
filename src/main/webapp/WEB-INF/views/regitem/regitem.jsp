<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>reg_item</title>
<!--  Bootstrap  3.x  -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<link rel="stylesheet" href="../resources/css/regitem.css">

<style type="text/css">
.table{
	width: 1300px;
}
</style>

<script type="text/javascript">
	
	function buy(reg_idx) {

		location.href="../transaction/transaction_list.do?reg_idx=" + reg_idx;
	}
	
	function auction(reg_idx) {
		
		location.href="../transaction/auction_list.do?reg_idx=" + reg_idx;
	}
</script>

</head>
<body>

<!-- header 다희 코드 -->
    <div id="header">
    	<div id="header-img1">
    		<img alt="" src="../resources/images/deco_bg_1.png">
    	</div>
    	<div id="header-img2">
    		<img alt="" src="../resources/images/deco_1.png">
    	</div>
        <div id="header-box">
	        <div id="logo">
	            <img alt="" src="../resources/images/디션.png" onclick="location.href='list.do'" style="cursor: pointer;">
	        </div>
	        <div id="login-main">
	            <div id="login-btn">
	                <!-- 로그인 화면 전환 -->
	                <!-- 로그인 안되었을 때 session ~~ -->
	                <c:if test="${ empty sessionScope.user }">
	                <div class="login-icon">
	                    <a style="cursor: pointer;" href="../member/login_form.do"> 
	                        <!-- <img src="../image/user_icon.png"> -->
	                        <i class="user-circle"></i>
	                        로그인
	                    </a>                  
	                </div>
	                    <a href="../member/insert_form.do">회원가입</a>
	                </c:if>
	                <!-- 로그인 되었을 때 session 살리기~~ -->
	                <c:if test="${ not empty sessionScope.user }">
	                    <span id="user_ment">${ sessionScope.user.mem_name }님</span>
	                <!-- 로그아웃시 실행될 onclick 함수 -->
	                    <a id="logout" style="cursor:pointer;"
	                    href="../member/logout.do">로그아웃</a>
	                </c:if>
	                <!-- 로그인 계정이 관리자일 경우 회원관리 버튼 생성 -->
	                <c:if test="${ user.mem_grade eq '관리자' }">
	                    <a href="../member/list.do">회원관리</a>
	                </c:if>
	                <c:if test="${ user.mem_grade eq '일반' }">
	                    <a onclick="location.href='../member/modify_form.do?mem_idx=${user.mem_idx}'"
	                     style="cursor:pointer;">내정보</a>
	                </c:if>   
	                &nbsp;
	                <div class="updown"></div>
	                &nbsp;
	                <a href="#">채팅</a>
	                <a id="who" onclick="blink();" style="cursor:pointer;">
	                	<img src="../resources/images/who.PNG">비회원
	                </a>
	               
	            </div>
	            
	        </div>
        </div>
        	   
        <div id="header-tab">
        	<div id="header-tab-inside">
	            <nav class="navbar navbar-inverse">
				  <div class="container-fleid">
				    <ul class="container-fleid-list">
				    <img src="../resources/images/category.png">
				      <li class="dropdown header-tab-menu">
				        <a id="first" href="#">
				        	<img src="../resources/images/li1.PNG">
				        	<span>레저렉션</span>
				        </a>
				      </li>
				      <img src="../resources/images/category.png">
				      <li class="dropdown header-tab-menu">
				        <a id="second" href="#">
				        	<span>아이템 마켓</span>
				        </a>
				      </li>
				       <img src="../resources/images/category.png">
				      <li class="dropdown header-tab-menu">
				        <a href="#">
				        	<span>커뮤니티</span>
				        </a>
				      </li>
				       <img src="../resources/images/category.png">
				      <li class="dropdown header-tab-menu">
				        <a href="#">
				        	<span>베스트</span>
				        </a>
				      </li>
				       <img src="../resources/images/category.png">
				      <li class="dropdown header-tab-menu">
				        <a href="">
				        	<span>아이템 정보</span>
				        </a>
				      </li>
				      <img src="../resources/images/category.png">
				      <li class="dropdown header-tab-menu">
				        <a href="#">
				        	<span>DP충전</span>
				        </a>
				      </li>
				      <img src="../resources/images/category.png">
				    </ul>
				  </div>
				</nav>
			</div>
        </div>
        
    </div><!-- end - header -->
<div id="gong"><span>경매 현황</span></div>
<div id="box">
<form class="form-inline">
	<input type="hidden" name="mem_idx" value="<%= session.getAttribute("mem_idx") %>">

	<table class="table">
			<tr style="background: #131319; height: 50px;">
				<th style="padding-left: 100px;">아이템</th>
				<th style="padding: 8px 0 8px 60px;">아이템명</th>
				<th style="padding: 8px 0 8px 60px;">아이템옵션</th>
				<th style="padding: 8px 0 8px 60px; width: 200px;">아이템가격</th>
				<th style="padding: 8px 0 8px 15px; width: 90px;">경매가격</th>
				<th style="padding-left: 58px;">등록시간</th>
				<th style="padding-left: 15px;">구매신청</th>
			</tr>
			
			<c:forEach var="vo" items="${ list }">
				<tr>
					<td>
						<div class="item_image">
								<img src="../resources/images/${ vo.filename }">
							</div>
						</td>
					<td>${ vo.reg_name }</td>
					<td>
						<div class="item_content1">
							  <br><br><br><br>
					          카테고리 : ${ vo.category }<br>
					          ${ vo.grade }<br><br>
					          ${ vo.intrinsic }<br>
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
					          ${ vo.option10 }<br>
					    </div>
					</td>
					<td style="padding:8px 13px 8px 0; text-align: center;">${ vo.reg_price }</td>
					<td style="padding:8px 8px 8px 0; text-align: center;">${ vo.auction_price }</td>
					<td>${ vo.reg_date }</td>
					<td>
						<input id="btn1" type="button" class="btn" value="구매신청" onclick="buy('${vo.reg_idx}');"><br><br>
       					<input id="btn2" type="button" class="btn" value="경매참가" onclick="auction('${vo.reg_idx}');">
       					
					</td>
				</tr>
			</c:forEach>
		</table>
</form>
</div>
</body>
</html>