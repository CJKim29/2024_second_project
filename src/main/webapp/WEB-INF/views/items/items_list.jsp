<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>디아블로2 아이템 거래소</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="../resources/css/items_list.css">
<link rel="stylesheet" href="../resources/css/main.css">

<!-- jQuery -->
<script src="https://code.jquery.com/jquery-3.7.1.js"></script>

<script type="text/javascript">

	function sell_reg_form(){
		
		if("${ empty user }" == "true") {
			
			if(confirm("판매등록은 로그인 후 가능합니다 \n 로그인 하시겠습니까?")==false) return;
			
			location.href = "../member/login_form.do";
			
			return;
		}
			location.href = "sell_reg.do";
	}

</script>


<!-- 검색기능 넣기 이이이이이이이 선일작업 -->
<script type="text/javascript">

	var inputSource =[]; 
   
	var inputSource2 =[]; 

    $(function(){
	   
   	// getItem_name
   	$.ajax({
   		url  : "../items/getlist.do",
   		dataType:"json",
   		success:function(res_data){
   			for(let data of res_data.result){
   				inputSource.push(data);
   			}
   		},
   		error:function(err){
   			alert("검색정보를 가져오지 못했습니다.");
   		}
   	}); // end: getItem_name
   	
   	
   	// getOption_name1
   	$.ajax({
   		url  	: "../items/getlist2.do",
   		dataType:"json",
   		success	:function(res_data2){
   			for(let data2 of res_data2.result){
   				inputSource2.push(data2);
   			}
   		},
   		error	:function(err){
   			alert("검색정보를 가져오지 못했습니다.");
   		}
   	}); // end: getOption_name1
	   
   });
	
   /* 옵션검색을 넘길때의 로직 */
	function option_search(f) {
		
		let item_name = f.item_name.value.trim();
		let item_name_val = f.item_name_val.value.trim();
		
		let item_name2 = f.item_name2.value.trim();
		let item_name_val2 = f.item_name_val2.value.trim();
		
		let item_name3 = f.item_name3.value.trim();
		let item_name_val3 = f.item_name_val3.value.trim();
		
		let item_name4 = f.item_name4.value.trim();
		let item_name_val4 = f.item_name_val4.value.trim();
		
		let item_name5 = f.item_name5.value.trim();
		let item_name_val5 = f.item_name_val5.value.trim();
		
		let item_name6 = f.item_name6.value.trim();
		let item_name_val6 = f.item_name_val6.value.trim();
		
		// 입력값 option중 동일한 옵션이 있으면 알람
		if(item_name!='' && item_name2!='' && item_name3 !='' && item_name4!='' && item_name5!='' && item_name6!='') {
			if(item_name == item_name2 || item_name == item_name3 || item_name == item_name4 
			|| item_name == item_name5 || item_name == item_name6 
			|| item_name2 == item_name3 || item_name2 == item_name4
			|| item_name2 == item_name5 || item_name2 == item_name6
			|| item_name3 == item_name4 || item_name3 == item_name5
			|| item_name3 == item_name6 || item_name4 == item_name5
			|| item_name4 == item_name6 || item_name5 == item_name6) {
				
			alert("중복되는 아이템 옵션이 있습니다.\n다시 한 번 확인해주시고 검색해주세요.")
			return;
			}
		}
		
		if(item_name!='' && item_name2!='' && item_name3 !='' && item_name4!='' && item_name5!='') {
			if(item_name == item_name2 || item_name == item_name3 || item_name == item_name4 
			|| item_name == item_name5 || item_name2 == item_name3 || item_name2 == item_name4
			|| item_name2 == item_name5 || item_name3 == item_name4 || item_name3 == item_name5
			|| item_name4 == item_name5) {
				
			alert("중복되는 아이템 옵션이 있습니다.\n다시 한 번 확인해주시고 검색해주세요.")
			return;
			}
		}
		
		if(item_name!='' && item_name2!='' && item_name3 !='' && item_name4!='') {
			if(item_name == item_name2 || item_name == item_name3
			|| item_name1 == item_name4 || item_name2 == item_name3
			|| item_name2 == item_name4 || item_name4 == item_name4) {
				
			alert("중복되는 아이템 옵션이 있습니다.\n다시 한 번 확인해주시고 검색해주세요.")
			return;
			}
		}
		
		if(item_name!='' && item_name2!='' && item_name3 !='') {
			if(item_name == item_name2 || item_name == item_name3 || item_name2 == item_name3) {
				
			alert("중복되는 아이템 옵션이 있습니다.\n다시 한 번 확인해주시고 검색해주세요.")
			return;
			}
		}
		
		if(item_name!='' && item_name2!='') {
			if(item_name == item_name2) {
				
			alert("중복되는 아이템 옵션이 있습니다.\n다시 한 번 확인해주시고 검색해주세요.")
			return;
			}
		}		
		
		const item_shot = $("#item_shot").val();
		const item_type = $("#item_type").val();
		const item_grade = $("#item_grade").val();
		const item_im = $("#item_im").val();
		
		
		f.action = "../items/category.do";
		f.submit();
	}
	   
	function send(f) {
		
		// 입력값 검증
		let item_name = f.item_name.value.trim();
		
		if(item_name=='') {
			alert("검색어를 입력하세요!")
			f.item_name.value = "";
			f.item_name.focus();
			return;
		}
		
		f.action = "../items/search.do";// 전송대상(PhotoInsertAction)
		f.submit();
	}
		
