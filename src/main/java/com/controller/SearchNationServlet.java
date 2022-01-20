package com.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class SearchNationServlet
 */
@WebServlet("/SearchNationServlet")
public class SearchNationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
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
		
		
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SearchNationServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
