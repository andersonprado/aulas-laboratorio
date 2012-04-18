<%@ page import="br.com.mackenzie.Model.Aluno"%>


<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Insert title here</title>


<style type="text/css">
table,tr,td {
	margin-left: auto;
	margin-right: auto;
	border-style: solid;
	text-align: center;
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

#tabela {
	height: 300px;
	padding-top: 35px;
	margin-left: auto;
	margin-right: auto;
	width: 80%;
}
</style>

</head>
<body>
	<%
		if (session.getAttribute("aluno") == null) {
			response.sendRedirect("index.jsp?erro=erro");
		} else {

			Aluno aluno = (Aluno) session.getAttribute("aluno");
	%>


	<div id="centro">

		<h1>Dados do Aluno</h1>

		<div id="tabela">


			<table border="1" width="80%">
				<tr>
					<th>Nome</th>
					<th>Nota 1</th>
					<th>Nota 2</th>
				</tr>
				<tr style="cursor: default"
					onMouseOver="javascript:this.style.backgroundColor='red'"
					onMouseOut="javascript:this.style.backgroundColor=''">
					<td><%=aluno.getNome()%></td>
					<td><%=aluno.getNota1()%></td>
					<td><%=aluno.getNota2()%></td>

				</tr>

			</table>

			<div id="">
				<form action="">
					<input type="submit" value="Voltar" /> <input type="submit"
						value="Voltar" />
				</form>
			</div>
		</div>



	</div>















	<%
		}
	%>

</body>
</html>