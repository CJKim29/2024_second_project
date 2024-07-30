<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<!-- 회원 정보 수정 페이지 -->


<!-- css 연결 -->
<link rel="stylesheet" href="../resources/css/member/modify_form.css">

<!-- BootStrap 3.x-->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<!-- 주소 검색 API -->
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

<script type="text/javascript">
	
	// 주소 찾기 -> API
	function find_addr(){
		
		var themeObj = {
				   bgColor: "#B51D1D" //바탕 배경색
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
		
		f.action = "modify.do";
		f.submit();		// 전송
	}// end: send
	
</script>

<!-- 닉네임 체크-->
<script type="text/javascript">

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

</script>




<!-- 프로필 사진 업로드 -->
<script type="text/javascript">

	/* Ajax 이용해 이미지 수정 */
	function ajaxFileUpload() {
	    // 업로드 버튼이 클릭되면 파일 찾기 창을 띄운다
	    $("#ajaxFile").click();		// id가 ajaxFile인 애를 클릭해라 
	}
	
	function ajaxFileChange() {
	    // 파일이 선택되면 업로드를 진행한다.
	    photo_upload();
	}
	
	
	function photo_upload() {
		
		//파일선택->취소시    파일의 첫번쩨  없으면 함수 끝내라(취소하면 동작 실행하면 안되니까)
		if( $("#ajaxFile")[0].files[0]==undefined)return;
		   
		var form = $("ajaxForm")[0];		// 폼에 대한 정보 얻어오기
	    var formData = new FormData(form);
	    formData.append("mem_idx", '${ vo.mem_idx }');		//mem_idx=5 이런식으로 넘어온것?
	    formData.append("photo", $("#ajaxFile")[0].files[0]);//photo라는 이름으로 parameter 선택?
	
	    $.ajax({
	          url : "photo_modify.do", //MemberController에 photo_modify 메서드 만들기
	          type : "POST",
	          data : formData,
	          processData : false,
	          contentType : false,
	          dataType : 'json',
	          success:function(res_data) {
	         	 //res_data = {"p_filename":"aaa.jpg"}
	              
	         	 //location.href=''; //자신의 페이지를 리로드(refresh)
	         	 
	         	 //$("#my_img").attr("src","../resources/images/" + res_data.mem_filename);
	         	 $("#my_img").prop("src","../resources/images/" + res_data.mem_filename);
	         	 
	          },
	          error : function(err){
	         	 alert(err.responseText);
	          }
	    });
	
	}

</script>


<script type="text/javascript">
	$(document).ready(function(){
		// 엘리먼트 셀럭터 + 어트리뷰트 셀렉터 함께 사용 
		$("select[name='mem_grade']").val("${ vo.mem_grade}")	/* select인데 name이 mem_grade인 애를 셀렉 */
		
	});
</script>


</head>

<body>
<!-- 파일 업로드 기능 구현 시 필수 작성 -->
<form enctype="multipart/form-data" id="ajaxForm" method="post">
    <input id="ajaxFile" type="file"  style="display:none;"  onChange="ajaxFileChange();" >	<!--파일업로드용 기본 폼 못생겨서 기능은 얘가 하되 숨겨놓고 예쁜 버튼을 앞에 내세운 것-->
</form>

<form>
	<!-- 회원번호 안 보이게 전송 -->            <!-- 따옴표 하는건 맞음.. -->
	<input type="hidden" name="mem_idx" value="${ vo.mem_idx }">
	
	<div id="box">
	<div class="sujeong">개인 정보 수정</div>
	<!-- input 사이즈 한 번에 조정 -->
	<div class="form-group form-group-lg">
	
	<!-- 프로필 사진 영역 -->
		<div class="profile">
			<img class="profile_img" src="../resources/images/${ vo.mem_filename }" id="my_img">
		</div>
			<div class="profile_btn">
		    	<input class="btn btn-lg" type="button" value="이미지편집" onclick="ajaxFileUpload();">
			</div>
		
		<!-- <div class="profile">						  accept="image/* : 이미지파일 확장자만 선택 허용
			<input type="file" name="uploadImg" id="input_img" accept="image/*">
			<input type="button" value="변경하기" onclick="send_file(this.form);">
		</div> -->
	
	
	
	
		<div class="form-group">
			<div class="text1">이름</div>							<!-- 수정 전 원본 이름 -->
			<input type="text" class="form-control" name="mem_name" value="${ vo.mem_name }" placeholder="이름 입력">
		</div>
		<div class="form-group">
			<div class="text1">아이디 <span class="id_msg">*아이디는 수정이 불가합니다</span></div>						  <!-- id는 수정 불가하므로 읽기 전용 -->
			<input type="text" class="form-control" name="mem_id" value="${ vo.mem_id }" readonly="readonly">
		</div>
		<div class="form-group">
			<div class="text1">비밀번호</div>
			<input type="password" class="form-control" name="mem_pwd" value="${ vo.mem_pwd }" placeholder="비밀번호 입력">
		</div>
		<div class="form-group">
			<div class="text1">닉네임</div>						  <!-- 중복체크 위해 필요 -->
			<input type="text" class="form-control" name="mem_nickname" id="mem_nickname" placeholder="닉네임 입력" 
				   value="${ vo.mem_nickname }" onkeyup="check_nickname();">
			<span id="nickname_msg"></span>
		</div>
		<div class="form-group">
			<div class="text1">우편번호</div>
			<input type="text" class="form-control addr_text" name="mem_zipcode" id="mem_zipcode" value="${ vo.mem_zipcode }">
			<input  style="background-color: #2B2E36 !important;" class="a_search btn btn-lg" type="button" 
						  value="주소검색" onclick="find_addr();">
		</div>
		<div class="form-group addr">
			<div class="text1">주소</div>
			<input style="width:100%" type="text" class="form-control" name="mem_addr" id="mem_addr" value="${ vo.mem_addr }" placeholder="상세주소 입력">
		</div>
		<div class="form-group">
				<div>
					<!-- 회원등급이 관리자일 경우 나오는 화면 -->
					<c:if test="${ user.mem_grade eq '관리자' }">
						<div class="text1">회원등급</div>
						<select style="width:50%;" name="mem_grade" class="form-control">
							<option value="일반">일반</option>
							<option value="관리자">관리자</option>
						</select>
					</c:if>
					<!-- 회원등급이 일반일 경우 화면 안 나오게 -->
					<c:if test="${ user.mem_grade eq '일반' }">
						<input type="hidden" style="width:50%" class="form-control" name="mem_grade" 
							   value="${ vo.mem_grade }" readonly="readonly">	
					</c:if>
				</div>
		</div>

		<hr>
		<div class="membership-btn">
	 		<input style="background-color: #2B2E36 !important;" type="button" class="btn btn-block btn-lg"
	 		 	   value="수정하기" onclick="send(this.form);">
		</div>
		
		<div class="home" style="text-align: center;"><a href="../main/list.do">← &nbsp; 메인화면으로 돌아가기</a></div>
	
		
	</div>
	</div>
</form>
</body>
</html>