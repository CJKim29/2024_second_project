<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>borad_insert_form</title>

<!--  Bootstrap  3.x  -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<style type="text/css">
#box{
	width: 500px;
	margin: auto;
	margin-top: 150px;
}
textarea{
	resize: none;
}
h4{
	font-weight: bold;
	color: gray;'
}
</style>



<script type="text/javascript">
	
	function send(f){
		
		let chat_name = f.chat_name.value.trim();
		let mate_name = f.mate_name.value.trim();
		
		if(chat_name==''){
			alert("제목을 입력하세요")
			
			chat_name.value="";
			chat_name.focus();
			
			return;
		}
		
		if(mate_name==''){
			alert("상대방을 입력하세요")
			
			mate_name.value="";
			mate_name.focus();
			
			return;
		}
		
		f.action = "insert.do";
		f.submit();
	}
</script>

<script type="text/javascript">
	
	function chatting(mem_idx) {
		
		location.href="list.do?mem_idx=" + mem_idx;
	}
</script>

</head>
<body>
<form>
	<div id="box">
		<div class="panel panel-info">
	      <div class="panel-heading">
	      		<h4>채팅방 만들기</h4>
	      </div>
	      
	      <div class="panel-body">
	      		<div>
	      			<h4>채팅방 이름</h4> 
	      			<input class="form-control" name="chat_name">
	      		</div>
	      		
	      		<div>
	      			<h4>채팅상대</h4> 
	      			<input class="form-control" name="mate_name">
	      		</div>
	      		
	      		<div style="margin-top: 10px; float: right">
	      		
	      			<input class="btn btn-success" type="button" value="돌아가기" onclick="chatting('${vo.mem_idx}');">
	      			<input class="btn btn-primary" type="button" value="채팅방 만들기" onclick="send(this.form);">
	      		</div>
		  </div>
	    </div>
	</div>
</form>
</body>
</html>