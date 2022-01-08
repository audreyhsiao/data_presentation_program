package com.controller;

import javax.servlet.http.*;
import javax.servlet.annotation.WebServlet;

import java.io.IOException;

import javax.servlet.ServletException;


@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	@Override 
	protected void service(HttpServletRequest request,HttpServletResponse response)throws ServletException, IOException {
		//設置編碼格式 防止亂碼
		request.setCharacterEncoding("UTF-8");
		//接收客戶端傳遞參數
		String uname = request.getParameter("username");
		String upwd = request.getParameter("userpassword");
		
		//判斷帳號是否為空
		if(uname == null || "".equals(uname.trim())) {
			//提示用戶輸入不得為空
			request.setAttribute("msg", "用戶帳號不得為空");
			//請求轉發跳轉到Login.jsp
			request.getRequestDispatcher("login.jsp").forward(request,response);
			return;
		}
		
		//判斷密碼是否為空
				if(upwd == null || "".equals(upwd.trim())) {
					//提示用戶輸入不得為空
					request.setAttribute("msg", "用戶密碼不得為空");
					//請求轉發跳轉到Login.jsp
					request.getRequestDispatcher("login.jsp").forward(request,response);
					return;
				}
		
		//判斷帳號密碼是否正確 uname=admin upwd=admin
				if(!"admin".equals(uname) || !"admin".equals(upwd)) {
					request.setAttribute("msg", "帳號或密碼錯誤");
					//請求轉發跳轉到Login.jsp
					request.getRequestDispatcher("login.jsp").forward(request,response);
				}
		//登入成功
		//設置登入信息到session作用域
				request.getSession().setAttribute("uname",uname);
		//跳轉到index.jsp
			response.sendRedirect("index.jsp");
		
	}

}
