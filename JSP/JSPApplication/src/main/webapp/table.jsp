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
	<%!int no, t, i;%>
	<!-- Declaration -->
	<form name='frm' action='' method='POST'>
		<input type='text' name='t' value='' /><br>
		<br> <input type='submit' name='s' value='Show Table' />
	</form>
	<br>
	<br>
	
		<!-- ScriptLet -->
	<%
	String btn = request.getParameter("s");
	if (btn != null) {
		String data = request.getParameter("t");
		no = Integer.parseInt(data);
		out.println("<table border='5' align='left' width='50%'>");
		out.println("<tr><th>Iteration</th><th>X</th><th>Number</th><th>=</th><th>Result</th></tr>");
		for (i = 1; i <= 10; i++) {
			t = no * i;
			out.println("<tr>");
			out.println("<td>" + i + "</td>");
			out.println("<td>X</td>");
			out.println("<td>" + no + "</td>");
			out.println("<td>=</td>");
			out.println("<td>" + t + "</td>");

			out.println("</tr>");
		}
		out.println("</table>");
	}
	%>

</body>
</html>