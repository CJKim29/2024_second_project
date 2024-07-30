<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
	<html>
		<head>
			<meta charset="UTF-8">
			<title>Insert title here</title>
			
			<!-- CSS -->
			<link rel="stylesheet" href="../resources/css/member/main.css">
			<link rel="stylesheet" href="../resources/css/member/mypage.css">
			
			<!--Bootstrap 3.x -->
			<link rel="stylesheet"
				href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
			<script
				src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
			<script
				src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
			
			
			<style type="text/css">
				#box{
					width: 1000px;
					margin : auto;
					margin-top: 50px;
				}
				#title{
					text-align: center;
					font-weight: bold;
					font-size: 28px;
					color:green;
					text-shadow: 1px 1px 1px black;
				}
				.b_subject{
					display: inline-block;
					width:350px;
					
					/* ellipsls 속성 */
					overflow: hidden;
					white-space: nowrap;
					text-overflow: ellipsis;
					word-break: break-all;
					
					vertical-align: middle;
				}
			</style>
			
			<script type="text/javascript">
				function insert_form(){
					// 로그인 여부 체크
					if("${empty user}" == "true"){
						
						if(confirm("글쓰기는 로그인 후 가능합니다\n로그인 하시겠습니까?") == false) return;
						
						// 로그인폼으로 이동
						location.href="../member/login_form.do";
						
						return;
					}
					
					// 새글 쓰기 폼 띄우기
					location.href="insert_form.do";
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
			<div id="box">
				<h3 id="title">::::게시판::::</h3>
				<div class="row" style="margin-top: 30px; margin-bottom: 10px;">
				  <div class="col-sm-4">
				  	<input class="btn btn-primary" type="button" value="글쓰기" onclick="insert_form();">
				  </div>
				 
				  <div class="col-sm-8" style="text-align: right;">
				  	<!-- 로그인이 안된경우 -->
				  	<c:if test="${ empty sessionScope.user }">
				 		<input class="btn btn-primary" type="button" value="로그인" onclick="location.href='../member/login_form.do'">
				 	</c:if>
				 	<!-- 로그인이 된경우 -->
				  	<c:if test="${ not empty sessionScope.user }">
				  		<b>${ user.mem_name }</b>님 환영합니다
				 		<input class="btn btn-primary" type="button" value="로그아웃" onclick="location.href='../member/logout.do'">
				 	</c:if>
				  </div>
				</div>
				  
				  <table class="table">
				  	<tr class="success">
				  		<th>번호</th>
				  		<th width="500">제목</th>
				  		<th>작성자</th>
				  		<th>작성일자</th>
				  		<th>조회수</th>
				  	</tr>
				  	
				  	<!-- 데이터가 없는 경우 -->
				  	<c:if test="${ empty list }">
				  		<tr>
				  			<td colspan="5" align="center">
				  				<font color="red">게시물이 없습니다</font>
				  			</td>
				  		</tr>
				  	</c:if>
				  	
				  	<!-- 데이터가 있는 경우 -->
				  	<!-- for(BoardVo vo : list -->
				  	<c:forEach var="vo" items="${ list }">
				  		<tr>
				  			<td>${vo.no}<%-- (${ vo.b_idx }) --%></td>
				  			<td>
				  			
				  				<!-- 답글이면 b_depth만큼 들여쓰기 -->
				  				<c:forEach begin="1" end="${ vo.b_depth }">
				  					&nbsp;&nbsp;&nbsp;
				  				</c:forEach>
				  				
				  				<!-- 답글이면 -->
				  				<c:if test="${ vo.b_depth ne 0 }">
				  					ㄴ
				  				</c:if>
				  				
				  				<!-- 삭제된 게시물 -->
				  				<c:if test="${ vo.b_use eq 'n' }">
				  					<font color = "red">(삭제)<span class="b_subject">${ vo.b_subject }</span></font>
				  				</c:if>
				  				
				  				<!-- 삭제안된 게시물 -->
				  				<c:if test="${ vo.b_use eq 'y' }">
				  					<span class="b_subject">
				  						<a href="view.do?b_idx=${ vo.b_idx }">
				  							${ vo.b_subject }
				  						</a>
				  					</span>
				  					
				  					<!-- 댓글갯수 뱃지 -->
				  					<c:if test="${ vo.cmt_count ne 0 }">
				  						<span class="badge">${ vo.cmt_count }</span>
				  					</c:if>	
				  				</c:if>
				  				
				  				
				  			</td>
				  			<td>${ vo.mem_name }</td>
				  			<td>${ vo.b_regdate }</td>
				  			<td>${ vo.b_readhit }</td>
				  		</tr>
				  	</c:forEach>
				  </table>
				  
				  <!-- pageMenu -->
				  <div style="text-align: center;">
				  	${ pageMenu }
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