<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.Date"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>

<!DOCTYPE html>

<%
    if (session.getAttribute("usuario") == null) {
        request.getRequestDispatcher("sesion.jsp").forward(request, response);
    }
%>

<html>
    <head>
        <title>RESERVAS</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">

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

    <center><h3> INFORMACION DE RESERVAS</h3></center>
<br>
<table class="table">
  <thead>
    <tr>
      <th></th>
      <th scope="col"></th>
      <th scope="col"><a href="view_usuarios.jsp" class="btn btn-primary btn-lg active" role="button" aria-pressed="true">USUARIOS</a></th>
      <th scope="col"><a href="filtro_habitac.jsp" class="btn btn-primary btn-lg active" role="button" aria-pressed="true">HABITACIONES</a></th>
      <th scope="col"><a href="filtro_reservas.jsp" class="btn btn-primary btn-lg disabled" role="button" aria-pressed="true">RESERVAS</a></th>
    </tr>
  </thead>
</table>

<br>

    <table class="table">
        <thead class="thead-light">
            <tr>
                <th scope="col"></th>
                <th scope="col">USUARIO</th>
                <th scope="col">HOTEL</th>
                <th scope="col">TIPO HABC</th>
                <th scope="col">N° HABIT</th>
                <th scope="col">N° BAÑOS</th>
                <th scope="col">VALOR $ DIA</th>
                <th scope="col"></th>
                <th scope="col"></th>
                <th scope="col"></th>
            </tr>
        </thead>
        <tbody>

            
            
        <%
            Connection con;
            String url = "jdbc:mysql://localhost:3306/bd_hoteles";
            String Driver = "com.mysql.jdbc.Driver";
            String user = "root";
            String clave = "dan123";
            Class.forName(Driver);
            con = DriverManager.getConnection(url, user, clave);

                PreparedStatement psxs;
                ResultSet rsxs;

                psxs = con.prepareStatement("select * from usuarios");
                rsxs = psxs.executeQuery();

                while (rsxs.next()) {

                    int idxx = Integer.parseInt(rsxs.getString("id"));

                    PreparedStatement qxx;
                    ResultSet rsxx;
                    qxx = con.prepareStatement("select * from reservacion where id_usuario = " + idxx + "");
                    rsxx = qxx.executeQuery();

                    while (rsxx.next()) {

                        int idxxx = Integer.parseInt(rsxx.getString("id_habitacion"));

                        PreparedStatement qxxx;
                        ResultSet rsxxx;
                        qxxx = con.prepareStatement("select * from habitacion where id = " + idxxx + "");
                        rsxxx = qxxx.executeQuery();

                        while (rsxxx.next()) {%>

            <tr>
                <th scope="row"></th>

                <td><%= rsxs.getString("nombre")%></td>

                <td><fmt:formatDate value="<%= rsxx.getDate("fecha_ingreso")%>" pattern="dd-MM-yyyy" /> </td>
                <td><fmt:formatDate value="<%= rsxx.getDate("fecha_salida")%>" pattern="dd-MM-yyyy" /> </td>

                <td><%= rsxxx.getString("tipo")%></td>
                <td><%= rsxxx.getString("num_cam")%></td>
                <td><%= rsxxx.getString("num_ban")%></td>
                <td>$ <fmt:formatNumber value="<%= rsxxx.getString("precio")%>" /> </td>

                <td><button type="input" class="btn btn-success">Modificar</button></td>
                <td><button type="input" class="btn btn-danger">Eliminar</button></td>
            </tr>

    <%
                    }
              }
   }%>


</tbody>

</table>

<br><br><center><footer style="color:cornflowerblue;"> © Desarrollado para IPChile </footer></center>
<script src="bootstrap/js/bootstrap.bundle.min.js"></script>

</body>
</html>
