<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.*" %>
<%
	String endereco = request.getParameter("endereco");
	String tipo = request.getParameter("tipo");
	String descricao = request.getParameter("descricao");
	
	String dataHora = java.time.LocalDateTime.now().toString();
	
	String linha = endereco + ";" + tipo + ";" + descricao + ";" + dataHora + "\n";
	
	String caminhoArquivo = "/caminho/para/arquivo/reclamacoes.txt";
	
	try {
		FileWriter fw = new FileWriter(caminhoArquivo, true);
		fw.write(linha);
		fw.close();
	} catch (IOException e) {
		e.printStackTrace();
	}
%>

<!DOCTYPE html>
<html>
<head>
	<title>Reclamação enviada</title>
</head>
<body>
	<h1>Reclamação enviada com sucesso!</h1>
	<p>O endereço informado foi: <%= endereco %></p>
	<p>O tipo de problema informado foi: <%= tipo %></p>
	<p>A descrição informada foi: <%= descricao %></p>
</body>
</html>
