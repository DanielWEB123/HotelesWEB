<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <title>TU HOTEL</title>
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

<br><br>

<table class="table">

  <tbody>
    <tr>
      <th scope="row">
         <h2 class="card-title">Hotel Sheraton</h2>
         <img src="images/cinco.jpg"><br>
          <img src="images/ayca.jpg" width="230" height="132" />
     </th>      

      <td>
         AYCA LA FLORA es un hotel boutique con un amplio e idílico jardín y vistas a los cerros y al puerto de Valparaíso. Nos encontrarás en una casa recién restaurada de principios del siglo XX y en el moderno anexo de estilo industrial, situados en el centro del casco antiguo, declarado Patrimonio de la Humanidad por la UNESCO.
         Con el estilo del moderno anexo de 2020, se rinde homenaje a la historia industrial y vanguardista de la ciudad cosmopólita. La arquitectura es un homenaje a los famosos ascensores de Valparaíso. La ubicación expuesta y los coloridos jardines hacen de nuestro hotel una isla verde en medio de la bulliciosa ciudad portuaria de Valparaíso.
         Ofrecemos 11 habitaciones, decoradas individualmente con mucho cariño, respetando el ambiente especial de este lugar. Cada una de nuestras habitaciones tiene un baño privado. Por supuesto, un delicioso desayuno está incluido en su estancia.
      </td>
      
      <td><img src="images/ubica_ayca.jpg" width="230" height="132" /></td>
    </tr>
    
</body>
    
</table>

<img src="images/info_ayca.jpg" width="100%"  />

<br><br><center><footer style="color:cornflowerblue;"> © Desarrollado para IPChile </footer></center>
<script src="bootstrap/js/bootstrap.bundle.min.js"></script>

</body>
</html>
