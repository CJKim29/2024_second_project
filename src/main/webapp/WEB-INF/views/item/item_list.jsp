<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>search_item</title>
<!--  Bootstrap  3.x  -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<style type="text/css">
#box{
	width: 1400px;
	margin: auto;
	margin-top: 50px;
}
</style>

<script type="text/javascript">

	function search1(){
		
		const category = $("#category1").val();
		
		$("#grade").val("all");
		
		//Ajax로 요청
		$.ajax({
			url		:	"list_category.do",
			data	:	{"category":category},	//item/list.do?deptno=10
			success	:	function(res_data){
				
				$("#disp").html(res_data);
			},
			error	:	function(err){
				alert(err.reponseText)
			}
		});
	}//end:search1()
	
	function search2(){
		
		const category = $("#category2").val();
		
		$("#grade").val("all");
		
		//Ajax로 요청
		$.ajax({
			url		:	"list_category.do",
			data	:	{"category":category},	//item/list.do?deptno=10
			success	:	function(res_data){
				
				$("#disp").html(res_data);
			},
			error	:	function(err){
				alert(err.reponseText)
			}
		});
	}//end:search2()
	
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
				alert(err.reponseText)
			}
		});
	}//end:search_grade()
	
 	function search_all(){
	  
 		const category1 = $("#category1").val() || "all";
 	    const category2 = $("#category2").val() || "all";
 	    const grade = $("#grade").val() || "all";
	  
	  //Ajax로 요청
	  $.ajax({
		  url		:	"list_condition.do",  // ITemListConditionAction  
		  data		:	{							
			  				"category1":category1,
			  				"category2":category2, 
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


<script type="text/javascript">
<!-- 초기화 -->
	$(document).ready(function(){
		
		if("${ not empty param.search }" == "true"){
			$("#search").val("${ param.search }");
		}
		
		// 전체보기면 입력창 지우기
		if("${ param.search eq 'all' }" == "true"){
			$("#search_text").val("");
		}
		
	});
</script>

</head>
<body>
<div id="box">
<form class="form-inline">

	무기종류:<select class="form-control" id="category1">
				<option value="all">전체보기</option>
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
			<input class="btn btn-primary" type="button" value="종류별검색" onclick="search1();">
			
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			
	방어구종류:<select class="form-control" id="category2">
				<option value="all">전체보기</option>
				<option value="갑옷">갑옷</option>
				<option value="투구">투구</option>
				<option value="방패">방패</option>
				<option value="장갑">장갑</option>
				<option value="신발">신발</option>
				<option value="벨트">벨트</option>
				<option value="반지">반지</option>
				<option value="목걸이">목걸이</option>
			</select>
			<input class="btn btn-primary" type="button" value="종류별검색" onclick="search2();">
			
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
</div>
</body>
</html>