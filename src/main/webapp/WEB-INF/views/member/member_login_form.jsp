<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>


<!-- 로그인 페이지 -->


<!-- css 연결 -->
<link rel="stylesheet" href="../resources/css/member/login_form.css">

<!-- BootStrap 3.x-->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>


<script type="text/javascript">

	function send(f){
		
		let mem_id  = f.mem_id.value.trim();
		let mem_pwd = f.mem_pwd.value.trim();
		
		if(mem_id==''){
			alert("아이디를 입력하세요");
			f.mem_id.value="";
			f.mem_id.focus();
			return;
		}
		
		if(mem_pwd==''){
			alert("비밀번호를 입력하세요");
			f.mem_pwd.value="";
			f.mem_pwd.focus();
			return;
		}
		
		f.action="login.do";	// 누구한테 보낼거냐 -> MemberLoginAction 만들어야 됨 
		f.submit();
		
	}// end: send()
	
</script>

<script type="text/javascript">

	//  화면이 배치가 완료되면 호출 
	// 1) js방식
	// window.onload = function(){};
	// 2) jQuery 방식
	$(document).ready(function(){
		
		setTimeout(showMessage,100);	// 0.1초 후에 메시지 띄워라
		
	});
	
	// id,pwd 잘못 입력 시 띄울 메세지 창
	function showMessage(){
		if("${ param.reason == 'fail_id'}"=="true"){		// el 방식 작성 -> 지금 여러 방법 혼용해서 쓰는 중이므로 el 작성 시 "" 요걸로 감싼 후 작성
			alert("아이디를 틀렸습니다");
		}
		
		if("${ param.reason == 'fail_pwd'}"=="true"){		// el 방식 작성 -> 지금 여러 방법 혼용해서 쓰는 중이므로 el 작성 시 "" 요걸로 감싼 후 작성
			alert("비밀번호를 틀렸습니다");
		}
		
		/* if(){
			alert("아이디가 없습니다\n회원가입하시겠습니까");
		} */
		///member/login_form.do?reason=session_timeout
		if("${ param.reason == 'session_timeout'}"=="true"){		// PhotoInsertAction에 대한 내용 추가(세션 만료 안내)
			alert("시간이 경과 되어 로그아웃 되었습니다\n다시 로그인 해주세요");
		}
		
	}

</script>

</head>

<body>

<form>
<input type="hidden" name="url" value="${ param.url }">  <!-- 세션 트래킹 -->
	<div id="box">
		<div class="form-group form-group-lg">
			<div class="form-group text1">							    <!-- url에 있는 파라미터 값 읽어서 넣어주는 것  -->
				<input type="text" class="form-control" name="mem_id" value="${ param.mem_id }" placeholder="아이디">
			</div>
			<div class="form-group text1">
				<input type="password" class="form-control" name="mem_pwd" placeholder="비밀번호">
			</div>
	
			<div class="checkbox" >
				&nbsp;<label><input type="checkbox">아이디 저장</label>	<!-- 기능 구현은 아직.. -->
			</div>
			<div class="login-btn">
		 		<input style="background-color: #2B2E36 !important;" type="button" class="btn btn-block btn-lg text-#999999"
		 			   value="로그인" onclick="send(this.form);">
			</div>
			
			<hr>
			<div class="membership_wrap">
				<div class="membership1">아직 회원이 아니시라면?</div>
				<div class="membership2">
					<a href="../member/insert_form.do"><span>회원가입 하러 가기&nbsp;→</span></a>
				</div>
			</div>
			
	<!-- 		<div>
				<span>아이디 찾기</span>
				<span>비밀번호 찾기</span>
			</div> -->
			
		</div>
	</div>
</form>
</body>
</html>