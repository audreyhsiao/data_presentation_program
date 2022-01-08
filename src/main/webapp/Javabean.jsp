<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page import="com.audrey.pojo.Nation" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<body>



<jsp:useBean id="nation" class="com.audrey.pojo.Nation" scope="page"/>

<!-- name表示你要設置的對象 property是你要設置的屬性 -->
<jsp:setProperty name="nation" property="cno" value="1"/>
<jsp:setProperty name="nation" property="cname" value="中国"/>



编号：<jsp:getProperty name="nation" property="cno" />
名称：<jsp:getProperty name="nation" property="cname" />


</body>
</html>