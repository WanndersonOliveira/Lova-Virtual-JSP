<%-- 
    Document   : listaProdutos
    Created on : 28/03/2018, 07:25:52
    Author     : aluno
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="codigos.Produto"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html" charset="UTF-8">
        <title>Prova</title>
    </head>
    <body>
        


        
        <%
          Produto produto = new Produto(request.getParameter("code"), request.getParameter("descr"), request.getParameter("preco"));
          ArrayList<Produto> produtos = new ArrayList();
          
          if( application.getAttribute("produtos") == null)
          {
              application.setAttribute("produtos", produtos);
          }
       
         if(!produto.getCodigo().equals(null)){
           ((ArrayList<Produto> ) application.getAttribute("produtos")).add(produto);
         }
         
       

        %>
        
        
        
        
        <h2>Lista de Produtos</h2>
        
        <form action="carrinho.jsp" method="post">
           <input type="submit" value="Ver Carrinho">      
        </form>
        
        
            <br><hr>
            <br><br>
            <table border='1'>
                <tr>
                    <td>
                        Código
                    </td>
                    <td>
                        Descrição
                    </td>
                    <td>
                        Valor
                    </td>
                    
                    <td>
                        Ação
                    </td>
                </tr>
            <% for(Produto p : (ArrayList<Produto>) application.getAttribute("produtos")) 
            { %>
                <tr>
                    <td>
                        <%=p.getCodigo() %>
                    </td>
                    <td>
                        <%=p.getDescricao() %>
                    </td>
                    <td>
                        <%=p.getValor() %>
                    </td>
                    <td>

                      <button onclick="buttonclick()">Selecionar</button>    
          
                      
                       <script type="text/javascript">
                        function buttonclick()
                         {
                         
                         <%      
                          if(p.isSelecionado()==false)
                          {
                           p.setSelecionado(true);
                           
                           
                           
                          }
                          else
                          {      
                           p.setSelecionado(false);
                          } 
                        %>
                       }
                         </script>
                                  

                    </td>
                </tr>
                
            <% 
            }
            %>
                
            </table>
             
            <%             
      
            session.setAttribute("produtos", ((ArrayList<Produto> ) application.getAttribute("produtos")));

            %>
   
    </body>
</html>
