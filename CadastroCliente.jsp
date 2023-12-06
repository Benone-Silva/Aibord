<%@ page import="Dao.ClienteDao" %>
<%@ page import="model.Cliente" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cadastro</title>
</head>
<body>
<%
ClienteDao clientedao = new ClienteDao();
String nome = request.getParameter("nome_complete");
String email = request.getParameter("email");
String senha = request.getParameter("password");
String CPF = request.getParameter("cpf");


Cliente cliente = new Cliente();
cliente.setNome(nome);
cliente.setCPF(CPF);
cliente.setEmail(email);
cliente.setSenha(senha);


ClienteDao clienteDao = new ClienteDao();


if(clienteDao.InserirCliente(cliente)){ %>
<script language="JavaScript">
	alert('Cliente Cadastrado com sucesso!');
	window.location.href="login.html"
</script>
<% }else{ %>
<script language="JavaScript">
	alert(' Nao foi possível cadastrar o cliente!');
	window.location.href="login.html"
</script>
<%} %>
%>
</body>
</html>