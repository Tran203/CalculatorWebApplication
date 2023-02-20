<!DOCTYPE html>
<html>
<head>
	<title>Calculator - Values Page</title>
</head>
<body>
	<h1>Values</h1>
	<p>Please Enter values to add</p>
	<form action="CalculatorServlet.do" method="POST">
		<table>
			<tr>
				<td>First Number:</td>
				<td><input type="text" name="num1"><td> 
			</tr>
			<tr>
				<td>Second Number:</td>
				<td><input type="text" name="num2"></td>
			</tr>
			<tr>
				<td><input type="submit" value="add"></td>
			</tr>
		</table>
	</form>
</body>
</html>