<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>

        <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">

        <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
        <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

    </head>
    <body>



        <table border="0" class="table">
            <thead>
                <tr>
                    <th scope="col"><img src="images/logo.jpg" style= "max-width: 100%; height: 100%" class="img-fluid" alt="..."></th>
                    <th scope="col"></th>
                    <th scope="col"></th>
                    <th scope="col">

            <form class="row g-3" action="cerrar_sesion" method="get">
                <input type="hidden" name="opcion" value=2 />
                <button type="input" class="btn btn-danger">Cerrar Session</button>
            </form>

            <br>
            <center>
                <h4>ADMINISTRADOR: ${usuariox}</h4>
            </center>

        </tr>
    </thead>
</table>    


<center><h3> INFORMACION DE USUARIOS</h3></center>

<table class="table">
    <thead>
        <tr>
            <th></th>
            <th scope="col">
               <form action="new_usuario_adm.jsp">
                   <button type="input" class="btn btn-secondary">Crear Usuario</button>
                </form>
            </th>
            <th scope="col"><a href="filtro_habitac.jsp" class="btn btn-primary btn-lg active" role="button" aria-pressed="true">HABITACIONES</a></th>
            <th scope="col"><a href="filtro_reservas.jsp" class="btn btn-primary btn-lg active" role="button" aria-pressed="true">RESERVAS</a></th>
        </tr>
    </thead>
</table>


<%
    Connection con;
    String url = "jdbc:mysql://localhost:3306/bd_hoteles";
    String Driver = "com.mysql.jdbc.Driver";
    String user = "root";
    String clave = "dan123";
    Class.forName(Driver);
    con = DriverManager.getConnection(url, user, clave);

    PreparedStatement ps;
    ResultSet rs;

    ps = con.prepareStatement("select * from usuarios");
    rs = ps.executeQuery();

%>

<br>

<table class="table">
    <thead>
        <tr>
            <th scope="col"></th>
            <th scope="col">Nombre</th>
            <th scope="col">Correo</th>
            <th scope="col">Password</th>
            <th scope="col">Celular</th>
            <th scope="col">Privilegios</th>
            <th scope="col"></th>
            <th scope="col"></th>
        </tr>
    </thead>
    <tbody>

        <% while (rs.next()) {%>

        <tr>
            <th scope="row"></th>
            <td><%= rs.getString("nombre")%></td>
            <td><%= rs.getString("mail")%></td>
            <td><%= rs.getString("password")%></td>
            <td><%= rs.getString("celular")%></td>
            <td><%= rs.getString("tipo")%></td>

            <td>
                <form class="row g-3" action="mod_usuario_adm.jsp" method="get">
                    <input type="hidden" name="id" value=<%= rs.getString("id")%> />
                    <input type="hidden" name="nom" value=<%= rs.getString("nombre")%> />
                    <input type="hidden" name="mail" value=<%= rs.getString("mail")%> />
                    <input type="hidden" name="passw" value=<%= rs.getString("password")%> />
                    <input type="hidden" name="celu" value=<%= rs.getString("celular")%> />
                    <input type="hidden" name="tipo" value=<%= rs.getString("tipo")%> />
                    <input type="hidden" name="opcion" value=5 />
                    <button type="submit" class="btn btn-primary">Modificar</button>
                </form>
            </td>
            <td>
            <td>
                <form class="row g-3" action="controller" method="get">
                    <input type="hidden" name="opcion" value=6 />
                    <input type="hidden" name="id" value=<%= rs.getString("id")%> />
                    <button type="submit" class="btn btn-danger">Eliminar</button>
                </form>
            </td>
        </tr>

        <% }%>

    </tbody>
</table>



</body>
</html>