</script>

<!-- jquery -->
<!-- <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css"> -->

<link href="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.css" rel="stylesheet"/>

<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>

<script type="text/javascript">

var $112 = $.noConflict(true);
	
  $112(document).ready(function() {
 	// item 설정 검색창
	/* const imagePath = '../resources/images/' + item.icon; */
	$112('#inputBox').autocomplete({
        source : inputSource, // autocomplete가 될 요소
        minLength : 0, // 0글자부터 배열안에 있는 글자를 인식한다.instance;
        select: function (event, ui) {
        	$("#itemName7").val(ui.item.value);
        	$("#inputBox").val(ui.item.value);
            return false;
        }
    });		
    
    var inputBox = document.querySelector('#inputBox'); // 변수 저장
    inputBox.addEventListener("focus", downArrow); // inputBox(검색창) 커서가 올라가면 함수실행
    
    // option 설정 검색창
	$112('#inputBox2').autocomplete({
        source : inputSource2, // autocomplete가 될 요소
        minLength : 0, // 0글자부터 배열안에 있는 글자를 인식한다.
        select : function(event, ui) {
        	
        	
        	
        	if($("#itemName").val()=="") {
        		
        		$("#itemName").val(ui.item.value);
        		
        	} else if($("#itemName2").val()=="") {
        		
        		$("#itemName2").val(ui.item.value);
        		
        	} else if($("#itemName3").val()=="") {
        		
        		$("#itemName3").val(ui.item.value);
        		
        	} else if($("#itemName4").val()=="") {
        		
        		$("#itemName4").val(ui.item.value);
        		
        	} else if($("#itemName5").val()=="") {
        		
        		$("#itemName5").val(ui.item.value);
        		
        	} else if($("#itemName6").val()=="") {
        		
        		$("#itemName6").val(ui.item.value);
        		
        	}
        	
        	
        	return false;
        }
    });
    
    var inputBox2 = document.querySelector('#inputBox2'); // 변수 저장
    inputBox2.addEventListener("focus", downArrow2); // inputBox(검색창)에 커서가 올라가면 함수실행

});

function downArrow() {
    var event = document.createEvent("Event");
    event.initEvent("keydown", true, true); // keydown 키로 이동가능
    event.keyCode = 40 // 자동완성 딜레이시간
    document.getElementById("inputBox").dispatchEvent(event);
};

