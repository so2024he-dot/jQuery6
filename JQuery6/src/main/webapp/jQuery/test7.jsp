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
		//alert("test7.jsp");
		$("input").click(function(){
			alert("jquery 버튼 클릭!");			
		});
		$("input").on()("click",function(){
			alert("on 버튼 클릭!")		
		});
		// h2 태그 클릭시 + 기호 추가
		$("h2").click(function(){		
			//alert("h2! 클릭!");
			//$("h2").append("+");
			$(this).append("+");
		})
		
		// 이미지 태그에 마우스 올렸을 때에 이미지를 변경
		$("img").mouseover(function(){
			//이미지를 변경 -> 이미지 태그의 src 속성을 변경
			$(this).attr("src","../img/3.png")			
		});
		$("img").mouseover(function(){
			//이미지를 변경 -> 이미지 태그의 src 속성을 변경
			$(this).attr("src","../img/2.png")			
		}).mouseover(function(){
			//이미지를 변경 -> 이미지 태그의 src 속성을 변경
			$(this).attr("src","../img/1.png");			
		});
		
		
		
	});
</script>
	
</head>
<body>
	<h1>test7.jsp</h1>
	
	<input type="button" value="버튼" onclick="alert('버튼 클릭!');">
	
	<hr>
	<h1> 해당 h2태그 클릭시 마다 + 기호 추가 </h1>
	<h2>head - 0</h2>
	<h2>head - 1</h2>
	<h2>head - 2</h2>
	
	<hr>
	
	<h1>마우스를 올렸을 때 다른 이미지로 변경</h1>
	<img  src="../img/1.png" width="100">
	<img  src="../img/2.png" width="100">
	
	
</body>
</html>