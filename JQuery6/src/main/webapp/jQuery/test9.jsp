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
		//alert("test9.jsp");
		
		// 동기 방식 : 서버의 응답을 받아야지만 다음 동작을 수행가능
		// 비동기 방식 : 서버의 응답 없이 다음 동작을 수행 가능
		
		
		//AJAX(Asynchronous JavaScript And Xml)
		// : 비동기방식의 자바스크립트 와 XML
		
		/* 
			$('h2').css();
			$.each(대상);
			$.ajax(대상,function(){ });
			
			[기본문법]
			$.ajax({
				type : "GET/POST" , (AJEX 요청시 사용할 HTTP 메서드)
				url : "주소", (AJEX 요청할 주소URL)
				data : "값", (AJEX 요청시 전달할 데이터 값, 파라메터)
				dataType : "응답데이터의 타입 (html,text,json)",
				success : function(data,status,jqXHR){
					(AJAX 요청이 성공적으로 처리된 경우 실행)	
					(data - 정상처리의 결과)
					(atatus -리턴 결과 문자)
					(jqXHR -XML,HTML,Request 객체 - httpStatus 값)					
				},				
				error : function(){
					(AJAX 요청이 실패한 경우 실행)
				}				
			});		
		*/
		
		//동기 방식
		//location.href="teat9-1.jsp";
		
		// 비동기 방식으로 test9-1.jsp 페이지에 갔다오기
		// 화면 변화 없이 다른 페이지에 다녀오기
		$.ajax({
			type : "GET",
			url : "test9-1.jsp",
			//dataType:"html",
			success : function(data){//성공시 가져온 데이터(페이지)
				//alert("비동기방식 ajax 실행 성공! ");
				$("body").append(data);
			}
		});
		
		// test9-2.jsp 페이지에 ajax로 접근
		// + 정보 전달(파라메터)
		$.ajax({

			url : "test9-2.jsp",
			data : {id:"부산",
					pw:"1234"},
			//data :{ id :"부산"}, // { } 객체로 정보를 저장, 이름 : 값 쌍으로 저장
			//data : {name : "부산"},
			success : function(data){
				alert("9-2페이지 다녀옴-1")
				$("h2").append(data);
			},
			error : function(){
				alert(" 에러 발생! ");
			}		
		});
		
		//btnXML 버튼 클릭시 비동기 방식으로 test9-3.jsp 페이지에서 
		//XML 데이터를 가져와서 출력
		$("#btnXML").click(function(){
			$.ajax({
				url:"test9-3.jsp",
				success : function(data){
					alert("Xml 페이지 다녀옴 !");
					//$("#divXML").append(data); HTML 페이지만 추가가능 
					//							 XML 페이지는 각각 접근해서 출력
					//							 -> 해당 데이터가 각각 접근해서 출력				
					//console.log(data);
					//데이터를 모두 감싸는 태그에 접근 
					$(data).find("person").each(function(){
						 var name = $(this).find("name").text();
						 var age = $(this).find("name").text();
						 var gender = $(this).find("name").text();						 
						 $("#divXML").append(name+"/"+age+"/"+gender+"<hr>");
					});					
				}
			});				
			// F12 콘솔창 에러 메세지
			// Access to XMLHttpRequest at 'https://news-.
			// from ofigin'http://locaton:8088'has been blocked by CORS policy:
			// The 'Access-Control-Allow-Origin' header has a value
			// 'https://news-ex.jtbc.co.kr' that is not euqal to the supplied origin/
			// => AJAX CORS(동일한 도메인 주소에 대한 접근 해야함)
			// => AJAX 실행한 응답 정보가 HTML/XML 일 때는 페이지와 같은 도메인에서 전달된 정보만
			// 사용가능하다.
			$.ajax({
				//url : "https://news-ex.jtbc.co.kr/v1/get/rss/section/sports;",
				url : "jtbcl.xml",
				success : function(){
					alert(" jtbc rss 다녀옴 ");				
					$(data).find("item").each(function(){
						var title = $(this).find("title").text();
						var link = $(this).find("link").text();						
						//$("#newsDiv").append(title+"<br>");
						//$("#newsDiv").append(link+"<hr>");
						$("#newsDiv").append("<a>"+title+"</a><hr>");
						
					});							
				}
				
				
				
			});			
		});	
		
	
		
		
		
		
		
	});
	
</script>
</head>
<body>
	<h1>test9.jsp</h1>
	
	<!-- 9-2 페이지에 전달한 정보를 출력 -->
	<hr>
	
	<h2>아이디, 비밀번호 :</h2>
	
	<hr>
	
	<div id="divXML">
		<h2> XML(eXtensible Markup Language) : HTML 처럼 생겼다.(태그로 구성), 데이터를 저장 </h2>	
		<input type="button" value="xml정보 가져오기" id="btnXML">
		<hr>
		
	</div>
	
	<hr>
	<div id="newsDiv">
		<h1>JTBC 뉴스 정보 (제목, 링크)</h1>
	
	
	</div>
	
	
	
</body>
</html>