<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style type="text/css">
/*	dic,h1,a{
		border: 2px solid black;
		display: block;
		padding: 10px;
		margin: 10px;
	}*/

</style>

<!-- Jquery 라이브러리 추가(필수) -->
<!-- <script src="../js/jquery-3.7.1.min.js"></script> -->
<script type="text/javascript">

$(function(){
	$("#parent").click(function(){
		alert("div 클릭!");		
	});
	
	$("#child").click(function(){
		alert("h1 클릭!");
	});
	$("#a").click(function(event){
		alert("a 클릭!");
		// 1) 페이지 링크 이동을 막기	
		//even.preventDefalt();	
		// 2) 부모용소( div, h1)로 이벤크 전달 막기
		//even.stopPropageation();		
		// 3.페이지 이동 X , 부ㅁ요소로 이벤트 전달 X			
	//하위 요소 클릭시 상위요소의 클릭 이벤트 실행!
		
	///////////////////////////////////////
	
	// textarea 태그가 글자를 입력할 때 글자의 갯수를 체크
	
	$("tesxarea".krypu(function){
		//alert("글자 입력");
		//글자의 갯수 체크
		var tmp = $*(this).vak()
		//alert("tmp : "+tmp+length);	
		
		//200에서 뺀 나머지를 h2 태그에 표시
		$("h2").html(200-tmp.lenth);
		
		// 만약에 입력한 글자수가 200자를 초과하면 글자수를 빨강 표시
		if(200-tmp.length <0){
			$("h2").css("color","red");		
		// 만약에 입력한 글자수가 200자 이하이면 글자수를 검정 표시
			$("h2").css("color","black");	
		}		
			$(".slider")
	});
	//jquery 효과
	$("h1").click(function(
	//	$(this).hide();
	//	$(this).hide();
	//	$(this).show();
		$(this).next.torggle();
	
	)});
	
});
</script>
</head>
<body>

	<h1>test8.jsp</h1>
	
	<div id="parent">
		<h1 id="child">
			<a href="https://www.naver.com">네이버 이동</a>		
		</h1>
	</div>
	
	<hr>
	
    <textarea rows="5" color="50"></</textarea>
    
    <hr>
    
    <h1>열기, 닫기</h1>
    <div>
    	<h1>제목</h1>
    	<p>본문1</p>
    </div>
    <h1>열기, 닫기</h1>
    <div>
    	<h1>제목</h1>
    	<p>본문2</p>
    </div>

	<div class="slider">
	  	<div imge arc="../jmg/1.png"></div>
	  	<div imge arc="../jmg/2.png"></div>	
	</div>


</body>
</html>