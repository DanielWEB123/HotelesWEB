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
        <title>Seleccionar Habitaciones</title>
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
                <h4>${usuariox}</h4>
            </center>

        </tr>
    </thead>
</table>    

    <center> 
       <img src="images/reserva.jpg" alt="Card image cap">    
    </center>
   
    <div class="row row-cols-1 row-cols-md-5 g-4 justify-content-center">

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

//            int id_usux = Integer.parseInt((String)request.getAttribute("id_usu"));
            String id_usux = (String)session.getAttribute("id_usux");
            
            ps = con.prepareStatement("select * from reservacion where id_usuario = " + id_usux + "");
            rs = ps.executeQuery();

            while (rs.next()) {%>

        <div class="card">
            <%

                int id_habitacionx = Integer.parseInt(rs.getString("id_habitacion"));

                PreparedStatement qx;
                ResultSet rsx;
                qx = con.prepareStatement("select * from habitacion where id = " + id_habitacionx + "");
                rsx = qx.executeQuery();

                if (rsx.next()) {

                    int id_hotelx = Integer.parseInt(rsx.getString("id_hotel"));

                    PreparedStatement qxx;
                    ResultSet rsxx;
                    qxx = con.prepareStatement("select * from hoteles where id = " + id_hotelx + "");
                    rsxx = qxx.executeQuery();

                    if (rsxx.next()) { %>

                       <div class="card-body">
                       <h5 class="card-title"><%= rsxx.getString("nombre")%></h5>
                       <img src="images/<%= rsxx.getString("categ")%>.jpg">
                       </div>
                       <img class="card-img-top" src="images/<%= rsxx.getString("imagen")%>" alt="Card image cap">
                       <div class="card-body">

                           <h6 class="card-title">Habitación: <%= rsx.getString("tipo")%></h6>
                           <h6 class="card-title">N° Habitac: <%= rsx.getString("num_cam")%> - N° Baños: <%= rsx.getString("num_ban")%></h6>
                           Ingreso: <fmt:formatDate value="<%= rs.getDate("fecha_ingreso")%>" pattern="dd-MM-yyyy" /><br> 
                           Salida: <fmt:formatDate value="<%= rs.getDate("fecha_salida")%>" pattern="dd-MM-yyyy" /><br> 
                           <h6 class="card-title">Valor: $ <fmt:formatNumber value="<%= rsx.getString("precio")%>" /></h6> 
                       
                       <% }
                } %>

            </div>
            <div class="nav">
                <button type="button" class="btn btn-warning">Anular</button>
            </div>
        </div>
        <%}%>
    </div>
    
<br><br>

<table class="table table-success table-striped">

    <tbody>

        <tr>
            <th scope="row"></th>
            <td colspan="2">

                <h1>Buscar Alojamiento:</h1>

                <form class="row g-3" action="controller" method="get">

                    <div class="col-md">
                        <div class="form-floating">
                            <select name="ciudad" class="form-select" id="floatingSelectGrid" aria-label="Floating label select example">
                                <option selected value="">Selecionar Ciudad</option>
                                <option value="Valparaiso">Valparaiso</option>
                                <option value="Vina del Mar">Viña del Mar</option>
                                <option value="Santiago">Santiago</option>
                            </select>
                            <label for="floatingSelectGrid">Ciudad</label>
                        </div>
                    </div>

                    <div class="col-md">
                        <div class="form-floating">
                            <input type="date" class="form-control"/>
                            <label for="floatingSelectGrid">Fecha Inicio</label>
                        </div>
                    </div>


                    <div class="col-md">
                        <div class="form-floating">
                            <input type="date" class="form-control"/>
                            <label for="floatingSelectGrid">Fecha Termino</label>
                        </div>
                    </div>

                    <div class="col-md">
                        <div class="form-floating">
                            <select class="form-select" id="floatingSelectGrid" aria-label="Floating label select example">
                                <option value="1" selected>1</option>
                                <option value="2">2</option>
                                <option value="3">3</option>
                            </select>
                            <label for="floatingSelectGrid">Habitaciones</label>
                        </div>
                    </div>

                    <div class="col-md">
                        <div class="form-floating">
                            <select required class="form-select" id="floatingSelectGrid" aria-label="Floating label select example">
                                <option value="1" selected>1</option>
                                <option value="2">2</option>
                                <option value="3">3</option>
                            </select>
                            <label for="floatingSelectGrid">Baños</label>
                        </div>
                    </div>

                    <input type="hidden" name="id_usu" value=${id_usu} />
                    <input type="hidden" name="opcion" value=1 />

                    <div class="col-auto">
                        <button type="submit" class="btn btn-secondary btn-lg">Buscar</button>
                    </div>

                </form>

            </td>
            <td></td>
        </tr>
    </tbody>

</table>

<br><br>


<c:if test="${filtro != 0}">

    <table class="table">
        <thead class="thead-light">
            <tr>
                <th scope="col"></th>
                <th scope="col"></th>
                <th scope="col">HOTEL</th>
                <th scope="col">TIPO HABC</th>
                <th scope="col">N° HABIT</th>
                <th scope="col">N° BAÑOS</th>
                <th scope="col">VALOR $ DIA</th>
                <th scope="col"></th>
            </tr>
        </thead>
        <tbody>

            
            <%

                PreparedStatement psxs;
                ResultSet rsxs;

//                String ciux = request.getParameter("Ciudad");
                String ciux = (String)request.getAttribute("Ciudad");
                
                psxs = con.prepareStatement("select * from hoteles where ubicacion = '" + ciux + "'");
                rsxs = psxs.executeQuery();

                while (rsxs.next()) {%>

            <tr>
                <th scope="row"></th>

                <%

                    int idxx = Integer.parseInt(rsxs.getString("id"));
  //                  int n_camx = Integer.parseInt((String)request.getAttribute("num_cam"));
  //                  int n_banx = Integer.parseInt((String)request.getAttribute("num_ban"));

                    PreparedStatement qxx;
                    ResultSet rsxx;
//                    qxx = con.prepareStatement("select * from habitacion where id_hotel = " + idxx + " && num_cam = " + n_camx + " && num_ban = " + n_banx + "");
                    qxx = con.prepareStatement("select * from habitacion where id_hotel = " + idxx + "");
                    rsxx = qxx.executeQuery();

                    if (rsxx.next()) {
                      %> <td><img class="img-thumbnail" style="max-width: 150px; height: auto" src="images/<%= rsxs.getString("imagen")%>" alt="Card image cap"></td> <%
                      %> <td> <%= rsxs.getString("nombre")%> </td>

                <td><%= rsxx.getString("tipo")%></td>
                <td><%= rsxx.getString("num_cam")%></td>
                <td><%= rsxx.getString("num_ban")%></td>
                <td>$ <fmt:formatNumber value="<%= rsxx.getString("precio")%>" /> </td>
                    
                    <%
                    }
                %>

                <td><button type="button" class="btn btn-success">Reservar</button></td>
            </tr>


            <% }%>
        </tbody>

    </table>

</c:if>


<br><br><center><footer style="color:cornflowerblue;"> © Desarrollado para IPChile </footer></center>
<script src="bootstrap/js/bootstrap.bundle.min.js"></script>

</body>
</html>
