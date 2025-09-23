<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- Jquery 라이브러리 추가(필수) -->
<script src="../js/jquery-3.7.1.min.js"></script> 
<script type="text/javascript">
	$(document).ready(function(){
		
		
	});
	
</script>

</head>
<body>
	<h1>test9-2.jsp</h1>

<%-- 	<% 
 		System.out.println("비동기 방식 ajax로 test9-2.jsp 실행");
 		System.out.println(request.getParameter("id"));
		System.out.println(request.getParameter("pw"));	
     	%> 
	
 	  <h2> 아이디 : <%=request.getParameter("id") %></h2>
	<h2> 비밀번호 : <%=request.getParameter("pw") %></h2> --%>
	<%=request.getParameter("id") %>,<%=request.getParameter("pw") %>
	
</body>
</html>