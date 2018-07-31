<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Nova tarefa</title>
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
  	  
  	  form {
  	  text-align: center;
  	  }
  	  
  	  
</head>
</style>
<body>
<h1>Nova Tarefa</h1>

            <form action="/AgendaTarefas/tarefas" method="post">
            
       
            <div><h3> Descrição:</h3>  </div>   
                <textarea name="descricao" rows="10" cols="60"></textarea><br />
                <div>
			<h3>Data de Finalização: </h3>  <input type="text"
				name="dataFinalizacao" />
		</div>

           <div>   <br> <input type="submit" value="Adicionar"> </br>   </div> 
            </form>
</body>
</html>