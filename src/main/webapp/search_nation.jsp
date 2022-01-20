<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>查询结果</title>
 <link rel="stylesheet" href="assets/css/main.css" />
</head>
<body>
 <div id="wrapper">

        <!-- Main -->
        <div id="main">
            <div class="inner">
            <header id="header">
                    <a href="index.html" class="logo"><strong>Java数据库展示作业</strong> by HTML5 UP</a>
                    <ul class="icons">
                        <!--TODO Github-->
                        <li><a href="#" class="icon brands fa-medium-m"><span class="label">Medium</span></a></li>
                    </ul>
                </header>
<% 

try{
	request.setCharacterEncoding("UTF-8");

	Class.forName("com.mysql.jdbc.Driver");
	String url = 
			"jdbc:mysql://localhost:3306/national_data";
	String userName = "root";
	String password= "";
	Connection conn = DriverManager.getConnection(url,userName,password);
	
	Statement stmt = null;
	ResultSet rs = null;
	
	stmt = conn.createStatement();
	
	
 	String cname = request.getParameter("Cname");
 	String name = request.getParameter("name");
 	//String year = request.getParameter("year");
 	
 	//int yearInt = Integer.parseInt(year);

 	
 	String sql = "SELECT * FROM IndexList WHERE name = '"+ name+"'";

 	rs = stmt.executeQuery(sql);
	//stmt.executeUpdate(sql2);

	String index = null;
	
	if(rs.next()){
		index= rs.getString("IndexList.id");
		//out.print(index);
	}
	
	
	Statement stmt2 = null;
	ResultSet rs2 = null;
	stmt2 = conn.createStatement();
	String sql2 = "SELECT * FROM Nation WHERE Cname = '"+ cname +"'";

 	rs = stmt.executeQuery(sql2);

	String cno = null;
	
	if(rs.next()){
		cno = rs.getString("Nation.Cno");
		//out.print(index);
	}
	
	int cnoInt = Integer.parseInt(cno);
	

	
	Statement stmt3= null;
	ResultSet rs3 = null;
	stmt3 = conn.createStatement();
	
	String sql3 = "SELECT * FROM Nation_Index Where Nation_Index.id='"+index + "' and Nation_Index.Cno ="+cnoInt;
	
	rs3 = stmt3.executeQuery(sql3);
	
  	while(rs3.next()){
  		/*
  		out.println(rs2.next());
  		out.println( "<li>2019:"  + rs.getString("Y2019")+"</li>");
  		out.println( "<li>2020:"  + rs.getString("Y2020")+"</li>");
  		out.println("<li>2021:"  + rs.getString("Y2021")+"</li>");
		*/
			String Y2019 =rs3.getString(3);
			String Y2020=rs3.getString(4);
			String Y2021=rs3.getString(5);
			out.println("<h2>国家名："+cname+"</h2>"+"<h3>数据名："+name+"</h3>");
			out.println("<ul><li>2019: "+Y2019+"</li><li>2020: "+Y2020+"</li><li>2021: "+Y2021+"</li></ul>");
			}
	

	stmt.close();

	stmt2.close();
	conn.close();
	
}catch(Exception e){
	System.out.println(e.getMessage());
}


%>
<a href="search.jsp"> 
<button>
上一页</button>
</a>
</div></div></div>
</body>
</html>