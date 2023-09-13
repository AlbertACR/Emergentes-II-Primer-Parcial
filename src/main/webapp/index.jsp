<%@page import="java.util.ArrayList"%>
<%@page import="com.emergentes.modelado.Productos"%>
<%
    if(session.getAttribute("listapro")==null){
       ArrayList<Productos> lisaux = new ArrayList<Productos>();
       session.setAttribute("listapro", lisaux);
    }
  ArrayList<Productos> lista =(ArrayList<Productos>) session.getAttribute("listapro");
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="action" >
                <fieldset> 
                 <legend>  </legend>
                <h3>PRIMER PARCIAL TEM-742</h3>
                <h3>Nombre: Albert Alexander  Cordero Rivera</h3>
                <h3>Carnet: 8373270</h3>
                </fieldset>
        </form>
        <h1>Gestión de Productos</h1>
        <a href="MainServlet?op=nuevo">Agregar Nuevo Producto</a>
        <table border="1">
                <tr>
                    <th>Id</th>
                    <th>Descripción</th>
                    <th>Cantidad</th>
                    <th>Precio</th>
                    <th>Categoria</th>
                    <th></th>
                    <th></th>
                </tr>
                <tr>
                     <%
                       if(lista != null){
                           for(Productos item :lista){
                    %>
                    <td><%= item.getId() %></td>
                    <td><%= item.getDescripcion()%></td>
                    <td><%= item.getCantidad()%></td>
                    <td><%= item.getPrecio()%></td>
                    <td><%= item.getCategoria()%></td>
                    <td>
                        <a href="MainServlet?op=editar&id=<%= item.getId() %>">Editar</a>
                    </td>
                    <td>
                        <a href="MainServlet?op=eliminar&id=<%= item.getId() %>"
                           onclick="return(confirm('Esta seguro de eliminar??..'))"
                           >Eliminar</a>
                    </td>
                </tr>
                <tr>
                    <%   
                           }
                       }
                    %>
                </tr>
        </table>

    </body>
</html>
