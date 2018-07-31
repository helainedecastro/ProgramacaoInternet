<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Alterar</title>
<style>
h1 {margin: 3px 0px 0px 0px;
     color:#CD5C5C;
     text-align: center;
   padding: 15px 32px;
  	 font-style: italic;
  	  font-size:50px;
  	  }
 form {
  	  text-align: center;
  	  }
  	  
</style>
</head>
<body>
	<c:import url="../menu.jsp"></c:import>
	<h1>Alterando Tarefa:</h1>
	<form action="/AgendaTarefas/tarefas/alterar" method="post">
	
	
	<div>
			<h3>ID: ${tarefa.id} </h3>  <input type="hidden" name="id"
				value="${tarefa.id }"> </div>
		
		<div> <h3> Descrição: </h3></label> <br /> </div>
              <textarea name="descricao" rows="10" cols="60" >${tarefa.descricao }</textarea><br /> 
            
              
              
              
		<div>
			<h3>Data de Finalização: </h3> <input type="text"
				name="dataFinalizacao"
				value='<fmt:formatDate value="${tarefa.dataFinalizacao.time }" pattern="dd/MM/yyyy"/>' />
		</div>
		<div>
		<br>	<button type="submit">Alterar</button> </br>
		</div>

</form>
</body>
</html>