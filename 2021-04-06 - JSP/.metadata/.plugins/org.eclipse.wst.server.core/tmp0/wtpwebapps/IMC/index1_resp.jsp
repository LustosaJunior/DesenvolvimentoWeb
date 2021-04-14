<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
   <head>
        <title></title>
    </head>
   <body style="background-color: azure">
      <%
            String pes, alt;
            float peso = 0F;
            float altura = 0F;
     
            pes = request.getParameter("peso");
            alt = request.getParameter("altura");
            
            if (!pes.equals("")) {
                peso = Float.parseFloat(pes);
            }
            if (!alt.equals("")) {
                altura = Float.parseFloat(alt);
            }
            if (peso == 0 || altura == 0) {
                out.println("Peso/Altura Invalido(s)<br>");
            } else {
                float imc = peso / (altura * altura);
                out.println("IMC: " + imc +"<br>");
 				
                if (imc < 18.5) {
                    out.println("Voce esta abaixo do peso ideal!");
                } else if (imc >= 18.5 && imc <= 24.9) {
                    out.println("Parabens - Voce esta em seu peso ideal!");
                } else if (imc >= 25.0 && imc <= 29.9) {
                    out.println("Voce esta acima do seu peso ideal!");
                } else if (imc >= 30.0 && imc <= 34.9) {
                    out.println("Obsidade Grau I");
                } else if (imc >= 35.0 && imc <= 39.9) {
                    out.println("Obsidade Grau II");
                } else {
                    out.println("Obsidade Grau III (morbida)");
                }
            }
        %>
    </body>
</html>
    