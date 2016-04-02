<%-- 
    Document   : EditPost
    Created on : 1/04/2016, 04:13:44 PM
    Author     : jeferson
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>editar</title>
    </head>
    <body>
        <h1>nueva edicion </h1>
        <div style="width:900px; margin-left: auto;margin-right: auto">
            <c:forEach items="${getNewsById}" var="p">
                <form  action="JSP/ManagerEditPost.jsp"    method="post">
             
             <input type="hidden" name="id" value="${p.id}" >
             NOMBRE
            <input type="text"  value="${p.nombre}" name="nombre" style="width:200px" ><br>
              APELLIDO
            <input type="text" value="${p.apellido}"  name="apellido" style="width: 200px" ><br>
             CORREO
            <input type="text"  value="${p.correo}" name="correo" style="width: 200px" ><br>
             TELEFONO
            <input type="text"  value="${p.telefono}" name="telefono" style="width: 200px"><br>
            
            
            <input type="submit"  value="Enviar"><br>
        
        
        </form>
            </c:forEach>
            
        </div>
    </body>
</html>
