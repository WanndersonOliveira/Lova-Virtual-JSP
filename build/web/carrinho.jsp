<%-- 
    Document   : carrinho
    Created on : 28/03/2018, 07:32:01
    Author     : aluno
--%>
<%@page import="java.util.ArrayList"%>
<%@page import="codigos.Produto"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Prova</title>
    </head>
    <body>
        
                
        <%
          ArrayList<Produto> produtos = (ArrayList<Produto>) session.getAttribute("produtos");
          
          if( session.getAttribute("produtos") == null)
          {
              session.setAttribute("produtos", produtos);
              
          }
        %>
        
        
        
        
        <h2>Carrinho de Compras</h2>
        
       

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
            <% for(Produto p : produtos) 
            {
                
              if(p.isSelecionado()==true){
            %>
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

                      <button onclick="buttonclick()">Excluir</button>    
          
                      
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
            }
            %>
                
            </table>
        
        <a href="listaProdutos.jsp">
          <button>Voltar</button>
        </a>
    </body>
</html>
