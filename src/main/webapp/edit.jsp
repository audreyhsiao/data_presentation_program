<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html>
<head>
    <title>edit</title>
    <!--引入echart.js  -->
    <script src="https://cdn.jsdelivr.net/npm/echarts@5.2.2/dist/echarts.js"></script>
    <!-- 引入jquery.js -->
    
    <script src="https://code.jquery.com/jquery-2.2.4.js" 
    integrity="sha256-iT6Q9iMJYuQiMWNd9lDyBUStIq/8PuOW33aOqmvFpqI=" 
    crossorigin="anonymous"></script>
    
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
    <link rel="stylesheet" href="assets/css/main.css" />
</head>
<body>

<body class="is-preload">
	
    <!-- Wrapper -->
    <div id="wrapper">

        <!-- Main -->
        <div id="main">
            <div class="inner">

                <!-- Header -->
                <header id="header">
                    <a href="index.jsp" class="logo"><strong>Java数据库展示作业</strong> by HTML5 UP</a>
                    <ul class="icons">
                        <!--TODO Github-->
                        <li><a href="#" class="icon brands fa-medium-m"><span class="label">Medium</span></a></li>
                    </ul>
                </header>

                <!-- Banner -->
                <section id="banner">
                    
                    
                                <!--todo 介绍图-->
                     
                        <div>
                            <h1>数据库修改-国家</h1>
                            <p>
                            请输入国家编号、数据编号与各年数据</p>
                             <p>
                            国家编号表如下
                            <ul>
                            <%
                            try{
                            	Class.forName("com.mysql.jdbc.Driver");
                            	
                            	String url = 
                            			"jdbc:mysql://localhost:3306/national_data";
                            	String userName = "root";
                            	String password= "";
                            	Connection conn = DriverManager.getConnection(url,userName,password);
                     
                            	
                            	Statement stmt = null;
                            	ResultSet rs = null;
                            	
                            	String sql = "select * from Nation";
                            	stmt = conn.createStatement();
                            	rs = stmt.executeQuery(sql);
                            	
                            	
                            	while(rs.next()){
                            		out.println( "<li>编号" + rs.getString("Nation.Cno"));
                            	
                            		out.println("：" + rs.getString("Nation.Cname"));

                            		out.println("</li>");
                            	}
                            	stmt.close();
                            	conn.close();
                            	
                            }catch(Exception e){
                            	out.println(e.getMessage());
                            } %>
                           </ul>
                            </div>

                          

                </section>
<form method="post" action="insert.jsp">
<input name="Cname" type="text"  placeholder="国家名" style="width:250px;"/>
<input name="Cno" type="text"  placeholder="国家编号" style="width:250px; "/>
<!--  
 <input type="text"  placeholder="2019数据" style="width:250px;"/>
<input type="text" placeholder="2020数据" style="width:250px; "/>
<input type="text"  placeholder="2021数据" style="width:250px;"/>
-->
<div>
<button type="submit">插入</button>
</div>

</form>


<form method="post" action="delete.jsp">
<input name="Cname" type="text"  placeholder="国家名" style="width:250px;"/>
<input name="Cno" type="text"  placeholder="国家编号" style="width:250px; "/>

<button onclick="submit">删除</button>


</form>







                    
</div></div>

</body>
</html>