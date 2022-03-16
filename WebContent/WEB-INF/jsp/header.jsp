<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<title>${param.title }</title>
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
	<link href='<c:url value="/resources/css/homestyle.css" />' rel='stylesheet'>
</head>
<body>
	<div class="header">
		<div class="content">
			<h1>PRJ321x</h1>
			<h5>Welcome to my <br/> Website</h5>
		</div>
		<form>
			<div class="search">
				<input type="hidden" name="action" value="search">
				<input type="text" placeholder="What are you looking for?" name="search" value="<%= request.getAttribute("characters") == null ? "" : request.getAttribute("characters") %>">
				<button type="submit"><i class="fa fa-search"></i></button>
			</div>
		</form>
	</div>
	
	<div class="topnav">
		<a class="home" href="#"><i class="fa fa-home"></i> Home</a>
		<a href="#"><i class="fa fa-list-alt"></i> Products</a>
		<a href="#"><i class="fa fa-info-circle"></i> About Us</a>
		<a class="register" href="#"><i class="fa fa-user-plus"></i> Register</a>
		<a class="login" href="/PRJ321x_A4/login.html"><i class="fa fa-sign-in"></i> Login</a>
	</div>