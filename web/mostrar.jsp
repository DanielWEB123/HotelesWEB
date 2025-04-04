<%-- 
    Document   : mostrar
    Created on : 03-04-2025, 23:38:47
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
        <h1>Hello World!eeeee</h1>


<%@ page import="java.util.*" %> 
<% 
    String[] stringArray = (String[]) request.getAttribute("stringArray"); 
    for (String value : stringArray) { 
        out.println(value + "<br>"); 
    } 
%> 


    </body>
</html>
