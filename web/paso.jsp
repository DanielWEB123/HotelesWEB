<%-- 
    Document   : paso
    Created on : 05-04-2025, 22:33:06
    Author     : CREAXXION-C56T03388
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        
        
        <p><%
            out.print(request.getAttribute("Nombre"));
        %></p>
        
        
    </body>
</html>
