
<%@page import="org.json.simple.JSONObject"%>
<%@page import="org.json.simple.JSONArray"%>
<%@page import="java.sql.Timestamp"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="application/json; charset=UTF-8"
    pageEncoding="UTF-8"%>

	<%! 
	private static final String DRIVER ="com.mysql.cj.jdbc.Driver";
    private static final String DBURL="jdbc:mysql://localhost:3306/jspdb";
    private static final String DBID="root";
    private static final String DBPW="1234";	
	%>	

	<%
		Class.forName(DRIVER);
		System.out.println("1) 드라이버 로드 성공!");	
	%>
	
	<%
		Connection conn =
		   DriverManager.getConnection(DBURL, DBID, DBPW);
		
		System.out.println("2) 디비연결 성공!");
	%>

	<%
		String sql 
		  = "select * from itwill_member";
	
		PreparedStatement pstmt = conn.prepareStatement(sql);
		System.out.println("3) pstmt 객체 생성 & SQL 실행 준비 완료!");		
	%>

	<%
	    ResultSet rs = pstmt.executeQuery();
		System.out.println("4) SQL실행 완료!");		
	%>

	<%
		// 배열생성
		// ArrayList memberList = new ArrayList();
		// JSON 배열 생성
		JSONArray memberList = new JSONArray();
		
		while(rs.next()){			
	
			//rs -> DTO
			//MemberDTO dto = new MemberDTO();
			JSONObject dto = new JSONObject();
			//dto.put("id",id);
			dto.put("id", rs.getString("id"));
			dto.put("pass", rs.getString("pass"));
			dto.put("name", rs.getString("name"));
			dto.put("age", rs.getString("age"));
			dto.put("gender", rs.getString("gender"));
			dto.put("email", rs.getString("email"));
			dto.put("regdate", rs.getString("regdate")+"");
			
			memberList.add(dto);
			System.out.println("JSON 객체 -> "+memberList);
		}//while	
			
			System.out.println("회원정보 저장완료!");
	%>
	
	<%=memberList%>
