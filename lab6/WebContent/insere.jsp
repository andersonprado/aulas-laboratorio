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

	
</head>
<body>

	<div id="centro">

		<h1>Digite o Nome e as Notas do Aluno</h1>

		<div id="form">

			<form method="post" action="valida.jsp">
				<table border="0">
					<tr>
						<td>Nome:</td>
						<td><input type="text" name="nome" /></td>

					</tr>
					<tr>
						<td>Nota 1:</td>
						<td><select name="nota1">
								<%
									for (int i = 0; i <= 10; i++) {
								%>
								<option value="<%=i%>"><%=i%></option>
								<%
									}
								%>
						</select></td>
					</tr>
					<tr>
						<td>Nota 2:</td>
						<td><select name="nota2">
								<%
									for (int i = 0; i <= 10; i++) {
								%>
								<option value="<%=i%>"><%=i%></option>
								<%
									}
								%>
						</select></td>
					</tr>
					<tr>
						<td><input type="submit" value="Insere" /></td>
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
		</div>
	</div>


</body>
</html>