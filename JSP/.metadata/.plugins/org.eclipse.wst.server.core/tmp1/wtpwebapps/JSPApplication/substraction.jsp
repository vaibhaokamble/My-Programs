<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
input {
	width: 400px;
	height: 40px;
}
</style>
</head>
<body>
	<!-- Declaration -->
	<%!int a, b, c;%>
	<center>
		<form name='frm' action='' method='POST'>
			<input type='text' name='first' value='' /><br></br> <input
				type='text' name='second' value='' /><br></br> <input type='submit'
				name='s' value='Calculate Substraction' /><br></br>
		</form>
	</center>
	<!-- ScriptLet -->
	<%
	String btn = request.getParameter("s");
	if (btn != null) //If Button Click By User
	{
		String first = request.getParameter("first");
		String second = request.getParameter("second");
		a = Integer.parseInt(first);
		b = Integer.parseInt(second);
		c = a - b;
		out.println("<h1> Substraction is </h1>" + c);
	}
	%>

</body>
</html>