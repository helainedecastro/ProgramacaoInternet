<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<style>
h2 {margin: 3px 0px 10px 0px;
     color:#CD5C5C;
     text-align: center;
     padding: 90px;
  	 font-style: italic;
  	  font-size:50px;
  	  }

table{
  	  text-align: center;
  	 
  	  }
 

</style>
</head>
<body>
<c:import url="../menu.jsp"></c:import>

	<h2>Lista de tarefas</h2>

	<table border="1" align="center">
		<tr>
			
			<th>Descrição</th>
			<th>Data de Finalização</th>
		</tr>
		<c:forEach var="tarefas" items="${tarefas}">
			<tr>
				
				<td>${tarefas.descricao }</td>
				<td><fmt:formatDate value="${tarefas.dataFinalizacao.time}"
						pattern="dd/MM/yyyy" /></td>
				<td><a href="/AgendaTarefas/tarefas/remover?id=${tarefas.id}">Remover</a></td>
				<td><a
					href="/AgendaTarefas/tarefas/selecionar?id=${tarefas.id}">Alterar</a></td>
			</tr>
		</c:forEach>

	</table>


</body>
</html>