package com.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.Impl.ScoreServiceImpl;

import dao.Impl.ScoreDaoImpl;

import model.PageBean;
import com.audrey.object.Nation;


public class FindNationData extends HttpServlet{
	
	private Nation nation;
	private ScoreServiceImpl scoreServiceImpl=new ScoreServiceImpl();
	
	public void doGet(HttpServletRequest request,HttpServletResponse response)
			throws ServletException,IOException{
		
		String cno=(String) request.getSession().getAttribute("cno");
		
		
		PageBean rs=scoreServiceImpl.scoreListPage(pageNo, pageCount, stuNum);
		
		request.setAttribute("list", rs);
		request.getRequestDispatcher("student/selectScore.jsp").forward(request, response);
	
		
	}
	public void doPost(HttpServletRequest request,HttpServletResponse response)
			throws ServletException,IOException{
		doGet(request,response);
	}

}
