<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
	<html>
		<head>
			<meta charset="UTF-8">
			<title>디아블로2 게시글</title>
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
				function del(){
					if(confirm("정말 삭제하시겠습니까?") == false) return;
					
					location.href="delete.do?b_idx=${vo.b_idx}";
				}
				
				/* 댓글쓰기 기능 */
				function comment_insert(){
					// 로그인이 안되었으면 
					if("${empty user}" == "true"){
						if(confirm("로그인 후 댓글쓰기가 가능합니다\n로그인 하시겠습니까?") == false) return;
						
						//alert(location.href);
						
						// 로그인폼으로 이동
						location.href="../member/login_form.do?url=" + encodeURIComponent(location.href);
						
						return;
					}
					
					// 댓글쓰기 작업
					let cmt_content = $("#cmt_content").val().trim();
					if(cmt_content == ''){
						alert("댓글내용을 입력하세요");
						$("#cmt_content").val("");
						$("#cmt_content").focus();
						return;
					}
					
					// Ajax통해서 댓글 등록
					$.ajax({
						url			: "../comment/insert.do",
						data		: {
										"cmt_content" : cmt_content,
										"b_idx" : "${vo.b_idx}",
										"mem_idx" : "${user.mem_idx}",
										"mem_name" : "${user.mem_name}"
										},
						dataType	: "json",
						success		: function(res_data){
							// res_data = {"result" : true}
							
							// 작성했던 댓글 
							$("#cmt_content").val("");
							
							if(res_data.result == false){
								alert("댓글등록 실패");
								return;
							}
							
							comment_list(1);
						},
						error		: function(err){
							alert(err.responserText)
						}
					});
				}	// end:comment_insert()
				
				var g_page = 1;
				// 댓글목록 요청 
				function comment_list(page){
					g_page = page;
					$.ajax({
						url		: "../comment/list.do",
						data	: {"b_idx" : "${ vo.b_idx}", "page" : page},
						success	: function(res_data){
							$("#comment_display").html(res_data);
						},
						error	: function(err){
							alert(err.responseText);
						}
					});
				}	// end : comment_list()
				
				// 초기화 : 시작시
				$(document).ready(function(){
					// 현재 게시물에 달린 댓글목록 출력
					comment_list(1);
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
	        
			<div id="view-box">
				<h3 id="title" class="view-title">
					<i class="fi fi-rr-home-heart"></i>
					게시글
				</h3>
				<!--Bootstrap Panel -->
				<div class="view-panel">
				      <div class="view-panel-heading"><h4><b>${ vo.mem_name }</b>님의 글</h4></div>
				      <div class="view-panel-body">
				      	<div class="common subject">${ vo.b_subject }</div>
				      	<div class="common content" style="font-size: 17px;">${ vo.b_content }</div>
				      	<div class="common regdate">${ vo.b_regdate }</div>
				      	<div>
				      		<input id="view-btn" class="btn" type="button" value="목록" onclick="location.href='list.do'">
				      		
				      		<!-- 글의 주인만 수정/삭제 가능 -->
				      		<c:if test="${ vo.mem_idx eq user.mem_idx }">
					      		<input class="button btn-warning" type="button" value="수정하기" onclick="location.href='modify_form.do?b_idx=${vo.b_idx}'">
					      		<input class="button btn-danger" type="button" value="삭제하기" onclick="del();">
				      		</c:if>
				      	</div>
				      </div>
				</div>
				<h3 id="title" class="view-title">
					<i class="fi fi-rr-comment-alt-edit" id="cmt-icon"></i>
					댓글
				</h3>
				<!-- 댓글처리 -->
				<div class="row">
				  <div class="col-sm-10">
				  	<textarea rows="3" id="cmt_content" placeholder="댓글을 입력하세요"></textarea>
				  </div>
				  <div class="col-sm-2">
				  	<input id="btn_cmt_register" type="button" value="댓글쓰기" onclick="comment_insert();">
				  </div>
				</div>
				
				<hr id="cmt-line">
				<div id="comment_display"></div>
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
		</body>
	</html>