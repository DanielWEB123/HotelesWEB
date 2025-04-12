<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>

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
                <h1 class="mb-3">Iniciar Session</h1>
                <div class="bg-white shadow rounded">
                    <div class="row">
                        <div class="col-md-7 pe-0">
                            <div class="form-left h-100 py-5 px-5">
                                
                                
                                <form action="controller" method="post" class="row g-4">
                                    <div class="col-12">

                                        <label>Correo</label>
                                        
                                        <c:if test="${mensx == 1}">
                                              <label style="color:red"> <c:out value="${mens}" /> </label>                                               
                                        </c:if>

                                        <div class="input-group">
                                            <div class="input-group-text"><i class="bi bi-person-fill"></i></div>
                                            <input type="email" name="mail" class="form-control" placeholder="Ingrese CORREO" required>
                                        </div>
                                    </div>

                                    <div class="col-12">
                                        <label>Password</label>
                                        <div class="input-group">
                                            <div class="input-group-text"><i class="bi bi-lock-fill"></i></div>
                                            <input type="password" name="passw" class="form-control" placeholder="Ingrese PASSWORD" required>
                                        </div>
                                    </div>

                                    <div class="col-sm-6">
                                        <div class="form-check">
                                            <label class="form-check-label" for="inlineFormCheck"></label>
                                        </div>
                                    </div>

                                    <div class="col-sm-6">
                                        <a href="#" class="float-end text-primary">Olvidaste Password?</a>
                                    </div>

                                    <div class="col-12">
                                        <button type="submit" class="btn btn-primary px-4 float-end mt-4">Iniciar</button>
                                    </div>

                                    <input type="hidden" value=11 name="opcion" >
                                    
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