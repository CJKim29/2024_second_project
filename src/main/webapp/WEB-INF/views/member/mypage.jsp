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

<link rel='stylesheet' href='https://cdn-uicons.flaticon.com/2.5.1/uicons-regular-rounded/css/uicons-regular-rounded.css'>
<link rel='stylesheet' href='https://cdn-uicons.flaticon.com/2.5.1/uicons-thin-rounded/css/uicons-thin-rounded.css'>
<script src="http://code.jquery.com/jquery-latest.js"></script>

<link rel="stylesheet" href="../resources/css/member/mypage.css">
<link rel="stylesheet" href="../resources/css/main.css">

<script type="text/javascript">

	// del에 삭제할 idx 넘기기 
	function del(mem_idx){
		
		// console.log(mem_idx,"삭제"); -> 정보 전달 되는지 확인
		
		if(confirm('정말 삭제하시겠습니까?')==false) return;
		
		// 삭제 요청
		location.href = "delete.do?mem_idx=" + mem_idx;		// MemberDeleteAction 만들기
		// 제약 사항 걸기? 만약 회원목록에서 본인을 삭제한다면 로그인 해제 되어야 함
		// 로그인(본인 수정/삭제 가능) -> 삭제 -> 본인 정보가 없느 ㄴ상황인데 로그인 되어 있는건 이상..-> 로그인 해제 시키기
		// 관리자는 본인 삭제 못하게 해야 함 -> 프로그램 최고 권한 관리자가 삭제 될 필요는 없으니까
		
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
	            <img alt="" src="../resources/images/디션.png">
	        </div>
	        <div id="login-main">
	            <div id="login-btn">
	                <!-- 로그인 화면 전환 -->
	                <!-- 로그인 안되었을 때 session ~~ -->
	                <!-- <c:if test="${ empty sessionScope.user }"> -->
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
	                <em id="piperline">
        				|
        			</em>
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
				        <a href="../board/list.do">
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
        		<span>개인정보</span>
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
        					<a href="mypage.do?mem_idx=${vo.mem_idx}">
        						<i class="fi fi-rr-user" style="padding-top: 2px;"></i>
        						개인정보
        					</a>
        				</li>
        				<li>
        					<a href="list.do">
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
        					<a>개인정보</a>
        				</li>
        				<input id="modify-btn" type="button" value="수정하기" onclick="location.href='modify_form.do?mem_idx=${vo.mem_idx}'">
        			</ul>
        		</div>
        		<!-- <hr id="hr1"> -->
        		
        		<form>
        		<!-- 회원번호 안 보이게 전송 -->            <!-- 따옴표 하는건 맞음.. -->
				<input type="hidden" name="mem_idx" value="${ vo.mem_idx }">
				
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
        						${ vo.mem_name }
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
        						${ vo.mem_addr }
        					</strong>
        				</li>
        			</ul>
        		</div>
        		<input id="delete-btn" type="button" value="회원탈퇴" onclick="del('${vo.mem_idx}');">
        		</form>
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

<script type="text/javascript">
	const anchorElements = document.querySelectorAll('#branch-menu > ul > li > a');
	
	anchorElements.forEach((anchor, index) => {
	    anchor.addEventListener('click', () => {
	        // 로컬 스토리지에 선택된 항목 저장
	        localStorage.setItem('selectedMenuIndex', index);

	        // 모든 li 요소에서 'selected' 클래스 제거
	        anchorElements.forEach(a => a.parentElement.classList.remove('selected1'));
	        anchorElements.forEach(a => a.classList.remove('selected2'));

	        // 클릭된 a 태그의 부모 li 요소에 'selected' 클래스 추가
	        anchor.parentElement.classList.add('selected1');
	        anchor.classList.add('selected2');
	    });
	});

	// 페이지 로드 시 로컬 스토리지에서 상태 복원
	window.addEventListener('DOMContentLoaded', () => {
	    const selectedIndex = localStorage.getItem('selectedMenuIndex');
	    if (selectedIndex !== null) {
	        const anchor = anchorElements[selectedIndex];
	        if (anchor) {
	        	anchorElements.forEach(a => a.parentElement.classList.remove('selected'));
	        	anchorElements.forEach(a => a.classList.remove('selected2'));
	            anchor.parentElement.classList.add('selected1');
	            anchor.classList.add('selected2');
	        }
	    }
	});
</script>
</body>
</html>