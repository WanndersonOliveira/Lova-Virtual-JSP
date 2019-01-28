<%-- 
    Document   : index
    Created on : 28/03/2018, 04:13:47
    Author     : aluno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Prova</title>
    </head>
    <body>
        <h3>Componentes: Saulo Daniel e Wannderson Eduardo</h3>
        <br>
    <h2>Cadastro de Produtos</h2>
    <hr>
    <form method="post" action="listaProdutos.jsp">
        Código: <input type="text" size="10" name="code"><br><br>
        Descrição: <input type="text" size="20" name="descr"><br><br>
        Preço: <input type="text" size="15" name="preco"><br><br>
        <hr>
        <input type="submit" value="Cadastrar"><br><br>
        
    </form>
    </body>
</html>
