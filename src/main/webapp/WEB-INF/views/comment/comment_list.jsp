<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
	<html>
		<head>
			<meta charset="UTF-8">
			<title>Insert title here</title>
			
			<script type="text/javascript">
				function comment_delete(cmt_idx){
					if(confirm("정말 삭제하시겠습니까?")== false) return;
					
					$.ajax({
						url			: "../comment/delete.do",
						data		: {"cmt_idx" : cmt_idx},
						dataType	: " json",
						success		: function(res_data){
							// res_data = {"result" : true} or {"result" : false}
							if(res_data.result == false){
								alert("삭제 실패");
								return;
							}
							comment_list(g_page);
						},
						error		: function(err){
							alert(err.responseText);
						}
					});
				}
			</script>
		</head>
		<body>
			<!-- Page Menu -->
			<c:if test="${ not empty list }">
				<div style="font-size: 10px;">
					${ pageMenu }
				</div>
			</c:if>
		
			<!-- <ul class="pagination">
			  <li><a href="#" onclick="comment_list(1);">1</a></li>
			  <li><a href="#" onclick="comment_list(2);">2</a></li>
			</ul> -->
			
			
			<!-- for(CommentVo vo : list) -->
			<c:forEach var="vo" items="${ list }">
				<!-- 자신의 글만 삭제메뉴 활성화 -->
				<div id="comment-list">
				<c:if test="${ user.mem_idx eq vo.mem_idx }">
					<div style="text-align: right;"><input style="width: 20px; color: black;" type="button" value="X" onclick="comment_delete('${vo.cmt_idx}');"></div>
				</c:if>
				
				<div style="color: #b89971;">${ vo.mem_name }</div>
				<div>${ vo.cmt_regdate }</div>
				<div style="font-size: 18px; padding-top: 4px; padding-right: 4px;">${ vo.cmt_content }</div>
				</div>
				<hr id="comment-end">
			</c:forEach>
			
		</body>
	</html>