function downArrow2() {
    var event = document.createEvent("Event");
    event.initEvent("keydown", true, true); // keydown 키로 이동가능
    event.keyCode = 40 // 자동완성 딜레이시간
    document.getElementById("inputBox2").dispatchEvent(event);
};

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
        
    <!-- content 정환 -->
    <div id="main-content" style="padding-top: 10px;">
        
        <div id="commercial" style="text-align: center; margin-top: 30px; margin-bottom: 20px;">
            <img style="width: 1300px; height: 300px;" src="../resources/images/banner.PNG">
        </div>
        <div id="item-search">
            <div id="search-title">
                <img src="../resources/images/bullet_1.png" style="width: 40px;">
                <p>아이템 거래소</p>
                <img src="../resources/images/piperline.PNG">
                <span>옵션별 검색, 별칭, 시세 확인</span> 
            </div>
            
            <div>
                <div class="tab-box">
                    <div class="tabs">
                    <ul id="search-tab-list">
                        <!-- 페이지 별로 active를 따로 줘야함 -->
                        <li class="cate-box cate1 active"><a href="#" >아이템 찾기</a></li>
                        <li class="cate-box" onclick="buy_list();"><a>나의 구매 현황</a></li>
                        <li class="cate-box" onclick="sell_list();"><a>나의 판매 현황</a></li>
                        <li class="cate-box cate4">
                            <a  href="#">찜</a>
                        </li>
                    </ul>
                    </div>
                    <div class="sell-btn">
                        <a id="sell-link" onclick="sell_reg_form();">아이템 판매하기</a>
                    </div>    
                </div>    
            </div>
            
            <div class="search-tab">
                <div class="tab-label">
                    <span style="color: #B89971; font-size: 15px;">게임 & 모드</span>
                </div>
                
                <div class="game-mode">
                    <div class="mode">
                        <div class="mode-title">
                            <div class="mode-sub">
                                <span style="color: #666666;; font-size: 12px;">Game</span>
                            </div>
                            <div style="color: #8D795C;">레저렉션 (D2R)</div>
                        </div>
                    </div>
                    <div class="mode">
                        <div class="mode-title">
                            <div class="mode-sub">
                                <span style="color: #666666;; font-size: 12px;">Platform</span>
                            </div>
                            <div style="color: #8D795C;">PC</div>
                        </div>
                    </div>
                    <div class="mode">
                        <div class="mode-title">
                            <div class="mode-sub">
                                <span style="color: #666666;; font-size: 12px;">Server (TimeZone)</span>
                            </div>
                            <div style="color: #8D795C;">아시아 (Asia)</div>
                        </div>
                    </div>
                    <div class="mode">
                        <div class="mode-title">
                            <div class="mode-sub">
                                <span style="color: #666666;; font-size: 12px;">Game Type</span>
                            </div>
                            <div style="color: #8D795C;">래더</div>
                        </div>
                    </div>
                    <div class="mode">
                        <div class="mode-title">
                            <div class="mode-sub">
                                <span style="color: #666666;; font-size: 12px;">Mode</span>
                            </div>
                            <div style="color: #8D795C;">소프트코어</div>
                        </div>
                    </div>
                </div>            
            </div> <!-- search-tab end -->
                
            <div id="item-filter">
                <div id="filter-title">
                    <span style="color: #8D795C; font-size: 15px;">아이템 필터</span>
                </div>
                <div class="filter-box" style="margin-top: -5px;">
                    <div class="filter-box1">
                        <div class="filter-box">
                            <div style="flex: 1;">
                                <div style="position: relative;">
                                    <div style="position: relative; width: 100%">
                                    
                                    
                                        <div class="search-window">
                                        <span>
                                        	<form>
                                            <input id="inputBox" name="item_name" type="text" placeholder="아이템 이름을 검색하세요.">
                                            <button id="inputBox_x" type="reset">
                                            	<img src="../resources/images/X.png" alt="버튼 이미지" style="width: 15px; height: 15px;">
                                            </button>
                                            <input type="image" src="../resources/images/search_sell.png" value="submit" onclick="send(this.form);" class="search-btn">
                                        	</form>
                                        </span>   
                                        </div>
                                        
                                        
                                    </div>
                                </div>
                            </div>
                            <div style="flex: 1;">
                            
                                    <div class="option-filter">
                                        <div id="option-filter-title">
						                	<span style="color: #8D795C; font-size: 15px;">옵션 필터</span>
						                </div>
                                        <input id="inputBox2" type="text" placeholder="원하시는 옵션을 선택해주세요. (선택하신 옵션은 자동으로 필터에 등록됩니다.)">
                                        <!-- 검색 기능 넣기 -->
                                    </div>
                            </div>                
                        </div>
                        

                        <!-- class="dropdown-menu" 속성 충돌 정환-선일 -->
                        <div class="sort-tab">
                                               
                            <div class="sort-element">
								<div class="dropdown">
									<input type="hidden" name="item_rarity" id="item_rarity">
									<input id="dropdown-btn0" class="btn dropdown-toggle" type="button"
										data-toggle="dropdown" value="품질">
									<ul class="dropdown-menu d-list" id="rarity">
										<li><a>유니크</a></li>
										<li><a>세트</a></li>
									</ul>
								</div>
                            </div>
                            
                            
							<script>
								// jQuery를 사용하여 문서가 준비되면 실행될 함수 설정
								$(document).ready(function() {
									// 드롭다운 메뉴의 각 항목을 클릭했을 때의 처리
									$('#rarity a').click(function() {
										// 클릭된 항목의 텍스트를 가져와서 버튼의 value로 설정
										var selectedText = $(this).text();
										$('#item_rarity').val(selectedText);
										$('#dropdown-btn0').val(selectedText);
									});
								});
							</script>
                            
                            
                            
                            <div class="sort-element">
								<div class="dropdown">
									<input id="dropdown-btn1" class="btn dropdown-toggle" type="button"
										data-toggle="dropdown" value="무기">
									<ul class="dropdown-menu d-list" id="weapon-type">
										<li><a>한손검</a></li>
										<li><a>양손검</a></li>
										<li><a>한손도끼</a></li>
										<li><a>양손도끼</a></li>
										<li><a>한손둔기</a></li>
										<li><a>양손둔기</a></li>
										<li><a>대거</a></li>
										<li><a>셉터</a></li>
										<li><a>완드</a></li>
										<li><a>재벌린</a></li>
										<li><a>투척무기</a></li>
										<li><a>폴암</a></li>
										<li><a>스피어</a></li>
										<li><a>스태프</a></li>
										<li><a>보우</a></li>
										<li><a>크로스보우</a></li>
									</ul>
								</div>
													
							<script>
								// jQuery를 사용하여 문서가 준비되면 실행될 함수 설정
								$(document).ready(function() {
									// 드롭다운 메뉴의 각 항목을 클릭했을 때의 처리
									$('#weapon-type a').click(function() {
										// 클릭된 항목의 텍스트를 가져와서 버튼의 value로 설정
										var selectedText = $(this).text();
										$('#item_type').val(selectedText);
										$('#dropdown-btn1').val(selectedText);
										$('#dropdown-btn2').val("방어구");
									});
								});
							</script>
								
                        <form>
								
                            </div>

                            <div class="sort-element">
								<div class="dropdown">
									<input type="hidden" name="item_type" id="item_type">
									<input id="dropdown-btn2" class="btn dropdown-toggle" type="button"
										data-toggle="dropdown" value="방어구">
									<ul class="dropdown-menu d-list" id="armor-type">
										<li><a>투구</a></li>
										<li><a>갑옷</a></li>
										<li><a>방패</a></li>
										<li><a>장갑</a></li>
										<li><a>부츠</a></li>
										<li><a>벨트</a></li>
									</ul>
								</div>
                            </div>
                            
                            
							<script>
								// jQuery를 사용하여 문서가 준비되면 실행될 함수 설정
								$(document).ready(function() {
									// 드롭다운 메뉴의 각 항목을 클릭했을 때의 처리
									$('#armor-type a').click(function() {
										// 클릭된 항목의 텍스트를 가져와서 버튼의 value로 설정
										var selectedText = $(this).text();
										$('#item_type').val(selectedText);
										$('#dropdown-btn2').val(selectedText);
										$('#dropdown-btn1').val("무기");
									});
								});
							</script>
							
							
                            <div class="sort-element">
								<div class="dropdown">
									<input type="hidden" name="item_grade" id="item_grade">
									<input id="dropdown-btn3" class="btn dropdown-toggle" type="button"
										data-toggle="dropdown" value="등급">
									<ul class="dropdown-menu d-list" id="grade-type">
										<li><a>노멀</a></li>
										<li><a>익셉셔널</a></li>
										<li><a>엘리트</a></li>
									</ul>
								</div>
                            </div>
                            
                            
							<script>
								// jQuery를 사용하여 문서가 준비되면 실행될 함수 설정
								$(document).ready(function() {
									// 드롭다운 메뉴의 각 항목을 클릭했을 때의 처리
									$('#grade-type a').click(function() {
										// 클릭된 항목의 텍스트를 가져와서 버튼의 value로 설정
										var selectedText = $(this).text();
										$('#item_grade').val(selectedText);
										$('#dropdown-btn3').val(selectedText);
									});
								});
							</script>
							
							
							<div class="sort-element">
								<div class="dropdown">
									<input type="hidden" name="item_shot" id="item_shot">
									<input id="dropdown-btn4" class="btn dropdown-toggle" type="button"
										data-toggle="dropdown" value="소켓">
									<ul class="dropdown-menu d-list" id="socket">
										<li><a>0</a></li>
										<li><a>1</a></li>
										<li><a>2</a></li>
										<li><a>3</a></li>
										<li><a>4</a></li>
										<li><a>5</a></li>
										<li><a>6</a></li>
									</ul>
								</div>
                            </div>
                            
                            
							<script>
								// jQuery를 사용하여 문서가 준비되면 실행될 함수 설정
								$(document).ready(function() {
									// 드롭다운 메뉴의 각 항목을 클릭했을 때의 처리
									$('#socket a').click(function() {
										// 클릭된 항목의 텍스트를 가져와서 버튼의 value로 설정
										var selectedText = $(this).text();
										$('#item_shot').val(selectedText);
										$('#dropdown-btn4').val(selectedText);
									});
								});
							</script>
							
							
                            <div class="sort-element">
								<div class="dropdown">
									<input type="hidden" name="item_im" id="item_im">
									<input id="dropdown-btn5" class="btn dropdown-toggle" type="button"
										data-toggle="dropdown" value="수리여부">
									<ul class="dropdown-menu d-list" id="im">
										<li><a>수리가능</a></li>
										<li><a>수리불가</a></li>
									</ul>
								</div>
                            </div>
                            
                            
							<script>
								// jQuery를 사용하여 문서가 준비되면 실행될 함수 설정
								$(document).ready(function() {
									// 드롭다운 메뉴의 각 항목을 클릭했을 때의 처리
									$('#im a').click(function() {
										// 클릭된 항목의 텍스트를 가져와서 버튼의 value로 설정
										var selectedText = $(this).text();
										$('#item_im').val(selectedText);
										$('#dropdown-btn5').val(selectedText);
									});
								});
							</script>
							
							
                            <div class="Initialization">
                                <input type="button" value="↻ 초기화" onclick="location.href='items/list.do'">
                            </div>                            
                        </div>
                        
                        <div class="sort-tab">
                            <div class="su-search">
	                        	<div id="su-search-title">
	                    			<span style="color: #8D795C; font-size: 13px;">옵션필터 1</span>
	               				</div>
                                <input id="itemName" name="item_name" type="text" placeholder="옵션명">
                                <input id="su-search-input2" name="item_name_val" type="text" placeholder="옵션수치">
                            </div>
                            <div class="su-search">
	                        	<div id="su-search-title">
	                    			<span style="color: #8D795C; font-size: 13px;">옵션필터 2</span>
	               				</div>
                                <input id="itemName2" name="item_name2" type="text" placeholder="옵션명">
                                <input id="su-search-input2" name="item_name_val2" type="text" placeholder="옵션수치">
                            </div>
                            <div class="su-search">
	                        	<div id="su-search-title">
	                    			<span style="color: #8D795C; font-size: 13px;">옵션필터 3</span>
	               				</div>
                                <input id="itemName3" name="item_name3" type="text" placeholder="옵션명">
                                <input id="su-search-input2" name="item_name_val3" type="text" placeholder="옵션수치">
                            </div>
                            
                            <div class="su-search">
	                        	<div id="su-search-title">
	                    			<span style="color: #8D795C; font-size: 13px;">옵션필터 4</span>
	               				</div>
                                <input id="itemName4" name="item_name4" type="text" placeholder="옵션명">
                                <input id="su-search-input2" name="item_name_val4" type="text" placeholder="옵션수치">
                            </div>
                            <div class="su-search">
	                        	<div id="su-search-title">
	                    			<span style="color: #8D795C; font-size: 13px;">옵션필터 5</span>
	               				</div>
                                <input id="itemName5" name="item_name5" type="text" placeholder="옵션명">
                                <input id="su-search-input2" name="item_name_val5" type="text" placeholder="옵션수치">
                            </div>
                            <div class="su-search">
	                        	<div id="su-search-title">
	                    			<span style="color: #8D795C; font-size: 13px;">옵션필터 6</span>
	               				</div>
                                <input id="itemName6" name="item_name6" type="text" placeholder="옵션명">
                                <input id="su-search-input2" name="item_name_val6" type="text" placeholder="옵션수치">
                            </div>
                            	
                            
                            
                            
                            <div class="sort-btn">
                                <input type="button" value="필터검색" onclick="option_search(this.form);">
                            </div>
                        </div>
                    </div>
                </div>
            </div> <!-- item-filter end -->
            
        	
        </form>    
            
        </div> <!-- item-search 정환 end -->

        
        
        
        
        
        <!-- item head -->
		<div id="item-box-head">
        
        <div id="item-box-head-text">
        	<div id="item-box-head-text-sub">
        	<img alt="" src="https://i.ibb.co/0YqhDTP/bullet-1.png">
        	<span><b>물품 목록</b></span>
        	<span id="item-box-head-text-sub-font"><b>ㅣ</b></span>
        	<span id="item-box-head-text2">총 <b>${ rowTotal }개</b> 검색 결과</span>
        	</div>
        	<img id="item-box-head-text-img" alt="" src="https://i.ibb.co/7bBf5zC/cc-category-titlepin.png">
        	<img id="item-box-head-text-img2" alt="" src="https://i.ibb.co/9hhcwxf/titleline.png">
        	<img id="item-box-head-text-img3" alt="" src="https://i.ibb.co/7bBf5zC/cc-category-titlepin.png">
        </div>
        
        <div id="item-box-head-text-2">
		<div class="dropdown">
		<button class="btn btn-success dropdown-toggle" type="button" data-toggle="dropdown">최근 등록일
		<span class="caret"></span></button>
			<ul class="dropdown-menu">
				<li><a href="#">종료 마감순</a></li>
				<li><a href="#">낮은 가격순</a></li>
				<li><a href="#">높은 가격순</a></li>
			</ul>
		</div>
        </div>
        
			<div class="item-box-head2">
			<span class="item-box-head2-font">Game</span><br>
			<span class="item-box-head2-font2">레저렉션 (D2R)</span>
			</div>
			<div class="item-box-head3">
			<span class="item-box-head3-font">→</span><br>
			</div>
			<div class="item-box-head2">
			<span class="item-box-head2-font">Platform</span><br>
			<span class="item-box-head2-font2">PC</span>
			</div>
			<div class="item-box-head3">
			<span class="item-box-head3-font">→</span><br>
			</div>
			<div class="item-box-head2">
			<span class="item-box-head2-font">Server(TimeZone)</span><br>
			<span class="item-box-head2-font2">아시아(Asia)</span>
			</div>
			<div class="item-box-head3">
			<span class="item-box-head3-font">→</span><br>
			</div>
			<div class="item-box-head2">
			<span class="item-box-head2-font">Game Type(TimeZone)</span><br>
			<span class="item-box-head2-font2">레더</span>
			</div>
			<div class="item-box-head3">
			<span class="item-box-head3-font">→</span><br>
			</div>
			<div class="item-box-head2">
			<span class="item-box-head2-font">Mode</span><br>
			<span class="item-box-head2-font21">소프트코어</span>
			</div>
			<div class="item-box-head4">
			<button type="button" class="btn btn-primary active">?&nbsp;&nbsp; 자주 찾는 질문</button>
			</div>
		</div>
		
		
		
		<!-- item_trade_list -->
		<c:forEach var="items" items="${ requestScope.list }">
        <form>
