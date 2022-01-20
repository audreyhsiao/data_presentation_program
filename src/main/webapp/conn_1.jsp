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
	String userName = "root";
	String password= "";
	Connection conn = DriverManager.getConnection(url,userName,password);
out.println("successfully connected");
	
	Statement stmt = null;
	ResultSet rs = null;
	
	String sql = "select * from Nation, Nation_Index where Nation.Cno = '1' AND Nation.Cno = Nation_index.Cno";
	stmt = conn.createStatement();
	rs = stmt.executeQuery(sql);
	if(rs.next()){
	out.println("國家：" + rs.getString("Nation.Cname"));
	out.println("<br />");}
	while(rs.next()){
		out.println(rs.getString("Thrid_index＿id") + rs.getString("Nation_Index.2019"));
		out.println("<br />");
	}
	stmt.close();
	conn.close();
	
}catch(Exception e){
	out.println(e.getMessage());
}




%>



</body>
</html>