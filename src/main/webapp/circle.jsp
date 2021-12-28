<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%!
    double CircleArea(double Radius)
    {
    	double PI = 3.415926;
    	return PI*Radius*Radius;
    }
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>函數方法使用</title>
</head>
<body>
<FONT SIZE  = 3 COLOR = RED>
函數方法的調用
</FONT>
<br />
<% double Area = 0.0;
for(int i = 1;i<5;++i){%>
半徑為 <FONT COLOR =BLUE ><%= i %>
</FONT>
釐米的圓面積為 <FONT COLOR = RED ><%= CircleArea(i) %>
</FONT>平方釐米
<% }%>
</body>
</html>