<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- Jquery 라이브러리 추가(필수) -->
<script src="../js/jquery-3.7.1.min.js"></script>
<!-- Jquery 라이브러리 (CDN : Content Delivery Network) 추가(필수) -->
<script src="https://code.jquery.com/jquery-migrate-3.5.2.js" integrity="sha256-ThFcNr/v1xKVt5cmolJIauUHvtXFOwwqiTP7IbgP8EU=" crossorigin="anonymous"></script>

<script type="text/javascript">
	//$(document).ready(); 호출 (필수)
	$(document).ready(function(){
		// 문서가 준비완료시 == body 태그의 로딩완료시
		alert("2. jquery실행!");
	});		
    $(function(){    	
    	alert("3. jquery 실행!");
    });    
	jQuery(document).ready(function(){
		// 문서가 준비완료시 == body 태그의 로딩완료시
		alert("4. jquery실행!");
	});	    
    jQuery(function(){    	
    	alert("5. jquery 실행!");
    });    
</script>

<script type="text/javascript">
	alert("1. 자바스크립트 실행");
</script>

</head>
<body>
	<h1>test1.jsp</h1>
	
	<h2> 제이쿼리 실행 </h2>
	
</body>
</html>