<%@page import="org.apache.jasper.tagplugins.jstl.core.Catch"%>
<%
	/*
		@target: create a basic calculator with plus, minus, multiply, dividen functions
		@author: Le Viet Khanh
		@id	   : 22211TT2577
		@date  : 2023-09-22
	*/
%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Basic calculator</title>
<style>
	html, body {
	width: 100%;
	height: 100%;
	margin: 0;
	padding: 0;
	box-sizing: border-box;	
	}

	.calculator {
		margin: 20px auto 0;
		width: 50%;
		height: auto;
		padding: 20px 10px;
		border-radius: 30px;
		border: 0.5px solid #000;
		text-align: center;
	}
	
	input, select {
		margin: 5px 0;
	}
	
</style>
</head>
<body>
	<div class="calculator">
		<h1 class="cal-title">BASIC CALCULATOR</h1>
		
		<!-- get current page -->
		<form class="cal-functions"
			action="<%= request.getRequestURI() %>"
			method="post"
		>
			<input type="number" step="1" name="num-1" placeholder="Enter number 1">
			<br>
			
			<select name="operator">
				<option value="+">+</option>
				<option value="-">-</option>
				<option value="*">&times;</option>
				<option value="/">/</option>
				<option value="%">%</option>
			</select>
			<br>
			
			<input type="number" step="1" name="num-2" placeholder="Enter number 2">
			<br>
			
			<input type="submit" name="btn-submit" value="=">
			<br>
			
		</form>
		<div class="cal-result">
			<% 
			if(!(request.getParameter("btn-submit")+"").isEmpty()) { //click button submit
				//declare variables
				int number1 = 0;
				int number2 = 0;
				int result = 0;
				char operator = '+';
				
				//get data from from submit
				try {
					operator = request.getParameter("operator").toCharArray()[0]; // convert String to char
					
					number1 = Integer.parseInt(request.getParameter("num-1"));
					number2 = Integer.parseInt(request.getParameter("num-2"));
					result = 0;
				} catch(Exception e) {
					//ignore 
				}
				
				//check operator and calculate the result
				switch(operator) {
					case '+':
						result = number1 + number2;
					break;
					case '-':
						result = number1 - number2;
					break;
					case '*':
						result = number1 * number2;
					break;
					case '/':
						try {
							result = number1 / number2;
						} catch(Exception e) {
							//print error
							out.print("<p style='color: red;'>Cannot divide into 0!!!</p>");
						}
					break;
					case '%':
						try {
							result = number1 % number2;
						} catch(Exception e) {
							//print error
							out.print("<p style='color: red;'>Cannot divide into 0!!!</p>");
						}
					break;
					default:
						//ignore
						break;
				}
				
				//print result
				out.print("<p>Result: "+ number1 +" "+ (operator == '*'? "&times;": operator) +" "+ number2 +" = "+ result +"</p>");
			}
			%>
		</div>
	</div>
</body>
</html>










