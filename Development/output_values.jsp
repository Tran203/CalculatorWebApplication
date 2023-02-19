<!DOCTYPE html>
<html>
<head>
	<title>Calculator -Output Page</title>
</head>
<body>
	<h1>Calculator Output Result</h1>
	<%
		Integer num1 = Integer.parseInt(request.getParameter("num1"));
		Integer num2 = Integer.parseInt(request.getParameter("num2"));
		Integer sum = num1 + num2;
	%>
	
	<p>The sum of <%=num1%> and <%=num2%> is <%=sum%>.</p>
</body>
</html>