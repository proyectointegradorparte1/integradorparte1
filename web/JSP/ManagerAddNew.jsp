<%-- 
    Document   : ManagerAddNew
    Created on : 30/03/2016, 07:35:53 PM
    Author     : jeferson
--%>

<%@page import="dao.DataAccess"%>
<%@page import="modelo.modelo1"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
       
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> JSP Page</title>
        
    </head>
    <body>
       <% 
           String nombre= request.getParameter("nombre"); 
           Date dateTemp = new Date(System.currentTimeMillis());
           SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd");
           String date = dateFormat.format(dateTemp.getTime());
           
          
           String apellido = request.getParameter("apellido");
           String correo = request.getParameter("correo");
           String telefono = request.getParameter("telefono");
           
            modelo1 n= new modelo1(0, nombre, apellido, correo, telefono);
            DataAccess da = new DataAccess();
            da.addNew(n);
            response.sendRedirect("/integradorparte1/AllPost");

           

           %>
  
    </body>
</html>
