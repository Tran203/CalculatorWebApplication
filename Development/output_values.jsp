<!DOCTYPE html>
<html>
<head>
	<title>Calculator -Output Page</title>
	<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
	<div class="container">
		<h1>Calculator Output Result</h1>
	<%
		Integer num1 = (Integer)request.getAttribute("num1");
		Integer num2 = (Integer)request.getAttribute("num2");
		Integer result = (Integer)request.getAttribute("result");
	%>
	
	<p>The sum of <%=num1%> and <%=num2%> is <%=result%>.</p>
	</div>
</body>
</html>