<div id="item-box">
			<div id="item-image-box">
			<img src="../resources/images/${ items.item_image }">
			</div>
			<div id="item-box2">
				<div id="gibon_option_font">
				<span>거래번호 : ${ items.item_idx }</span><br>
				<div class="item_tag"><a class="btn-0">&ensp;${ items.item_type }&ensp;</a></div>
				<c:if test="${ items.item_rarity == '유니크' }">
				<div id="item_name_gongback"><span id="item_name"><b>${ items.item_name }</b></span></div><br>
				</c:if>
				<c:if test="${ items.item_rarity == '세트' }">
				<div id="item_name_gongback"><span id="item_name-set"><b>${ items.item_name }</b></span></div><br>
				</c:if>
				<hr>
				<div class="item_tag"><a class="btn-0">&ensp;${ items.item_grade }&ensp;</a>
				
				<c:if test="${ items.item_rarity == '유니크' }">
				<a class="btn-1">&ensp;${ items.item_rarity  }&ensp;</a></div>
				</c:if>
				
				<c:if test="${ items.item_rarity == '세트' }">
				<a class="btn-7">&ensp;${ items.item_rarity  }&ensp;</a></div>
				</c:if>
				<span>${ items.item_im }</span><br>
				
				<!-- 소켓 유무에 따른 출력 변화 -->
				<c:if test="${ items.item_shot != 0 }">
				<span>${ items.item_shot }소켓</span><br>
				</c:if>
				<c:if test="${ items.item_shot == 0 }">
				<span>소켓없음</span><br>
				</c:if>
				</div>
			</div>
			<div id="item-box3">
				<div id="gibon_option_font">
				<!-- 해당 값에 값이 0이거나 이름이 null이라면 출력하지 않겠다. -->
				<c:if test="${ items.gibon_option1_name != null }">
				<span>${ items.gibon_option1_name } ${ items.gibon_option1_val }</span><br>
				</c:if>
				<c:if test="${ items.gibon_option2_name != null }">
				<span>${ items.gibon_option2_name } ${ items.gibon_option2_val }</span><br>
				</c:if>
				<c:if test="${ items.gibon_option3_name != null }">
				<span>${ items.gibon_option3_name } ${ items.gibon_option3_val }</span><br>
				</c:if>
				<c:if test="${ items.gibon_option4_name != null }">
				<span>${ items.gibon_option4_name } ${ items.gibon_option4_val }</span><br>
				</c:if>
				<c:if test="${ items.gibon_option5_name != null }">
				<span>${ items.gibon_option5_name} ${ items.gibon_option5_val }</span><br>
				</c:if>
				<c:if test="${ items.gibon_option6_name != null }">
				<span>${ items.gibon_option6_name } ${ items.gibon_option6_val }</span><br>
				</c:if>
				<c:if test="${ items.gibon_option7_name != null }">
				<span>${ items.gibon_option7_name } ${ items.gibon_option7_val }</span><br>
				</c:if>
				<br>
				<div id="option_font">
				<!-- 해당 값에 값이 0이거나 이름이 null이라면 출력하지 않겠다. -->
				<c:if test="${ items.item_o1_val != 0 || items.option_name1 != null }">
				<span>${ items.option_name1 } ${ items.item_o1_val }</span><br>
				</c:if>
				<c:if test="${ items.item_o2_val != 0 || items.option_name2 != null }">
				<span>${ items.option_name2 } ${ items.item_o2_val }</span><br>
				</c:if>
				<c:if test="${ items.item_o3_val != 0 || items.option_name3 != null }">
				<span>${ items.option_name3 } ${ items.item_o3_val }</span><br>
				</c:if>
				<c:if test="${ items.item_o4_val != 0 || items.option_name4 != null }">
				<span>${ items.option_name4 } ${ items.item_o4_val }</span><br>
				</c:if>
				<c:if test="${ items.item_o5_val != 0 || items.option_name5 != null }">
				<span>${ items.option_name5 } ${ items.item_o5_val }</span><br>
				</c:if>
				<c:if test="${ items.item_o6_val != 0 || items.option_name6 != null }">
				<span>${ items.option_name6 } ${ items.item_o6_val }</span><br>
				</c:if>
				<c:if test="${ items.item_o7_val != 0 || items.option_name7 != null }">
				<span>${ items.option_name7 } ${ items.item_o7_val }</span><br>
				</c:if>
				<c:if test="${ items.item_o8_val != 0 || items.option_name8 != null }">
				<span>${ items.option_name8 } ${ items.item_o8_val }</span><br>
				</c:if>
				</div>
				</div>
			</div>
			
			
			<!-- 거래회원 정보 기입란 -->
            <div id="item_sell">
                <div id="usercard-text">
                    <span class="usercard-text"><span>기본정보</span> 💡 ONLINE</span>
                </div>
                <div id="item_sell1">
                    <img class="usercard-image" src="https://image.chaoscube.co.kr/new/user/367949/profile/b6478d67-9a45-46da-8910-f9f74efcaa18.jpg"> 
                    <img class="usercard-grade" src="https://i.ibb.co/BNKG8b4/image.jpg">
                    <span class="usercard-name"><b>${ items.mem_name }</b></span>
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
                    <span class="item_clock2">${ fn:substring(items.a_regtime,0,19) }</span><br>
                    <span class="item_clock">종료예정</span>
                    <span class="item_clock2">2024.07.26</span>
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
                        <span><fmt:formatNumber type="currency" value="${ items.a_direct_price }" currencySymbol=""/></span>
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
                        <span><fmt:formatNumber type="currency" value="${ items.a_initial_price }" currencySymbol=""/></span>
                    </div>
                    <div id="usercard-cp6">
                        <span>CP</span>
                    </div>
                </div>
                
                <div id="usercard-btn">
                    <input type="button" value="자세히보기 →" 
                    onclick="location.href='bid_reg_form.do?item_idx=${ items.item_idx }'">
                </div>
            </div>
