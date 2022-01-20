<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

</head>
<body>
<% 

try{

Class.forName("com.mysql.jdbc.Driver");

String url = 
		"jdbc:mysql://localhost:3306/national_data";
 String userName = "root";
 String password= "";
 Connection conn = DriverManager.getConnection(url,userName,password);
 
 request.setCharacterEncoding("UTF-8");
 String cno = request.getParameter("Cno");
 String cname = request.getParameter("Cname");
 
 
 int cnoInt = Integer.valueOf(cno);
 
	System.out.print("insert btn clicked");
	//String sql_insert = "Insert into Nation_Index(Thrid_index_id,Cno,2019,2020,2021) values(?,?,?,?,?)";
	String sql_insert = "Insert into Nation(Cno,Cname) values(?,?)";
	PreparedStatement pst = conn.prepareStatement(sql_insert);
	pst.setInt(1, cnoInt);
	pst.setString(2,cname);
	//pst.setDouble(3, 0.001);
	//pst.setDouble(4, 0.001);
	//pst.setDouble(5, 1.001);
	int n = pst.executeUpdate();
	System.out.print("插入成功");
	pst.close();
	conn.close();
	
}catch(Exception e){
	System.out.println(e.getMessage());
}

response.sendRedirect("edit.jsp");
%>
</body>
</html>