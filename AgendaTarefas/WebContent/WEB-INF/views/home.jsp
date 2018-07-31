<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>home</title>
<style>
body{
          
  			  	 background:  url(https://www.bemcolar.com/media/catalog/product/cache/1/image/1800x/040ec09b1e35df139433887a97daa66f/p/a/xpapel-de-parede-adesivado-clean-para-sala.jpg.pagespeed.ic.V-emDxQlzk.jpg) repeat center center;
  				 background-size: 200px  200px;
   			 	 background-attachment: fixed;
 	
}
h1 {margin: 3px 0px 10px 0px;
     color:#CD5C5C;
     text-align: center;
     padding: 100px;
  	 font-style: italic;
  	  font-size:50px;
  	  
  	 
  	 
}
a: link {
    text-decoration: none;
     text-align: center;
   
      
  
  	
}
.button {
    background-color: #CD5C5C;
    border: none;
    color: white;
     
    padding: 15px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 20px;
    margin: 20px 15px;
    cursor: pointer;
	    
	    		display: flex;
	        flex-direction: row;
	         justify-content: center;
	       align-items: center
	   
   
}
.button:hover {
    box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24),0 17px 50px 0 rgba(0,0,0,0.19);
    
     
}
 
</style>
</head>
<body >

	<h1>Bem vindo(a) à sua Agenda de Tarefas</h1>
		
	
				<a href="/AgendaTarefas/tarefas/form" class="button">Nova Tarefa</a>
				<a href="/AgendaTarefas/tarefas" class="button">Listar Tarefas</a>


		
		
	

</body>
</html>