<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Insert title here</title>
	</head>
	<body>
		<h1>Resultado</h1>
		
		<%
			double nota1 = Double.parseDouble(request.getParameter("nota1"));
			double nota2 = Double.parseDouble(request.getParameter("nota2"));
			double faltas = Double.parseDouble(request.getParameter("faltas"));
			
			double media = (nota1 + nota2) / 2;
			
			out.print("Média = " + media + "<br>");
			out.print("faltas = " + faltas + "<br>");
			
			if(media >= 6 && faltas <=20){
				out.print("Aluno Aprovado!");
			}else{
				if(media < 6 && faltas > 20){
					out.print("Aluno Reprovado por nota e falta!");
				}else if(media < 6){
					out.print("Aluno Reprovado por nota!");
				}else if(faltas > 20){
					out.print("Aluno Reprovado por falta!");
				}
			}
			
		%>
	</body>
</html>