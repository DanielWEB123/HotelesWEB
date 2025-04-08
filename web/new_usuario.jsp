<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>New Usuario</title>

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
            <center>
                <a class="nav-link" style="color: blue" href="index.jsp">Volver a INICIO</a>
            </center>
        </th>
    </tr>
</thead>
</table>    





<div class="login-page">
    <div class="container">
        <div class="row">
            <div class="col-lg-8 offset-lg-2">
                <h1 class="mb-3">Ingresar Datos Usuario</h1>
                <div class="bg-white shadow rounded">
                    <div class="row">
                        <div class="col-md-7 pe-0">
                            <div class="form-left h-100 py-5 px-5">
                                
                                <form action="controller" method="post" class="row g-4">

                                    <div class="col-12">
                                        <label>Nombre<span class="float-end text-primary">&nbsp; (*)</span></label>
                                        <div class="input-group">
                                            <div class="input-group-text"><i class="bi bi-person-fill"></i></div>

                                            <% if (request.getParameter("nom") == null) { %>
                                            <input type="text" name="nom" value="" class="form-control" placeholder="Ingrese Nombre" required>
                                            <% } else {%>
                                            <input type="text" name="nom" value="<%= request.getParameter("nom")%>" class="form-control" placeholder="Ingrese Nombre" required>
                                            <% }%>

                                        </div>
                                    </div>

                                    <div class="col-12">
                                        <label>Correo<span class="float-end text-primary">&nbsp; (*)</span></label>
                                        <% if (request.getParameter("xxx") == null) { %>
                                        <% } else {%>
                                        <label style="color:red"> <%= request.getParameter("xxx")%> </label>
                                        <% }%>

                                        <div class="input-group">
                                            <div class="input-group-text"><i class="bi bi-lock-fill"></i></div>

                                            <% if (request.getParameter("xxx") == null) { %>
                                               <input type="email" name="mail" class="form-control" placeholder="Ingrese Correo" required>
                                            <% } else {%>
                                               <input type="email" style="color:red" name="mail" value="<%= request.getParameter("mail")%>" class="form-control" placeholder="Ingrese Correo" required>
                                            <% }%>
                                        </div>
                                    </div>

                                    <div class="col-12">
                                        <label>Password<span class="float-end text-primary">&nbsp; (*)</span></label>
                                        <div class="input-group">
                                            <div class="input-group-text"><i class="bi bi-lock-fill"></i></div>
 
                                            <% if (request.getParameter("nom") == null) { %>
                                            <input type="password" name="pass" class="form-control" placeholder="Ingrese Password">
                                            <% } else {%>
                                            <input type="password" name="pass" value="<%= request.getParameter("passw")%>" class="form-control" placeholder="Ingrese Password">
                                            <% }%>
                                        
                                        </div>
                                    </div>
                                    
                                    <div class="col-12">
                                        <label>Celular</label>
                                        <div class="input-group">
                                            <div class="input-group-text"><i class="bi bi-lock-fill"></i></div>

                                            <% if (request.getParameter("nom") == null) { %>
                                            <input type="number" name="celu" class="form-control" placeholder="+569 xxxx xxxx">
                                            <% } else {%>
                                            <input type="number" name="celu" value="<%= request.getParameter("celu")%>" class="form-control" placeholder="+569 xxxx xxxx">
                                            <% }%>

                                        </div>
                                    </div>

                                    <div class="col-sm-6">
                                        <a href="#" class="float-end text-primary">(*) Campos Obligatorios</a>
                                    </div>
                                    
                                    <div class="col-12">
                                        <button type="submit" class="btn btn-primary px-4 float-end mt-4">Ingresar</button>
                                    </div>
                                    
                                    <input type="hidden" value=22 name="opcion" >

                                </form>

                            </div>
                        </div>

                        <div class="col-md-5 ps-0 d-none d-md-block">
                            <div class="form-right h-100 bg-primary text-white text-center pt-5">
                                <i class="bi bi-bootstrap" style="font-size: 100px;"></i>
                                <h2 class="fs-1"><img src="images/logo2.jpg" style= "max-width: 100%; height: 100%" class="img-fluid" alt="..."></h2>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
</div>



<br><br><center><footer style="color:cornflowerblue;"> © Desarrollado para IPChile </footer></center>
<script src="bootstrap/js/bootstrap.bundle.min.js"></script>

</body>
</html>