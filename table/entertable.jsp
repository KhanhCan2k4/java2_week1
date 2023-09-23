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
<title>Create table</title>
<style type="text/css">
	html, body {
		margin: 0;
		padding: 0;
		width: 100%;
		height: 100%;
		text-align: center;
	}
	
	input {
		margin: 10px 0;
	}
	
	form {
		margin: 0 auto;
		width: 50%;
		border: 0.5px solid #000;
		border-radius: 30px;
	}
</style>
</head>
<body>
	<h1>CREATE YOUR TABLE</h1>
	<form action="table.jsp" method="post">
		Enter rows: 
		<input type="number" step="1" min="0" name="row" placeholder="Enter rows...">
		<br>
		Enter columns:
		<input type="number" step="1" min="0" name="col" placeholder="Enter columns...">
		<br>
		<input type="submit" name="submit" value="Submit">
	</form>
</body>
</html>