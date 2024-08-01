<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
	<html>
		<head>
			<meta charset="UTF-8">
			<title>디아블로2 게시판 글 작성</title>
			
			<!--Bootstrap 3.x -->
			<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
			<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
			<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
			
			<!-- CSS -->
			<link rel="stylesheet" href="../resources/css/main.css">
			<link rel="stylesheet" href="../resources/css/member/mypage.css">
			<link rel="stylesheet" href="../resources/css/board.css">
			
			<!-- 아이콘 -->
			<link rel='stylesheet' href='https://cdn-uicons.flaticon.com/2.5.1/uicons-regular-rounded/css/uicons-regular-rounded.css'>

			<script type="text/javascript">
				function send(f){
					let b_subject = f.b_subject.value.trim();
					let b_content = f.b_content.value.trim();
					
					if(b_subject == ''){
						alert("제목을 입력하세요");
						f.b_subject.value = "";
						f.b_subject.focus();
						return;
					}
					if(b_content == ''){
						alert("내용을 입력하세요");
						f.b_content.value = "";
						f.b_content.focus();
						return;
					}
					
					f.action = "insert.do";
					f.submit();	//
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
			                        <a onclick="location.href='../member/mypage.do?mem_idx=${user.mem_idx}'"
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
			                        <a href="list.do">
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
			    
			    <div id="main-content" style="padding-top: 10px;">
        
			        <div id="commercial" style="text-align: center; margin-top: 30px; margin-bottom: 20px;">
			            <img style="width: 1300px; height: 300px;" src="../resources/images/banner.PNG">
			        </div>
			        <div id="headline">
			        	<strong id="headline-text">
			        		<img src="../resources/images/mypage.PNG">
			        		커뮤니티
			        		<em id="piperline">
			        			|
			        		</em>
			        		<span>커뮤니티</span>
			        		<div class="mypage-image1">
				        		<img src="../resources/images/cc-category-titlepin.png" style="height: 11px; width: 11px;">
				        	</div>
				        	<div class="mypage-image2">
				        		<img src="../resources/images/cc-category-titleline.png" style="width: 180px;">
				        	</div>
				        	<div class="mypage-image3" style="margin-left: 185px !important;">
				        		<img src="../resources/images/cc-category-titlepin.png" style="height: 11px; width: 11px;">
				        	</div>
			        	</strong>
			        </div>
			    
			    <h3 id="title">
					<i class="fi fi-rr-home-heart"></i>
					게시판
				</h3>
			    
				<form>
					<div id="insert-box">
						<!--Bootstrap Panel -->
						<div class="panel">
						      <div class="panel-heading"><h4>새 글쓰기</h4></div>
						      <div class="panel-body">
						      	<div id="panel-title">
						      		<h4>제목:</h4>
						      		<input class="form-control" name="b_subject" placeholder="글 제목 입력">
						      	</div>
						      	<div>
						      		<h4>내용:</h4>
						      		<textarea class="form-control" rows="10" name="b_content"></textarea>
						      	</div>
						      	<div style="margin-top: 10px;">
						      		<input id="return-btn" class="btn" type="button" value="목록" onclick="location.href='list.do'">
						      		<input class="btn-done" type="button" value="글올리기" onclick="send(this.form);">
						      	</div>
						      </div>
						</div>
					</div>
				</form>
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
		</body>
	</html>