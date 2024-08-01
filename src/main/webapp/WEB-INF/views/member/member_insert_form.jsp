<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<!-- 회원가입 페이지 -->


<!-- css 연결 -->
<link rel="stylesheet" href="../resources/css/member/insert_form.css">

<!-- BootStrap 3.x-->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<!-- 주소 검색 API -->
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

<script type="text/javascript">

	// 아이디 체크
	function check_id(){
		// 회원 가입 버튼은 비활성화 (id체크 후 활성화 할 것임)
		// <input id="btn_register" type="button"....disabled="disabled">
		$("#btn_register").prop("disabled", true);
		
		let mem_id = $("#mem_id").val();
		let mem_id_check = /^[A-Za-z0-9]{3,8}$/;
		
		if(mem_id.length==0){
			$("#id_msg").html("");
			return;
		}
		
		if(mem_id.length<3){
			$("#id_msg").html("아이디는 3~8자리 영문과 숫자만 사용가능합니다.").css("color","IndianRed");
			return;
		}
		// 서버에 현재 입력된 id를 체크 요청 jQuery Ajax 이용
		$.ajax({
			
			url		:	"check_id.do",		// id 체크하는 서블릿 만들어서 체크해달라고 요청하기(서버한테) -> MemberCheckIdAction
			data	:	{"mem_id":mem_id},	// parameter -> check_id.do?mem_id=one   서버에 보낼 데이터 -> id 체크 중이므로 id 정보를 보내야함
			dataType:	"json",				
			success	:	function(res_data){
					// res_data = {"result":true} or {"result":false}
					if(res_data.result){
						$("#id_msg").html("사용 가능한 아이디입니다").css("color","Aqua");
						$("#btn_register").prop("disabled", false);
					}else{
						$("#id_msg").html("이미 사용 중인 아이디입니다").css("color","IndianRed");
					}
			},
			error	:	function(err){
					alert(err.responseText)	// 에러 확인하기 위해
			}
		});
	} // end: check_id()
	
		// 닉네임 체크
		function check_nickname(){
		
		$("#btn_register").prop("disabled", true);
		
		let mem_nickname = $("#mem_nickname").val();
        let mem_nickname_check = /^[가-힣ㄱ-ㅎA-Za-z]{2,6}$/;
        
        if(mem_nickname.length==0) {
            $("#nickname_msg").html("");
            return;
        }
        
        if(mem_nickname_check.test(mem_nickname)==false) {
            $("#nickname_msg").html("닉네임은 2~6자리 영문 한글만 사용가능합니다.").css("color","IndianRed");
            return;
        }
		
		$.ajax({
			url		:	"check_nickname.do",
			data	:	{"mem_nickname":mem_nickname},
			dataType:	"json",
			success	:	function(res_data){
				if(res_data.result) {
					$("#nickname_msg").html("사용가능한 닉네임 입니다.").css("color","Aqua");
					$("#btn_register").prop("disabled",false);
				} else {
					$("#nickname_msg").html("이미 사용중인 닉네임 입니다.").css("color","IndianRed");
				}
			},
			error	:	function(err){
				alert("현재, 요청이 지연되고 있습니다.");
			}
		});
	}// end:check_nickname()
	
	// 주소 찾기 -> API
	function find_addr(){
		
		var themeObj = {
				   bgColor: "#90CBFB" //바탕 배경색
		   };
	
		new daum.Postcode({
			 theme: themeObj,
	        oncomplete: function(data) {
	            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분
	            $("#mem_zipcode").val(data.zonecode);		// 우편번호 넣기
	            $("#mem_addr").val(data.address);			// 주소 넣기
	        }
	    }).open();
		
	}// end: find_addr()
	
	
	
	
	// 입력했는지 확인
	function send(f){
		
		let mem_name 	 = f.mem_name.value.trim();
		let mem_id 		 = f.mem_id.value.trim();
		let mem_pwd	 	 = f.mem_pwd.value.trim();
		let mem_nickname = f.mem_nickname.value.trim();
		
		let mem_zipcode = f.mem_zipcode.value.trim();
		let mem_addr 	= f.mem_addr.value.trim();
		
		if(mem_name==''){
			alert("이름을 입력하세요");
			f.mem_name.value='';
			f.mem_name.focus();
			return;
		} 
		if(mem_id==''){
			alert("아이디를 입력하세요");
			f.mem_id.value='';
			f.mem_id.focus();
			return;
		} 
		if(mem_pwd==''){
			alert("비밀번호를 입력하세요");
			f.mem_pwd.value='';
			f.mem_pwd.focus();
			return;
		} 
		if(mem_nickname==''){
			alert("닉네임을 입력하세요");
			f.mem_nickname.value='';
			f.mem_nickname.focus();
			return;
		} 

		if(mem_zipcode==""){
			alert("우편번호를 입력하세요");
			f.mem_zipcode.value="";
			f.mem_zipcode.focus();
			return;
		}
		
		if(mem_addr==""){
			alert("주소를 입력하세요");
			f.mem_addr.value="";
			f.mem_addr.focus();
			return;
		}

        
		f.action = "insert.do";
		f.submit();		// 전송
	}// end: send
	
</script>

</head>

<body>

<form>
	<div id="box">
	<div class="form-group form-group-lg">
		<div class="form-group">
			<div class="text1">이름</div>
			<input type="text" class="form-control" name="mem_name" placeholder="이름 입력">
		</div>
		<div class="form-group">
			<div class="text1">아이디</div>			
			<input type="text" class="form-control" name="mem_id" id="mem_id" placeholder="아이디 입력" onkeyup="check_id();">
			<span id="id_msg"></span>
		</div>
		<div class="form-group">
			<div class="text1">비밀번호</div>
			<input type="password" class="form-control" name="mem_pwd" id="mem_pwd" placeholder="비밀번호 입력">
		</div>
		<div class="form-group">
			<div class="text1">닉네임</div>
			<input type="text" class="form-control" name="mem_nickname" id="nickname" placeholder="닉네임 입력" onkeyup="check_nickname();">
			<span id="nickname_msg"></span>
		</div>
		<div class="form-group">
			<div class="text1">우편번호</div>
			<input type="text" class="form-control addr_text" name="mem_zipcode" id="mem_zipcode">
			<input  style="background-color: #2B2E36 !important;" class="a_search btn btn-lg" type="button" 
						  value="주소검색" onclick="find_addr();">
		</div>
		<div class="form-group addr">
			<div class="text1">주소</div>
			<input style="width:100%" type="text" class="form-control" name="mem_addr" id="mem_addr" placeholder="상세주소 입력">
		</div>

		<hr>
		<div class="membership-btn">
	 		<input style="background-color: #2B2E36 !important;" type="button" class="btn btn-block btn-lg"
	 		 	   value="가입하기" onclick="send(this.form);">
		</div>
		
		<!-- <input style="background-color: #2B2E36;" type="button" class="btn btn-block btn-lg text-#999999"
			   value="메인화면으로 돌아가기" onclick="location.href='../member/list.do'"> -->
		<div class="home" style="text-align: center;"><a href="../main/list.do">← &nbsp; 메인화면으로 돌아가기</a></div>
	
		
	</div>
	</div>
</form>
</body>
</html>