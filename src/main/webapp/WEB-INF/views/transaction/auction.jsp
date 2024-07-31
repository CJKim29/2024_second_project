<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>transaction</title>
<!--  Bootstrap  3.x  -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<link rel="stylesheet" href="../resources/css/auction.css">

<script type="text/javascript">
	
	function transaction() {
	    const transaction_point = $("#transaction_point").val();
	    const mem_idx = ${user.mem_idx};
	
	    $.ajax({
	        url: "transaction.do",
	        type: "POST",
	        data: {
	            "transaction_point": transaction_point,
	            "mem_idx": mem_idx
	        },
	        dataType: "json",
	        success: function(response) {
	            $("#user_name").text(response.mem_name);
	            $("#user_point").text(response.mem_point);
	        },
	        error: function(err) {
	            alert("에러: " + err.responseText);
	        }
	    });
	}//end:transaction()
	
	function finish_auction(reg_idx) {
	    const auction_point = $("#auction_point").val();
	    const mem_idx = ${user.mem_idx};
	
	    $.ajax({
	        url: "delete_auction.do",
	        type: "POST",
	        data: {
	            "auction_point": auction_point,
	            "mem_idx": mem_idx,
	            "reg_idx": reg_idx
	        },
	        dataType: "json",
	        success: function(response) {
	            $("#user_name").text(response.mem_name);
	            $("#user_point").text(response.mem_point);
	        },
	        error: function(err) {
	            alert("에러: " + err.responseText);
	        }
	    });
	}//end:transaction()

	function bidding_auction(reg_idx) {
        var bidding_point = document.getElementById("auction_point").value;
    
        if (bidding_point != null && bidding_point !== "") {
            window.location.href = 'bidding_auction.do?bidding_point=' + bidding_point + '&reg_idx=' + reg_idx;
        } else {
            alert("입찰할 금액을 입력하세요.");
        }
    }//end:bidding_auction()
	
	
	function charge() {
	    const charge_point = $("#charge_point").val();
	    const mem_idx = ${user.mem_idx}; // 서버에서 제공한 변수 사용
	
	    $.ajax({
	        url: "transaction_charge.do",
	        type: "POST",
	        data: {
	            "charge_point": charge_point,
	            "mem_idx": mem_idx
	        },
	        dataType: "json",
	        success: function(response) {
	            $("#user_name").text(response.mem_name);
	            $("#user_point").text(response.mem_point);
	        },
	        error: function(err) {
	            alert("에러: " + err.responseText);
	        }
	    });
	}//end:charge()
	
</script>

<script type="text/javascript">
	
	function refreshAuctionPoint() {
	    $.ajax({
	        url: "get_latest_prices.do",
	        success: function(res_data) {
	            $("#auction_point").val(res_data.latest_price);
	        },
	        error: function(err) {
	            console.error("Error fetching latest price:", err.responseText);
	        }
	    });
	}
	
	// 1초마다 refreshAuctionPoint 함수 호출
	setInterval(refreshAuctionPoint, 1000);
	
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

