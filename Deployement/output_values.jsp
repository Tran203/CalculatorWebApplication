<!DOCTYPE html>
<html>
<head>
	<title>Calculator -Output Page</title>
</head>
<body>
	<h1>Calculator Output Result</h1>
	<%
		Integer num1 = (Integer)request.getAttribute("num1");
		Integer num2 = (Integer)request.getAttribute("num2");
		Integer sum = (Integer)request.getAttribute("sum");
	%>
	
	<p>The sum of <%=num1%> and <%=num2%> is <%=sum%>.</p>
</body>
</html>