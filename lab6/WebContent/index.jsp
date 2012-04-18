<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Cadastro</title>

<link rel=”stylesheet” type=”text/css” href=”css/estilo1.css” />
<link rel="icon" href="img/simbolo_M.ico">

<style type="text/css">
table,tr,td {
	border: 0px solid black;
	margin-left: auto;
	margin-right: auto;
}

h1 {
	margin-top: 40px;
	text-align: center;
	color: #8B0000;
}

body {
	background-repeat: repeat;
	background-color: #white;
	background-image: url(img/fundo.jpg);
}

#centro {
	background-color: #CFCFCF;
	height: 400px;
	left: 50%;
	margin: -240px 0 0 -320px;
	position: absolute;
	top: 50%;
	width: 800px;
	-webkit-border-radius: 40px;
	-moz-border-radius: 40px;
	border-radius: 40px;
	background-repeat: repeat;
	background-color: #white;
	background-image: url(img/paper.gif);
}

#form {
	height: 300px;
	padding-top: 35px;
	margin-left: auto;
	margin-right: auto;
	width: 80%;
}
</style>
</head>
<body>

	<div id="centro">

		<h1>Login</h1>

		<div id="form">

			<form method="post" action="valida.jsp">
				<table border="0">
					<tr>
						<td>Nome:</td>
						<td><input type="text" name="nome" /></td>




						<td><input type="submit" value="Logar" /></td>
					</tr>
				</table>

			</form>

			<%
				if (request.getParameter("erro") != null) {
			%>
			<p style="text-align: center; color: red"><%=request.getParameter("erro")%></p>
			<%
				}
			%>



			<div style="margin-top: 140px;">
				<form method="post" action="insere.jsp">
					<table border="0">

						<tr>
							<td><input type="submit" value="Cadastrar Aluno" /></td>
						</tr>
					</table>

				</form>
			</div>
		</div>
	</div>


</body>
</html>