<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>디아블로2 마이페이지</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="../resources/css/member/main.css">
<link rel="stylesheet" href="../resources/css/member/mypage.css">

<link rel='stylesheet' href='https://cdn-uicons.flaticon.com/2.5.1/uicons-regular-rounded/css/uicons-regular-rounded.css'>
<link rel='stylesheet' href='https://cdn-uicons.flaticon.com/2.5.1/uicons-thin-rounded/css/uicons-thin-rounded.css'>
<script src="http://code.jquery.com/jquery-latest.js"></script>

<script type="text/javascript">
	$(document).ready(function () {
	    $("#branch-menu>ul>li").each(function () {
	        $(this).click(function () {
	            $(this).addClass("selected");                      
	            $(this).siblings().removeClass("selected");  
	        });
	    });
	});


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
	            <img alt="" src="../resources/images/디션.png">
	        </div>
	        <div id="login-main">
	            <div id="login-btn">
	                <!-- 로그인 화면 전환 -->
	                <!-- 로그인 안되었을 때 session ~~ -->
	                <!-- <c:if test="${ empty sessionScope.user }"> -->
	                <div class="login-icon">
	                    <a style="cursor: pointer;" href="#"> 
	                        <!-- <img src="../image/user_icon.png"> -->
	                        <i class="user-circle"></i>
	                        로그인
	                    </a>                  
	                </div>
	                    <a href="#">회원가입</a>
	                <!-- </c:if> -->
	                <!-- 로그인 되었을 때 session 살리기~~ -->
	                <!--  <c:if test="${ not empty sessionScope.user }">
	                    <span id="user_ment">${ sessionScope.user.mem_nickname }님</span>
	                로그아웃시 실행될 onclick 함수
	                    <a id="logout" style="cursor:pointer;">로그아웃</a>
	                </c:if>
	                로그인 계정이 관리자일 경우 회원관리 버튼 생성
	                <c:if test="${ user.mem_grade eq '관리자' }">
	                    <a href="../member/list.do">회원관리</a>
	                </c:if>
	                <c:if test="${ user.mem_grade eq '일반' }">
	                    <a onclick="location.href='../member/modify_form.do?mem_idx=${user.mem_idx}'"
	                     style="cursor:pointer;">내정보</a>
	                </c:if> -->     
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
				        <a href="#">
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
        
    <div id="main-content" style="padding-top: 10px;">
        
        <div id="commercial" style="text-align: center; margin-top: 30px; margin-bottom: 20px;">
            <img style="width: 1300px; height: 300px;" src="../resources/images/banner.PNG">
        </div>
        <div id="headline">
        	<strong id="headline-text">
        		<img src="../resources/images/mypage.PNG">
        		나의 디션
        		<em id="piperline">
        			|
        		</em>
        		<span>마이페이지</span>
        		<div class="mypage-image1">
	        		<img src="../resources/images/cc-category-titlepin.png" style="height: 11px; width: 11px;">
	        	</div>
	        	<div class="mypage-image2">
	        		<img src="../resources/images/cc-category-titleline.png" style="width: 200px;">
	        	</div>
	        	<div class="mypage-image3">
	        		<img src="../resources/images/cc-category-titlepin.png" style="height: 11px; width: 11px;">
	        	</div>
        	</strong>
        </div>
        <div class="branch">
        	<div id="branch-panel">
        		<div id="branch-menu">
        			<ul>
        				<li>
        					<a href="#">
        						<i class="fi fi-rr-user" style="padding-top: 2px;"></i>
        						개인정보
        					</a>
        				</li>
        				<li>
        					<a href="#">
        						<i class="fi fi-tr-auction"></i>
        						나의 경매
        					</a>
        				</li>
        				<li>
        					<a href="#">
        						<i class="fi fi-tr-document" style="padding-top: 3px;"></i>
        						참여한 경매
        					</a>
        				</li>
        			</ul>
        		</div>
        	</div>
        	<div id="branch-contents">
        		<div id="profile">
        			<ul>
        				<li>
        					<a>마이페이지</a>
        				</li>
        			</ul>
        		</div>
        		<!-- <hr id="hr1"> -->
        		<div id="tablebox">
        			<ul>
        				<li class="box-first">이미지</li>
        				<li id="box-second" class="li-value">
        					<div class="box1">
        						<div id="profile-box">
        							<img id="profile-photo" src="../resources/images/${ vo.mem_filename }">
        						</div>
        					</div>
        				</li>
        			</ul>
        			<ul>
        				<li class="box-first">이름</li>
        				<li class="li-value">
        					<strong>
	        					${ vo.mem_id }
	        					홍길동
	        				</strong>
        				</li>
        			</ul>
        			<ul>
        				<li class="box-first">아이디</li>
        				<li class="li-value">
        					<strong>
        						${ vo.mem_id }
        					</strong>
        				</li>
        			</ul>
        			<ul>
        				<li class="box-first">비밀번호</li>
        				<li class="li-value">
        					<strong>
        						${ vo.mem_pwd }
        					</strong>
        				</li>
        			</ul>
        			<ul>
        				<li class="box-first">닉네임</li>
        				<li class="li-value">
        					<strong>
        						${ vo.mem_nickname }
        					</strong>
        				</li>
        			</ul>
        			<ul>
        				<li class="box-first">우편번호</li>
        				<li class="li-value">
        					<strong>
        						${ vo.mem_zipcode }
        					</strong>
        				</li>
        			</ul>
        			<ul id="final">
        				<li class="box-first">주소</li>
        				<li class="li-value">
        					<strong>
        						${ vo.mem_addr } 서울시 관악구 남부순환로 에그옐로우 14층 %%아파트 101동
        					</strong>
        				</li>
        			</ul>
        		</div>
        		<input id="modify-btn" type="button" value="수정하기" onclick="location.href='../member/modify_form.do'">
        	</div>
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
    </div><!-- end - footer 정환 -->

</body>
</html>