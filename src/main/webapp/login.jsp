<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<meta charset="UTF-8">
<link type="text/css" rel="stylesheet" href="assets/css/login_style.css">
    <script>
       
    </script>
<title>登入頁面</title>
</head>
<body>
<div class="container" id="container">
        <div class="form-container sign-in-container">
           <form action="LoginServlet" method="post">
                <div style="margin:10px">
                <h1>登录</h1></div>
                <span>使用用户名登录</span>
                
               
                

帳號：<input type="text" name="username"><br />
密碼：<input type="password" name="userpassword"><br />
 <button>登录</button>
<!--  <span style="color:red"><%=request.getAttribute("msg") %></span>-->
<span style="color:red">${msg}</span>
</form>
            
        </div>
        <div class="overlay-container">
            <div class="overlay">
                
                <div class="overlay-panel overlay-right">
                   <!--  <img src="assets/img/webElement/logo.png" style="width: 25%; height:15%; margin:10px">
                   -->  <h1>国家数据展示</h1>
                    <p>用户账号/密码：<br />
                        admin / admin</p>
                    
                </div>
            </div>
        </div>
    </div>

   


</body>
</html>