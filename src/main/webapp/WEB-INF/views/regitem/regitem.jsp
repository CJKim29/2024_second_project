<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

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
<div id="box">
<form class="form-inline">
	<input type="hidden" name="mem_idx" value="<%= session.getAttribute("mem_idx") %>">

	<table class="table">
			<tr style="background: #131319; height: 50px;">
				<th style="padding-left: 100px;">아이템</th>
				<th style="padding: 8px 0 8px 60px;">아이템명</th>
				<th style="padding: 8px 0 8px 60px;">아이템옵션</th>
				
				<th style="padding-left: 230px;">거래정보</th>		
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
							  <br>
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
					
					
					<td>
						<!-- 거래회원 정보 기입란 -->
            <div id="item_sell">
                <div id="usercard-text">
                    <span class="usercard-text"><span>기본정보</span> 💡 ONLINE</span>
                </div>
                <div id="item_sell1">
                    <img class="usercard-image" src="https://image.chaoscube.co.kr/new/user/367949/profile/b6478d67-9a45-46da-8910-f9f74efcaa18.jpg"> 
                    <img class="usercard-grade" src="https://i.ibb.co/BNKG8b4/image.jpg">
                    <span class="usercard-name"><b>${ vo.reg_mem_name }</b></span>
                        <a class="btn-3">&ensp;즉시구매&ensp;</a>
                        <a class="btn-3">&ensp;경매&ensp;</a>
                    <!-- 판매진행 여부 -->
                    <a class="btn-4">&ensp;판매중&ensp;</a>
                </div>
                <hr>
                <div id="item_sell2">
                <!-- 판매양식 -->
                </div>
                <div id="item_sell3">
                    <span class="item_clock">등록</span>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <span class="item_clock2">${ fn:substring(vo.reg_date,0,19) }</span><br>
                    <span class="item_clock">종료예정</span>
                    <span class="item_clock2">${ fn:substring(vo.end_date,0,19) }</span>
                </div>
                <hr>
                <div id="usercard-text2">
                    <span class="usercard-text"><span>판매정보</span></span>
                </div>
                <div id="usercard-cp">
                    <div id="usercard-cp2">
                        <img src="https://i.ibb.co/85LjcPV/image.jpg" alt="image" border="0">
                    </div>
                    <div id="usercard-cp3">
                        <span>즉시 구매가</span>
                    </div>
                    <div id="usercard-cp4">
                        <span></span>
                    </div>
                    <div id="usercard-cp5">
                        <span><fmt:formatNumber type="currency" value="${ vo.reg_price }" currencySymbol=""/></span>
                    </div>
                    <div id="usercard-cp6">
                        <span>CP</span>
                    </div>
                </div>
                <div id="usercard-cp">
                    <div id="usercard-cp2">
                        <img src="https://i.ibb.co/85LjcPV/image.jpg" alt="image" border="0">
                    </div>
                    <div id="usercard-cp3">
                        <span>현재 입찰가</span>
                    </div>
                    <div id="usercard-cp4">
                        <span></span>
                    </div>
                    <div id="usercard-cp5">
                        <span><fmt:formatNumber type="currency" value="${ vo.auction_price }" currencySymbol=""/></span>
                    </div>
                    <div id="usercard-cp6">
                        <span>CP</span>
                    </div>
                </div>
                
                <div id="usercard-btn">
                   <input id="btn1" type="button" value="즉시구매" onclick="buy('${vo.reg_idx}');">
       				<input id="btn2" type="button" value="입찰하기" onclick="auction('${vo.reg_idx}');">
                </div>
            </div>	
					</td>
				</tr>
			</c:forEach>
		</table>

</form>
</div>

</body>
</html>