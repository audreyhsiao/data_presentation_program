<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>connect to database</title>
</head>
<body>
<% 
try{
	Class.forName("com.mysql.jdbc.Driver");
	
	String url = 
			"jdbc:mysql://localhost:3306/national_data";
	final String userName = "root";
	final String password= "";
	final Connection conn = DriverManager.getConnection(url,userName,password);
	//out.println("successfully connected");
	
	
}catch(Exception e){
	out.println(e.getMessage());
}

%>



</body>
</html>