<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../resources/css/bid_reg_form.css">
<!-- jQuery -->
<script src="https://code.jquery.com/jquery-3.7.1.js"></script>

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
                    <!-- <c:if test="${ empty sessionScope.user }"> -->
                    <div class="login-icon">
                        <a style="cursor: pointer;" href="../member/login_form.do"> 
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
    <div id="content">
    <div id="bid-box">
    
        <div style="height: 50px; background: #252830;"></div>
        <div id="bid-title">
            <span style="margin-right: 670px; padding-left: 1rem;">시대의 왕관 코로나</span>
            <span style="font-size: 15px;">일길동</span>
        </div>
        <br>
        <div id="bid-content">
            <div class="item-info">
                <div id="selltime-info">
                    <div id="reg-start" class="reg">
                        판매시작 &nbsp;&nbsp;&nbsp;&nbsp; 2024.07.28.19.37.30                   
                    </div>
                    <hr>
                    <div id="reg-end" class="reg">
                        판매종료  &nbsp;&nbsp;&nbsp;&nbsp;  
                        <div id="time" style="display: inline-block;">03분00초</div>
                        남음
                    </div>
                </div>
<script type="text/javascript">
    function startTimer(duration, display) {
        var timer = duration, minutes, seconds;
        // 저장된 타이머 값이 있는 경우 로드
        if (localStorage.getItem('remainingTime')) {
            timer = parseInt(localStorage.getItem('remainingTime'), 10);
        }
        var interval = setInterval(function () {
            minutes = parseInt(timer / 60, 10);
            seconds = parseInt(timer % 60, 10);
            minutes = minutes < 10 ? "0" + minutes : minutes;
            seconds = seconds < 10 ? "0" + seconds : seconds;
            display.textContent = minutes + "분 " + seconds + "초";
            if (--timer < 0) {
                clearInterval(interval);
                timer = 0;
                localStorage.removeItem('remainingTime');
            } else {
                localStorage.setItem('remainingTime', timer);
            }
        }, 1000);
    }
    
    window.onload = function () {
        var timerMinutes = 60 *  3   /* 변수값 불러오기 */,
            display = document.querySelector('#time');
        // 초기 표시를 비워놓고 타이머를 설정하는 동안 잠시 동안 숨기기
        display.textContent = '로딩 중...';
        // 0.5초 후에 타이머를 시작
        setTimeout(function() {
            startTimer(timerMinutes, display);
        }, 500);
    };
</script> 
                <div id="main-info">
                    <div id="item-image-box">
                        <img src="../resources/images/시대의 왕관 코로나.jpg">
                    </div>
                    <div id="item-box2">
                        <div id="gibon_option_font">
                            <span>거래번호 : 52</span><br>
                            <div class="item_tag">
                                <a class="btn-0">&ensp;투구&ensp;</a>
                            </div>
                            <div id="item_name_gongback">
                                <span id="item_name"><b>시대의 왕관 코로나</b></span>
                            </div>
                            <br>
                            <hr>
                            <div class="item_tag">
                                <a class="btn-0">&ensp;익셉셔널&ensp;</a> <a class="btn-1">&ensp;유니크&ensp;</a>
                            </div>
                            <span>수리가능</span><br>
                            <!-- 소켓 유무에 따른 출력 변화 -->
                            <span>2소켓</span><br>
                        </div>
                    </div>
                    <div id="item-box3">
                        <div id="gibon_option_font">
                            <!-- 해당 값에 값이 0이거나 이름이 null이라면 출력하지 않겠다. -->
                            <span>방어력 399</span><br> 
                            <span>필요 힘 174</span><br> 
                            <span>요구 레벨 82</span><br> <br>
                            <div id="option_font">
                                <!-- 해당 값에 값이 0이거나 이름이 null이라면 출력하지 않겠다. -->
                                <span>파괴 불가 0</span><br> 
                                <span>모든 기술+ 1</span><br> 
                                <span>타격 회복 속도 증가(%) 30</span><br> 
                                <span>방어력 증가(%) 50</span><br> 
                                <span>방어력+150</span><br> 
                                <span>모든 저항+ 30</span><br> 
                                <span>받는 물리 피해 감소(%) 15</span><br>
                            </div>
                        </div>
                    </div>
                </div>
                
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
                        <span><fmt:formatNumber type="currency" value="${ vo.r_price }" currencySymbol=""/></span>
                    </div>
                    <div id="usercard-cp6">
                        <span>CP</span>
                    </div>
                    <div id="usercard-cp7">
                        <input type="button" class="btn btn-warning" value="즉시구매" onclick="buy();">
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
                    <c:forEach var="vo" items="${ list2 }">
                        <input id="auction_point" class="form-control" value="${ vo.r_auction_price }">
                    </c:forEach>  
                    </div>
                    <div id="usercard-cp6">
                        <span>CP</span>
                    </div>
                    <div id="usercard-cp7">
                        <input type="button" class="btn btn-danger" value="입찰하기"
                            onclick="bidding_auction();">
                    </div>
                </div>
                <div id="bid-btn">
                    <div style="margin-left: 650px; color: #999999;">추가 입찰할 만큼의 금액을 클릭하거나 입력하세요.</div>
                    <hr style="margin-left: 645px; margin-bottom: 5px;">
                    <input type="text" id="additional-amount" value="0">                  
                    <input type="button" class="btn" value="5000CP" onclick="bidding_button('5000');">
                    <input type="button" class="btn" value="1000CP" onclick="bidding_button('1000');">
                    <input type="button" class="btn" value="500CP" onclick="bidding_button('500');">
                    <input type="button" class="btn" value="100CP" onclick="bidding_button('100');">
                </div>
            <script>
                // 클릭된 버튼의 값을 입력 필드에 추가하는 함수
                function bidding_button(amount) {
                    // 입력 필드를 가져옵니다.
                    var inputField = document
                            .getElementById('additional-amount');
                    // 입력 필드의 현재 값과 클릭된 버튼의 값을 더하여 업데이트합니다.
                    var currentValue = parseInt(inputField.value); // 기존 값 정수로 변환
                    var newValue = currentValue + parseInt(amount); // 새로운 값 계산
                    // 입력 필드에 새로운 값을 설정합니다.
                    inputField.value = newValue;
                }
            </script>
        </div>    
    </div>
    </div>
</body>
</html>