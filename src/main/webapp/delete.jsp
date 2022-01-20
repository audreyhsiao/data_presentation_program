<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% 

try{

	request.setCharacterEncoding("UTF-8");
Class.forName("com.mysql.jdbc.Driver");

String url = 
		"jdbc:mysql://localhost:3306/national_data";
 String userName = "root";
 String password= "";
 Connection conn = DriverManager.getConnection(url,userName,password);
 
 String cno = request.getParameter("Cno");
 String cname = request.getParameter("Cname");
 
 int cnoInt = Integer.valueOf(cno);
 
	 	String sql_delete = "delete FROM Nation WHERE Cno = ?";
	 	PreparedStatement pst = conn.prepareStatement(sql_delete);
	 	pst.setInt(1, cnoInt);
	 	//pst.setDouble(3, 0.001);
	 	//pst.setDouble(4, 0.001);
	 	//pst.setDouble(5, 1.001);
	 	int n = pst.executeUpdate();
	 	System.out.print("删除成功");
	 	pst.close();
	 	conn.close();
	 	
	 }catch(Exception e){
	 	System.out.println(e.getMessage());
	 }
response.sendRedirect("edit.jsp");


	 %>
</body>
</html>