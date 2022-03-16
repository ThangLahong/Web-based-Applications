<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>Login</title>
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
		<link rel="stylesheet" href="<c:url value='/resources/css/loginstyle.css'/>">
	</head>
	
	<body>
		<div class="container-fluid">
		<div class="row">
		<div class="col-sm-12 col-md-6 left bg-white text-dark">
			<h2><b>Sign in</b></h2>
			<h5>${error }</h5>
			<form method="post" action="/PRJ321x_A4/login.html">
				<input type="text" name="username" placeholder="Enter Username" value="${param.username }">
				<br/>
				<input type="password" name="password" placeholder="Enter Password" value="${param.password }">
				<br/>
				<input type="checkbox" name="remember">
				<label for="remember">Remember me</label>
				<br/>
				<a class="mt-3" href="#">Forgot your password?</a>
				<br/>
				<a class="mt-3" href="#">Create new account</a>
				<br/>
				<input type="submit" value="LOGIN">
				<br/>
			</form>
		</div>
		
		<div class="col-sm-12 col-md-6 right bg-dark text-white">
			<h2><b>Welcome Back!</b></h2>
			<p>To keep connected with us <br/>please login with your personal <br/>info</p>
		</div>
		</div>
		</div>
	</body>
</html>