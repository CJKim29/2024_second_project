<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>chat_page</title>
<!--  Bootstrap  3.x  -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<style type="text/css">
#chatPage_box{
	margin-top: 120px;
	width: 80%;
	height: 800px;
	float: right;
	border: 1px solid black;
}
#msg_text{
	width: 100%;
	height: 75px;
	resize: none;
}
.chatting{
	height: 85%;
}
.chattingheader{
	width: 200px;
	float: right;
}
</style>

<script type="text/javascript">

/* 채팅 기능*/
function chatting_insert() {
	
	
	let msg_text = $("#msg_text").val().trim();
	
	if(chat_content==''){
		alert("글을 입력하세요");
		$("#msg_text").val("");
		$("#msg_text").focus();
		return;
	}
	
	//Ajax통해서 댓글 등록
	$.ajax({
		url		:	"../chatting/insert.do",
		data	:	{
					 "msg_text":msg_text,
					 "mem_idx":"${ user.mem_idx }",
					 "mem_name":"${ user.mem_name }"
					},
		dataType:	"json",
		success	:	function(res_data){
			//res_data = {"result":true}
			
			//작성했던 글 입력창에서 지우기
			$("#msg_text").val("");
			
			if(res_data.result==false){
				alert("메시지 전송 실패");
				return;
			}
			
			comment_list();
		},
		error	:	function(err){
			alert(err.responseText)
		}
	});
	
	}//end:chatting_insert()

	
	var g_page = 1;
	
	//댓글목록 요청
	function comment_list() {
		
		g_page = page;
		
		$.ajax({
			url		:	"../chatting/list.do",
			data	:	{
						"chat_idx":"${ vo.chat_idx }"
						},
			success	:	function(res_data){
				
				$("#comment_display").html(res_data);
				
			},
			error	:	function(err){
				alert(err.ersponseText);
			}
		});
		
	}//end:comment_list()
	
	//초기화 : 시작시
	$(document).ready(function(){
		
		//현재 게시물에 달린 댓글목록 출력
		comment_list();
	});
</script>

</head>
<body>
<%-- <c:forEach var="vo" items="${ list }">
${ vo.mem_name }님 안녕하세요
</c:forEach> --%>

<form>
		<div style="margin-top:50px; margin-bottom:5px;">
			<input class="btn btn-primary" type="button" value="새 채팅방 만들기"
				   onclick="location.href='insert_form.do?mem_idx=${ vo.mem_idx }&mem_name=${ vo.mem_name }'">
		</div>
	<span class="chattingheader">${ vo.mem_name }님과의 채팅방입니다.</span>
		<c:forEach var="vo" items="${ list_chat }">
				${ vo.chat_name }<br>
			</c:forEach>
		<div id="chatPage_box">
		<div class="chatting">
			
		</div>
		<hr>
		<div class="row">
			<div class="col-sm-10">
				<textarea rows="3" id="msg_text" placeholder="메시지를 입력하세요."></textarea>
			</div>
			<div class="col-sm-2">
				<input id="btn_cmt_register" type="button" value="메시지 전송"
					onclick="chatting_insert();">
			</div>
		</div>
	</div>
</form>
</body>
</html>