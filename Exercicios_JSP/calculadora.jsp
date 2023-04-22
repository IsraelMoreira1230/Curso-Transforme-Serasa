<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
  <head>
    <meta charset="UTF-8" />
    <title>Resultado</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" />
  </head>
  <body>
    <div class="container">
      <h1>Resultado</h1>
      <% 
        double numero1 = Double.parseDouble(request.getParameter("numero1"));
        double numero2 = Double.parseDouble(request.getParameter("numero2"));
        String operador = request.getParameter("operador");
        double resultado = 0;
        switch (operador) {
          case "+":
            resultado = numero1 + numero2;
            break;
          case "-":
            resultado = numero1 - numero2;
            break;
          case "*":
            resultado = numero1 * numero2;
            break;
          case "/":
            resultado = numero1 / numero2;
            break;
        }
      %>
      <p>O resultado é <%= resultado %>.</p>
      <a href="calculadora.html">Voltar</a>
    </div>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
  </body>
</html>
