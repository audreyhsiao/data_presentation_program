<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<html>
<head>
<title>JSTL sql:setDataSource Tag</title>
</head>
<body>
<sql:setDataSource var="snapshot" 
driver="com.mysql.jdbc.Driver"
     url="jdbc:mysql://localhost:3306/national_data"
     user="root"  
     password=""/>
 
<sql:query dataSource="${snapshot}" var="result">
SELECT * from Nation;
</sql:query>
<h1>JSP 数据库实例 - 菜鸟教程</h1>
<table border="1" width="100%">
<tr> 	
   <th>Cno</th>
   <th>Cname</th>
  
</tr>
<c:forEach var="row" items="${result.rows}">
<tr>
   <td><c:out value="${row.Cno}"/></td>
   <td><c:out value="${row.Cname}"/></td>

</tr>
</c:forEach>
</table>
</body>
</html>