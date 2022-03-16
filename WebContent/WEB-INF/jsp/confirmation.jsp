<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="<c:url value='/resources/css/confirmationstyle.css'/>">
</head>
<body>
	<div class="side">
		<p><b>MY TEAM</b></p>
		<a href="#"><i class="fa fa-th-large"></i>Dash board</a>
		<a href="#"><i class="fa fa-user"></i>Staff Manager</a>
		<a href="#"><i class="fa fa-sign-out"></i>Log out</a>
	</div>
	
	<div class="main">
		<img src="<c:url value='/resources/image/halong.png'/>">
		<div class="member">
			<h3>Welcome ${username }</h3>
			<table>
				<caption>Member of the Team</caption>
				<tr>
					<th>ID</th>
					<th>Name</th>
					<th>Student ID</th>
					<th>Cross</th>
				</tr>
				<tr>
					<td>1</td>
					<td>Member 1</td>
					<td>Member Code 1</td>
					<td>Cross 1</td>
				</tr>
				<tr>
					<td>2</td>
					<td>Member 2</td>
					<td>Member Code 2</td>
					<td>Cross 2</td>
				</tr>
			</table>
		</div>
	</div>
</body>
</html>


