<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <title>TODO supply a title</title>
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

            <form class="row g-3" action="controller" method="get">
                <input type="hidden" name="opcion" value=2 />
                <button type="input" class="btn btn-primary btn-lg">Iniciar Session</button>
            </form>
            <br>
            <center>    
                <a class="nav-link" style="color: blue" href="index.jsp">Volver a INICIO</a>
            </center>

        </tr>
    </thead>
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



<p><%
    out.print(request.getAttribute("Ciudad"));
    %></p>
<p><%
    out.print(request.getAttribute("f_ini"));
    %></p>
<p><%
    out.print(request.getAttribute("f_ter"));
    %></p>
<p><%
    out.print(request.getAttribute("num_hab"));
    %></p>
<p><%
    out.print(request.getAttribute("num_ban"));
    %></p>






<br><br><center><footer style="color:cornflowerblue;"> © Desarrollado para IPChile </footer></center>
<script src="bootstrap/js/bootstrap.bundle.min.js"></script>

</body>
</html>
