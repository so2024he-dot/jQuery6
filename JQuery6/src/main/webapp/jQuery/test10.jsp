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
		//alert("test10.jsp");
		// json값 가져오기 버튼 클릭시 json데이터(test10-1.jsp)를 가져오기
		$("#btn1").click(function(){
			//ajax사용 json데이터 가져오기
			/*$.ajax({
				type:"GET",
				url:"test10-1.jps",
				success : function(data){
					alert(" json데이터 파일에 접근 성공!");
					//alert(data);
					consle.log(data);//구조파악
					$("#jsonDiv1").append(data.name+"/"+data.gender+"/"+data.hobby);					
				}
			});*/
			//$.getJSON("주소",function(성공시 리턴데이터)); - ajax 기반(비동기방식)
			$.getJSON("test10-1.jsp",function(data){
					$("#jsonDiv1").append(data.name+"/"+data.gender+"/"+data.hobby);				
			});			
		});//#btn.click		
		
		// 버튼 클릭시, json 배열 정보 가져와서 출력하기
		$("#btn2").click(function(){
			$.getJSON("test10-2.json",function(data){
				//alert("json 파일에 다녀옴");				
				$(data).each(function(idx,item){
					//alert("data");
					//alert(idx+"/"+item);
					$("#jsonDiv2 table").append("<tr><td>"+item.name+"</td><td>"
							+item.gender+"</td><td>"+item.hobby+"</td></tr>");			
				});							
			});
		});	
		
		$("#btn3").click(function(){
			alert("DB데이터(JSON)가져옴 1");
		/*	$.ajax({
				type:"GET",
				url : "select.jsp",
				//dataType : "json",
				success:function(){
					alert("DB처리 페이지 다녀옴");
					
					$("#jsonDiv3").append(data);
				}	*/	
		
			//});
			//=>ajax 응답 결과를 HTML페이지를 받아서 처리
			
			$.getJSON("select.jsp",function(data){
				alert("DB데이터(JSON)가져옴2");
				console.log(data);
				
				$(data).each(function(idx,item){
					alert("DB출력");
					$("#jsonDiv3 table").append("<tr><td>"+item.id+"</td><td>"
							+item.pass+"</td><td>"+item.name+"</td><td>"+item.gender+"</td><td>"
							+item.age+"</td><td>"+item.email+"</td><td>"+item.regdate+"</td></tr>");
					
					var value ="<tr>";
					value +="<td>"+item.id+"</td>";
					value +="<td>"+item.pass+"</td>";
					value +="<td>"+item.name+"</td>";
					value +="<td>"+item.gender+"</td>";
					value +="<td>"+item.age+"</td>";
					value +="<td>"+item.email+"</td>";
					value +="<td>"+item.regdate+"</td>";
					
				}); 
			});
 		});		
		
	});//(document).ready
	
</script>
</head>
<body>
	<h1>test10.jsp</h1>
	<h1> json 객체의 정보를 출력</h1>	
	<div id="jsonDiv1">
		<input type="button" value="json값 가져오기" id="btn1">		
	</div>	
	<hr>
	<h1> json 배열의 정보를 출력</h1>	
	<div id="jsonDiv2">
		<input type="button" value="json값 가져오기" id="btn2">		
		<table border="1">
			<tr>
				<td>이름</td>
				<td>성별></td>
				<td>취미</td>
			</tr>
		</table>
	</div>
	<hr>
	<h1> DB저장 정보를 비동기방식으로 가져와서 출력</h1>	
	<div id="jsonDiv3">
		<input type="button" value="json값 가져오기" id="btn3">		
		<table border="1">
			<tr>
				<td>아이디</td>
				<td>비빌번호</td>
				<td>이름</td>
				<td>나이</td>
				<td>성별</td>
				<td>이메일</td>
				<td>회원가입일</td>
				<td>취미</td>
			</tr>
		</table>
	</div>
</body>
</html>