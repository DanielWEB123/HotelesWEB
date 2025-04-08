<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true" %>
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
                <h4> <% out.print(request.getParameter("nom")); %></h4>
            </center>

        </tr>
    </thead>
</table>    



<table class="table">
    <thead class="thead-light">
        <tr>
            <th scope="col">#</th>
            <th scope="col">First</th>
            <th scope="col">Last</th>
            <th scope="col">Handle</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <th scope="row">1</th>
            <td>Mark</td>
            <td>Otto</td>
            <td>@mdo</td>
        </tr>
        <tr>
            <th scope="row">2</th>
            <td>Jacob</td>
            <td>Thornton</td>
            <td>@fat</td>
        </tr>
        <tr>
            <th scope="row">3</th>
            <td>Larry</td>
            <td>the Bird</td>
            <td>@twitter</td>
        </tr>
    </tbody>
</table>


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
            Connection con;
            String url = "jdbc:mysql://localhost:3306/bd_hoteles";
            String Driver = "com.mysql.jdbc.Driver";
            String user = "root";
            String clave = "dan123";
            Class.forName(Driver);
            con = DriverManager.getConnection(url, user, clave);

            PreparedStatement ps;
            ResultSet rs;

            ps = con.prepareStatement("select * from habitacion");
            rs = ps.executeQuery();

            while (rs.next()) {%>

        <tr>
            <th scope="row"></th>

            <%

            int idx = Integer.parseInt(rs.getString("id_hotel"));
                
            PreparedStatement qx;
                ResultSet rsx;
                qx = con.prepareStatement("select * from hoteles where id = " + idx + "");
                rsx = qx.executeQuery();

                if (rsx.next()) {
                    %> <td><img class="img-thumbnail" style="max-width: 150px; height: auto" src="images/<%= rsx.getString("imagen")%>" alt="Card image cap"></td> <%
                  %> <td> <%= rsx.getString("nombre")%> </td> <%
                }
            %>

            <td><%= rs.getString("tipo")%></td>
            <td><%= rs.getString("num_cam")%></td>
            <td><%= rs.getString("num_ban")%></td>
            <td><%= rs.getString("precio")%></td>
            <td><button type="button" class="btn btn-success">Reservar</button></td>
        </tr>
        <% }%>
    </tbody>

</table>



<p><%
    //out.print(session.getAttribute("nombre"));
//    String namee = (String) session.getAttribute("nombre");
//    out.print(namee);
    %></p>
<p><%
//    out.print((Usuario)request.getAttribute("f_ini"));
    %></p>
<p><%    out.print(request.getAttribute("nom"));
    %></p>
<p><%
    out.print(request.getParameter("nom"));
    %></p>
<p><%
    out.print(request.getAttribute("mail"));
    %></p>






<br><br><center><footer style="color:cornflowerblue;"> © Desarrollado para IPChile </footer></center>
<script src="bootstrap/js/bootstrap.bundle.min.js"></script>

</body>
</html>
