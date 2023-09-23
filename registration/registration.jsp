<%
	/*
		@target: create table with entered rows and columns
		@author: Le Viet Khanh
		@id    : 22211TT2577
		@class : 22211TT2577
		@date  : 2023-09-23
	*/
%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Kane Lee Academy Registration</title>
<style type="text/css">
	html, body {
		width: 100%;
		height: 100%;
		margin: 0;
		padding: 0;
		text-align: center;
	}
	
	form {
		text-align: left;
		width: 50%;
		margin: 0 auto;
		border: 0.5px solid #000;
		border-radius: 30px;
		padding: 20px 40px;
	}
	
	input {
		margin: 5px;
	}
</style>
</head>
<body>
	<h1>REGISTER NEW USER</h1>
	<hr>
	<form action="infor.jsp">
		Username:
		<input type="text" min="1" name="username" placeholder="Enter your username...">
		<br>
		Hobbies:
		<input type="checkbox" value="Music" name="hobbies">Music
		<input type="checkbox" value="Movie" name="hobbies">Movie
		<input type="checkbox" value="Sports" name="hobbies">Sports
		<input type="checkbox" value="Shopping" name="hobbies">Shopping
		<br>
		Country:
		<select name="country">
			<option value="us">USA</option>
			<option value="vn">Vietnam</option>
			<option value="ja">Japan</option>
			<option value="id">India</option>
			<option value="cn">China</option>
			<option value="fa">France</option>
		</select>
		<input type="submit" name="submit" value="Register">
	</form>
</body>
</html>