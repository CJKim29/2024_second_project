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

<script type="text/javascript">

	function search(){
		
		const category = $("#category").val();
		
		$("#grade").val("all");
		
		//Ajax로 요청
		$.ajax({
			url		:	"list_category.do",
			data	:	{"category":category},	//item/list.do?deptno=10
			success	:	function(res_data){
				
				$("#disp").html(res_data);
			},
			error	:	function(err){
				alert(err.responseText)
			}
		});
	}//end:search()
	
	function search_grade(){
		
		const grade = $("#grade").val();
		
		$("#category").val(0);
		
		//Ajax로 요청
		$.ajax({
			url		:	"list_grade.do",	//ItemListJobAction
			data	:	{"grade":grade},		//item/list_job.do?grade=노멀
			success	:	function(res_data){
				
				$("#disp").html(res_data);
			},
			error	:	function(err){
				alert(err.responseText)
			}
		});
	}//end:search_grade()
	
 	function search_all(){
	  
 		const category = $("#category").val() || "all";
 	    const grade = $("#grade").val() || "all";
	  
	  //Ajax로 요청
	  $.ajax({
		  url		:	"list_condition.do",  // ITemListConditionAction  
		  data		:	{							
			  				"category":category,
			  				"grade":grade
			  			},   // item/list_condition.do?category1=무기&category2=방어구&grade=등급
		  success	:	function(res_data){
			  
			  $("#disp").html(res_data);
		  },
		  error		:	function(err){
			  alert(err.responseText);
		  }
	  });
  }//end:serach_all()
</script>

<script type="text/javascript">
	
	function find(){
		
		let search_text	= $("#search_text").val().trim();
		
		//전체검색이 아닌데 검색어가 비어있으면
		if(search_text==""){
			alert("검색어를 입력하세요");
			$("#search_text").val("");
			$("#search_text").focus();
			return;
		}
		/* 
		//자바스크립트 이용해서 호출
		location.href="item/list_search.do?&search_text=" + 
										  //자바스크립트 인코딩방식
										  encodeURIComponent(search_text, "utf-8");
		 */
		 
		$.ajax({
			  url		:	"list_search.do",  // ITemListConditionAction  
			  data		:	{							
				  				"search_text":search_text
				  			},   
			  success	:	function(res_data){
				  
				  $("#disp").html(res_data);
			  },
			  error		:	function(err){
				  alert(err.responseText);
			  }
		  }); 
	}//end:find()

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
<form class="form-inline">

	종류별 검색:<select class="form-control" id="category">
				<option value="all">전체보기</option>
				<option value="갑옷">갑옷</option>
				<option value="투구">투구</option>
				<option value="방패">방패</option>
				<option value="장갑">장갑</option>
				<option value="신발">신발</option>
				<option value="벨트">벨트</option>
				<option value="반지">반지</option>
				<option value="목걸이">목걸이</option>
				<option value="단도">단도</option>
				<option value="한손검">한손검</option>
				<option value="양손검">양손검</option>
				<option value="한손도끼">한손도끼</option>
				<option value="양손도끼">양손도끼</option>
				<option value="미늘창">미늘창</option>
				<option value="창">창</option>
				<option value="활">활</option>
				<option value="석궁">석궁</option>
				<option value="한손지팡이">한손지팡이</option>
				<option value="양손지팡이">양손지팡이</option>
				<option value="철퇴">철퇴</option>
				<option value="홀">홀</option>
			</select>
			<input class="btn btn-primary" type="button" value="종류별검색" onclick="search();">
			
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

	
	등급:<select class="form-control" id="grade">
				<option value="all">전체보기</option>
				<option value="노멀">노멀</option>
				<option value="익셉셔널">익셉셔널</option>
				<option value="엘리트">엘리트</option>
			</select>
			<input class="btn btn-primary" type="button" value="등급별검색" onclick="search_grade();">
			
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			
	<!-- 방어력:<select class="form-control" id="defence">
			<option value="all">전체</option>
			<option value="47">47</option>
			<option value="48">48</option>
			<option value="49">49</option>
		</select>
			
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			
	방어력증가:<select class="form-control" id="hire_year_10">
			<option value="0">전체</option>
			<option value="10">10</option>
			<option value="15">15</option>
			<option value="20">20</option>
		</select> -->
			
			<input type="button" class="btn btn-warning" value="전체조건검색" onclick="search_all();">
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			
			<input id="search_text" class="form-control">
	       	<input type="button" class="btn btn-info" value="검색" onclick="find();">
	<hr>
	<div id="disp"></div>
</form>

<!-- footer 선일 작업 -->
<div id="footer-content-tool">
    <div id="footer-content">
        <div id="footer-content-sub">
            <div id="footer-content-sub1">
                <span id="footer-content-sub1-1">주식회사 디션</span> <span
                    id="footer-content-sub1-2">서울 강남구 테헤란로33길 33 태양빌딩 2층 ㅣ 대표
                    정훈용 ㅣ 사업자등록번호 117-86-02090</span><br> <span
                    id="footer-content-sub1-3">문의 contact@chaoscube.co.kr ㅣ
                    통신판매업신고 제 2021-서울강남-06404 호 ㅣ 개인정보 보호 책임자 송병주</span><br>
            </div>
        </div>
        <div id="footer-content-sub2">
            <div id="footer-content-sub1">
                <span id="footer-content-sub1-1">디션 지원실 1533-4636</span> <span
                    id="footer-content-sub1-2">업무시간 ㅣ 월 ~ 금 AM 09:00 ~ PM 6:00
                    (주말 공휴일 휴무) </span><br> <span id="footer-content-sub1-3">점심시간
                    ㅣ PM 12:00 ~ PM 1:00</span><br>
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