</div>
        </form>
        </c:forEach>
		
		<div style="text-align:center; margin-top:20px;">
			${ pageMenu }
		</div>
		
		<div id="footer">
		<div id="footer-head">
	        <div id="footer-tab">
	        	<span id="footer-tab-text">카오스큐브</span>
	        </div>
	        <div id="footer-tab2">
	        	<span id="footer-tab-text2">l</span>
	        </div>
	        <div id="footer-tab">
	            <span id="footer-tab-text">제휴문의</span>
	        </div>
	        
	        <div id="footer-tab2">
	        	<span id="footer-tab-text2">l</span>
	        </div>
	        
	        <div id="footer-tab">
	            <span id="footer-tab-text">이용약관</span>
	        </div>
	        
	        <div id="footer-tab2">
	        	<span id="footer-tab-text2">l</span>
	        </div>
	        
	        <div id="footer-tab">
	            <span id="footer-tab-text">개인정보 처리방침</span>
	        </div>
	        
	        <div id="footer-tab2">
	        	<span id="footer-tab-text2">l</span>
	        </div>
	        
	        <div id="footer-tab">
	            <span id="footer-tab-text">청소년 보호정책</span>
	        </div>
	        
	        <div id="footer-tab2">
	        	<span id="footer-tab-text2">l</span>
	        </div>
	        
	        <div id="footer-tab">
	            <span id="footer-tab-text">이메일 수집거부</span>
	        </div>
	        
	        
	        <div id="footer-tab">
	        <button class="btn btn2-success dropdown-toggle" type="button" data-toggle="dropdown">카큐 가이드
	        <span class="caret"></span></button>
			<ul class="dropdown-menu">
				<li><a href="#">종료 마감순</a></li>
				<li><a href="#">낮은 가격순</a></li>
				<li><a href="#">높은 가격순</a></li>
			</ul>
	        </div>
	        
	        
	        <div id="footer-tab">
	      	<button class="btn btn2-success dropdown-toggle" type="button" data-toggle="dropdown">안전거래 서비스
	        <span class="caret"></span></button>
			<ul class="dropdown-menu">
				<li><a href="#">종료 마감순</a></li>
				<li><a href="#">낮은 가격순</a></li>
				<li><a href="#">높은 가격순</a></li>
			</ul>
			</div>
        	</div>
		</div>
        
        <div id="footer-content-tool">
        <div id="footer-content">
        	<div id="footer-content-sub">
				<div id="footer-content-sub1">
				<span id="footer-content-sub1-1">주식회사 디션</span>
				<span id="footer-content-sub1-2">서울 강남구 테헤란로33길 33 태양빌딩 2층 ㅣ 대표 정훈용 ㅣ 사업자등록번호 117-86-02090</span><br>
				<span id="footer-content-sub1-3">문의 contact@chaoscube.co.kr ㅣ 통신판매업신고 제 2021-서울강남-06404 호 ㅣ 개인정보 보호 책임자 송병주</span><br>
	        	</div>
        	</div>
        	
        	<div id="footer-content-sub2">
				<div id="footer-content-sub1">
				<span id="footer-content-sub1-1">디션 지원실  1533-4636</span>
				<span id="footer-content-sub1-2">업무시간 ㅣ 월 ~ 금 AM 09:00 ~ PM 6:00 (주말 공휴일 휴무) </span><br>
				<span id="footer-content-sub1-3">점심시간 ㅣ PM 12:00 ~ PM 1:00</span><br>
	        	</div>
        	</div>
        	
        	
        	<div id="footer-content-sub3">
				<div id="footer-content-sub22">
				<span id="footer-content-sub2-2">웹사이트에 게시된 이메일 주소가 전자우편 수집 프로그램이나 그 밖의 기술적 장치를 이용하여 무단으로</span><br>
				<span id="footer-content-sub2-2">수집되는 것을 거부하며, 이를 위반 시 정보통신망 법에 의해 형사 처벌됨을 유념하시기 바랍니다.</span><br>
				<span id="footer-content-sub2-3">Copyright (c) 2002 HEXASCUBE Inc. All Rights Reserved.</span><br>
	        	</div>
        	</div>
        	
        	<div id="footer-content-sub4">
				<div id="footer-content-sub22">
				<span id="footer-content-sub4-2">아직 계정이 없으신가요?</span><span id="footer-content-sub4-3">회원 가입하기</span><br>
				<span id="footer-content-sub4-2">궁금한점이 있으신가요?</span><span id="footer-content-sub4-3"> 디션 도움말</span><br>
				<div id="footer-content-sub4-img">
					<img alt="" src="../resources/images/디션.png">
				</div>
	        	</div>
        	</div>
        </div>
        </div>
</body>
</html>