<%@page import="com.douzon.guestbook.dao.GuestbookDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	
	String buffer = request.getParameter("no");
	String password = request.getParameter("password");
	int no = Integer.parseInt(buffer);	
	
	boolean login = new GuestbookDao().delete(no,password);
	
	response.sendRedirect("/guestbook");
%>