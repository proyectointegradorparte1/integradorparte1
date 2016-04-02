<%-- 
    Document   : ManagerEditPost
    Created on : 1/04/2016, 01:49:17 PM
    Author     : jeferson
--%>

<%@page import="dao.DataAccess"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String idTemp = request.getParameter("id");
            int id = Integer.parseInt(idTemp);
            String nombre = request.getParameter("nombre");
            String apellido = request.getParameter("apellido");
            String correo = request.getParameter("correo");
            String telefono = request.getParameter("telefono");
            DataAccess da = new DataAccess();
            da.editar(id, nombre, apellido, correo, telefono);
            response.sendRedirect("/integradorparte1/AllPost");
            
            

            %>
    </body>
</html>
