<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Insert title here</title>
	</head>
	<body>
		<%
			double a = Double.parseDouble(request.getParameter("a"));
			double b = Double.parseDouble(request.getParameter("b"));
			double c = Double.parseDouble(request.getParameter("c"));
			
			double delta = Math.pow(b, 2) - 4 * a * c;
			double x1 = (-b + Math.sqrt(delta)) / (2 * a);
			double x2 = (-b - Math.sqrt(delta)) / (2 * a);
			
			out.print("Delta = " + delta + "<br>");
			out.print("X1 = " + x1 + "<br>");
			out.print("X2 = " + x2 + "<br>");
		%>
	</body>
</html>