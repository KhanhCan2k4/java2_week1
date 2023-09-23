<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register information</title>
<style type="text/css">
	html, body {
		width: 100%;
		height: 100%;
		margin: 0;
		padding: 0;
		text-align: center;
	}
	
	.register-infor {
		text-align: left;
		width: 50%;
		margin: 0 auto;
		border: 0.5px solid #000;
		border-radius: 30px;
		padding: 20px 40px;
	}
</style>
</head>
<body>
	<h1>REGISTER INFORMATION</h1>
	<hr>
	<%
		//get data request
		String username = request.getParameter("username").equals("")? "unknown" : request.getParameter("username");
		String[] hobbies = request.getParameterValues("hobbies");
		String country = request.getParameter("country"); //USA as default
	%>
	<div class="register-infor">
		<h5>Username: <%= username %></h5>
		<h5>Hobbies: 
		<%
			if(hobbies == null) {
				out.print("none");
			} else {
				for(int i= 0; i< hobbies.length -1; i++) {
					out.print(hobbies[i] +", ");
				}
				
				if(hobbies.length >= 1) {
					out.print(hobbies[hobbies.length -1]);
				}
			}
		%>
		</h5>
		<h5>Country: <%= country %></h5>
	</div>
</body>
</html>