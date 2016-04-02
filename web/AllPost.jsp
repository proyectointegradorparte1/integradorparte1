<%-- 
    Document   : AllPost
    Created on : 30/03/2016, 11:39:14 PM
    Author     : jeferson
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>tabla</title>
    </head>
    <body>
       <div style="width:1200px; margin-left: auto;margin-right: auto">
           
           <table cellpadding="10">
               <tr>
                   <th> ID </th>  
                   <th> NOMBRE</th>
                   <th> APELLIDO </th>
                   <th> CORREO </th>
                   <th> TELEFONO </th>
                   <th>  </th>
                   
               </tr>
               <c:forEach items="${AllPost}" var="p">
                   <tr>
                       <td>  ${p.id}</td>
                       <td>  ${p.nombre}</td>
                       <td>  ${p.apellido}</td>
                       <td>  ${p.correo}</td>
                       <td>  ${p.telefono}</td>
                       <td> 
                           <a href="editar?id=${p.id}">EDITAR</a>
                           <a href="eliminar?id=${p.id}">ELIMINAR</a>
                           
                       
                       </td>
                       
                       
                   </tr>
                   
               </c:forEach>
               
           </table>
       </div>>
    </body>
</html>
