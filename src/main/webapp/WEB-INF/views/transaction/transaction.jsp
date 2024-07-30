<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>transaction</title>
<!--  Bootstrap  3.x  -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<style type="text/css">
.table{
	width: 200px;
}
</style>

<script type="text/javascript">
	
	function transaction() {
	    const transaction_point = $("#transaction_point").val();
	    const mem_idx = ${user.mem_idx};
	
	    $.ajax({
	        url: "transaction.do",
	        type: "POST",
	        data: {
	            "transaction_point": transaction_point,
	            "mem_idx": mem_idx
	        },
	        dataType: "json",
	        success: function(response) {
	            $("#user_name").text(response.mem_name);
	            $("#user_point").text(response.mem_point);
	        },
	        error: function(err) {
	            alert("에러: " + err.responseText);
	        }
	    });
}//end:transaction()
	
	function charge() {
	    const charge_point = $("#charge_point").val();
	    const mem_idx = ${user.mem_idx}; // 서버에서 제공한 변수 사용
	
	    $.ajax({
	        url: "transaction_charge.do",
	        type: "POST",
	        data: {
	            "charge_point": charge_point,
	            "mem_idx": mem_idx
	        },
	        dataType: "json",
	        success: function(response) {
	            $("#user_name").text(response.mem_name);
	            $("#user_point").text(response.mem_point);
	        },
	        error: function(err) {
	            alert("에러: " + err.responseText);
	        }
	    });
	}//end:charge()
	
</script>
  	

</head>
<body>

<div id="box">
<form class="form-inline">
	
	<table class="table">
			<tr class="info">
				<th>고객명</th>
				<th>계좌잔액</th>
			</tr>
			
				<tr>
			        <td id="user_name">${ user.mem_name }</td>
			        <td id="user_point">${ user.mem_point }</td>
			    </tr>
		</table>

	
	<table class="table">
			<tr class="info">
				<th>아이템</th>
				<th>아이템명</th>
				<th>아이템가격</th>
				<th>등록시간</th>
				<th>구매여부</th>
			</tr>
			
			<c:forEach var="vo" items="${ list }">
				<tr>
					<td>
						<div class="item_image">
								<img src="../resources/images/${ vo.filename }">
							</div>
						</td>
					<td>${ vo.reg_name }</td>
					<td>${ vo.reg_price }</td>
					<td>${ vo.reg_date }</td>
					<td>
       					거래금액 : <input id="transaction_point" class="form-control" value="${ vo.reg_price }"><br><br>
				       	<input type="button" class="btn btn-success" value="거래" onclick="transaction();"><br><br>
					</td>
				</tr>
			</c:forEach>
		</table>
				충전하실 금액 : <input id="charge_point" class="form-control">
		       	<input type="button" class="btn btn-danger" value="충전" onclick="charge();">
</form>
</div>
</body>
</html>