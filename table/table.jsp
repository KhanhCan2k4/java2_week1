<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Craete table</title>
<style type="text/css">
	html, body {
		width: 100%;
		height: 100%;
		margin: 0;
		padding: 0;
		text-align: center;
	}
	
	table, tr, th, td {
		padding: 5px 20px;
		border: 0.5px solid #000;
	}
	
	table {
		border-collapse: collapse;
		margin: 0 auto;
	}
	
	th {
		color: red;
	}
</style>
</head>
<body>
	<h1>YOUR TABLE</h1>
	<%
		int rows = Integer.parseInt(request.getParameter("row"));
		int columns = Integer.parseInt(request.getParameter("col"));
	%>
	<div>
		<table>
			<tr>
				<% for(int i=1; i<= columns; i++){ %>
					<th>Header <%= i+"" %></th>
				<% } %>
			</tr>
			<% for(int i=1; i<= rows; i++) { %>
				<tr>
					<% for(int j =1; j<= columns; j++){ %>
						<td><%= "Col " + j + ",Row " + i %></td>
					<% } %>
				</tr>
			<% } %>
		</table>
	</div>
</body>
</html>