<div id="box">
<form class="form-inline">

    <c:forEach var="vo" items="${ list2 }">
	<div id="gong"><span>${ vo.reg_name }</span></div>	
	<table class="table">
    <tr style="background: #131319; height: 50px;">
        <th>아이템</th>
		<th style="padding: 8px 0 8px 70px;">아이템옵션</th>        
        <th style="padding-left:40px;">등록시간</th>
        <th style="padding-left:40px;">경매 마감시간</th>
        <th style="padding-left:200px;" width="500px;">현재 입찰가</th>
    </tr>
    
       <tr>
           <td>
               <div class="item_image">
                   <img src="../resources/images/${ vo.filename }"><br>
                   <span>${ vo.reg_name }</span>
               </div>
           </td>
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
           	<%-- 즉시 판매가 <input id="transaction_point" class="form-control" value="${ vo.reg_price }"><br><br>
               	<input type="button" class="btn btn-success" value="즉시구매" onclick="transaction();"><br><br --%>

           <td>${ fn:substring(vo.reg_date,0,19) }</td>
           <td>${ fn:substring(vo.end_date,0,19) }</td>
           <td style="padding-top: 0 !important;">           	
               <h3 style="margin-top: 0;">입찰 방식</h3>
               <hr style="margin-top: 0; margin-bottom: 10px;">
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
					<input id="auction_point" class="form-control" value="${ vo.auction_price }">
				</div>
				<div id="usercard-cp6">
					<span>CP</span>
				</div>
				<div id="usercard-cp7">
					<input id="" type="button" class="btn" value="낙찰"
				   		onclick="location.href='delete_auction.do?reg_idx=${ vo.reg_idx}'">				
				</div>
			</div>
               
					<br>
				<div id="bid-btn">
					<div style="color: #999999;">추가 입찰할 만큼의 금액을 클릭하거나 입력하세요.</div>
					<hr style="margin-bottom: 5px;">
					<input type="button" class="btn" value="100"
						onclick="bidding_auction_button('100');">
					<input type="button" class="btn"
						value="500" onclick="bidding_auction_button('500');">
					<input type="button" class="btn"
						value="1000" onclick="bidding_auction_button('1000');">
					<input type="button" class="btn"
						value="5000" onclick="bidding_auction_button('5000');">
					<input id="bidding_point" class="form-control" value="0">
					<input type="button" class="btn" value="응찰"
						onclick="bidding_auction(${ vo.reg_idx });">
				</div> 
			<script>
				// 클릭된 버튼의 값을 입력 필드에 추가하는 함수
				function bidding_auction_button(amount) {
					// 입력 필드를 가져옵니다.
					var inputField = document
							.getElementById('bidding_point');

					// 입력 필드의 현재 값과 클릭된 버튼의 값을 더하여 업데이트합니다.
					var currentValue = parseInt(inputField.value); // 기존 값 정수로 변환
					var newValue = currentValue + parseInt(amount); // 새로운 값 계산

					// 입력 필드에 새로운 값을 설정합니다.
					inputField.value = newValue;
				}
			</script>
			</td> 
       </tr>
	</table>
    </c:forEach>
				<!-- 충전하실 금액 : <input id="charge_point" class="form-control">
		       	<input type="button" class="btn btn-danger" value="충전" onclick="charge();"> -->
</form>
</div>
           			
<!-- footer 선일 작업 -->
<div id="footer-content-tool">
	<div id="footer-content">
		<div id="footer-content-sub">
			<div id="footer-content-sub1">
				<span id="footer-content-sub1-1">주식회사 디션</span> <span
					id="footer-content-sub1-2">서울 관악구 남부순환로 1820 에그엘로우 7층 ㅣ 대표
					김찬종 ㅣ 사업자등록번호 111-11-11111</span><br> <span
					id="footer-content-sub1-3">문의 kkcpc@globalit.com ㅣ
					통신판매업신고 제 2024-서울관악-99999 호 ㅣ 개인정보 보호 책임자 박정환</span><br>
			</div>
		</div>

		<div id="footer-content-sub2">
			<div id="footer-content-sub1">
				<span id="footer-content-sub1-1">디션 지원실 1533-4636</span> <span
					id="footer-content-sub1-2">업무시간 ㅣ 월 ~ 금 AM 09:30 ~ PM 6:20
					(주말 공휴일 휴무) </span><br> <span id="footer-content-sub1-3">점심시간
					ㅣ PM 12:20 ~ PM 1:30</span><br>
			</div>
		</div>


		<div id="footer-content-sub3">
			<div id="footer-content-sub22">
				<span id="footer-content-sub2-2">웹사이트에 게시된 이메일 주소가 전자우편 수집
					프로그램이나 그 밖의 기술적 장치를 이용하여 무단으로</span><br> <span
					id="footer-content-sub2-2">수집되는 것을 거부하며, 이를 위반 시 정보통신망 법에
					의해 형사 처벌됨을 유념하시기 바랍니다.</span><br> <span id="footer-content-sub2-3">Copyright
					(c) 2002 HEXASCUBE Inc. All Rights Reserved.</span><br>
			</div>
		</div>

		<div id="footer-content-sub4">
			<div id="footer-content-sub22">
				<span id="footer-content-sub4-2">아직 계정이 없으신가요?</span><span
					id="footer-content-sub4-3">회원 가입하기</span><br> <span
					id="footer-content-sub4-2">궁금한점이 있으신가요?</span><span
					id="footer-content-sub4-3"> 디션 도움말</span><br>
				<div id="footer-content-sub4-img">
					<img alt="" src="../resources/images/디션.png">
				</div>
			</div>
		</div>
	</div>
</div>
</body>
</html>