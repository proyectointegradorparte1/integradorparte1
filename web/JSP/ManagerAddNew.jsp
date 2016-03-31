<%-- 
    Document   : ManagerAddNew
    Created on : 30/03/2016, 07:35:53 PM
    Author     : jeferson
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         <title>REGISTRO</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width,initial-scale=1.0">
        
    </head>
    <body>
        <h1>REGISTRARSE</h1>
        <div style="width:900px; margin-left: auto;margin-right: auto">
        <form  action="JSP/ManagerAddNew.jsp"    method="post">
              ID
            <input type="text" name="id" style="width: 200px"><br>
                NOMBRE
            <input type="text" name="nombre"style="width: 200px" ><br>
              APELLIDO
            <input type="text" name="apellido"style="width: 200px" ><br>
             CORREO
            <input type="text" name="correo"style="width: 200px" ><br>
             TELEFONO
            <input type="text" name="telefono" style="width: 200px"><br>
            
            
            <input type="submit"  value="enviar"><br>
        
        
        </form>
        </div>
    </body>
</html>
