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

                    <th scope="col" style="text-align: right">
            <form class="row g-3" action="sesion.jsp" method="post">
                <input type="hidden" name="opcion" value=11 />
                <button type="input" class="btn btn-primary">Iniciar Session</button>
            </form>
            <br>
            <center>
                <a class="nav-link" style="color: blue" href="new_usuario.jsp">Crear Cuenta</a>
            </center>


        </th>

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
                            <input name="f_ini" type="date" class="form-control"/>
                            <label for="floatingSelectGrid">Fecha Inicio</label>
                        </div>
                    </div>


                    <div class="col-md">
                        <div class="form-floating">
                            <input name="f_ter" type="date" class="form-control"/>
                            <label for="floatingSelectGrid">Fecha Termino</label>
                        </div>
                    </div>

                    <div class="col-md">
                        <div class="form-floating">
                            <select name="num_hab" class="form-select" id="floatingSelectGrid" aria-label="Floating label select example">
                                <option value="1" selected>1</option>
                                <option value="2">2</option>
                                <option value="3">3</option>
                            </select>
                            <label for="floatingSelectGrid">Habitaciones</label>
                        </div>
                    </div>

                    <div class="col-md">
                        <div class="form-floating">
                            <select name="num_ban"  class="form-select" id="floatingSelectGrid" aria-label="Floating label select example">
                                <option value="1" slected>1</option>
                                <option value="2">2</option>
                                <option value="3">3</option>
                            </select>
                            <label for="floatingSelectGrid">Baños</label>
                        </div>
                    </div>

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

<div class="row row-cols-1 row-cols-md-3 g-4">
    <div class="card">
        <img class="card-img-top" src="images/sheraton.jpg" alt="Card image cap">
        <div class="card-body">
            <h5 class="card-title">Hotel Sheraton</h5>
            <p class="card-text">Descubre el paraíso junto al mar en la costa central chilena desde el Sheraton Miramar Hotel & Convention Center.</p>
        </div>
        <div class="nav">
            <a class="nav-link" href="programador.jsp">Ver en Detalle...</a>
        </div>
    </div>

    <div class="card">
        <img class="card-img-top" src="images/ayca.jpg" alt="Card image cap">
        <div class="card-body">
            <h5 class="card-title">Hotel Ayca</h5>
            <p class="card-text">AYCA LA FLORA es un hotel boutique con un amplio e idílico jardín y vistas a los cerros y al puerto de Valparaíso.</p>
        </div>
        <div class="nav">
            <a class="nav-link" href="redes.jsp" target="descripcion">Ver en Detalle...</a>
        </div>
    </div>

    <div class="card">
        <img class="card-img-top" src="images/eurotel.jpg" alt="Card image cap">
        <div class="card-body">
            <h5 class="card-title">Hotel Eurotel</h5>
            <p class="card-text">El Eurotel está en Las Condes, el centro financiero y zona gastronómica más importante de Santiago de Chile.</p>
        </div>
        <div class="nav">
            <a class="nav-link" href="web.jsp" target="descripcion">Ver en Detalle...</a>
        </div>
    </div>

    <div class="card">
        <img class="card-img-top" src="images/kenedy.jpg" alt="Card image cap">
        <div class="card-body">
            <h5 class="card-title">Hotel Kennedy</h5>
            <p class="card-text">El Hotel Kennedy está ubicado en Santiago, en un barrio residencial en el hermoso sector oriente de la capital.</p>
        </div>
        <div class="nav">
            <a class="nav-link" href="soporte.jsp" target="descripcion">Ver en Detalle...</a>
        </div>
    </div>

    <div class="card">
        <img class="card-img-top" src="images/novotel.jpg" alt="Card image cap">
        <div class="card-body">
            <h5 class="card-title">Hotel Novotel</h5>
            <p class="card-text">Novotel se encuentra ubicado a unos minutos de la plaza de Viña del Mar, que es considerada unas de las ciudades más turísticas del pais.</p>
        </div>
        <div class="nav">
            <a class="nav-link" href="soporte.jsp" target="descripcion">Ver en Detalle...</a>
        </div>
    </div>

</div>


<br><br><center><footer style="color:cornflowerblue;"> © Desarrollado para IPChile </footer></center>
<script src="bootstrap/js/bootstrap.bundle.min.js"></script>


</body>
</html>
