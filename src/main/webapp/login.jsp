<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>登入頁面</title>
</head>
<body>
<form action="LoginServlet" method="post">
帳號：<input type="text" name="username"><br />
密碼：<input type="password" name="userpassword"><br />
<button >提交</button>
<span style="color:red"><%=request.getAttribute("msg") %></span>
</form>

</body>
</html>