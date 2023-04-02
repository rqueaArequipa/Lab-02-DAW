<%-- 
    Document   : OperacionesDiversas
    Created on : Apr 1, 2023, 2:09:46 PM
    Author     : 51946
--%>

<%@page import="com.miemrpesa.funciones.OperacionesDiversas"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Index</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-aFq/bzH65dt+w6FI2ooMVUpc+21e0SRygnTpmBvdBgSdnuTN7QbdgL+OapgHtvPp" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-qKXV1j0HvMUeCBQ+QVp7JcfGl760yU08IQ+GpUo5hlbpg51QRiuqHAJz8+BrxE/N"
        crossorigin="anonymous"></script>


    </head>

    <body class="bg-black bg-gradient">

        <header>
            <div class="px-3 py-2 text-bg-dark">
                <div class="container">
                    <div class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start">
                        <a href="/"
                           class="d-flex align-items-center my-2 my-lg-0 me-lg-auto text-white text-decoration-none">
                            <svg class="bi me-2" width="40" height="32" role="img" aria-label="Bootstrap">
                            <img src="https://rqueaarequipa.github.io/img/logo.png" alt="" width="20%">
                            </svg>
                        </a>

                        <ul class="nav col-12 col-lg-auto my-2 justify-content-center my-md-0 text-small">
                            <li>
                                <a href="index.html" class="nav-link text-white">
                                    Home
                                </a>
                            </li>
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle text-secondary" href="#" role="button" data-bs-toggle="dropdown"
                                   aria-expanded="false">
                                    Formularios
                                </a>
                                <ul class="dropdown-menu">
                                    <li><a class="dropdown-item" href="envioOBasicas.html">Operaciones Basicas</a></li>
                                    <li><a class="dropdown-item" href="envioODiversas.html">Operaciones Diversas</a></li> 
                                </ul>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </header>
        <div class="bg-dark bg-gradient">
            <div class="container">
                <h2 style="font-size: 100px; text-align: center; padding: 50px 0; color: rgb(204, 204, 204);">Operaciones Diversas</h2>
                <%
                    OperacionesDiversas object = new OperacionesDiversas();
                    int num = Integer.parseInt(request.getParameter("num"));
                    String operador = request.getParameter("operador");
                    String respuesta = "";
                    switch (operador) {
                        case "r2":
                            respuesta = "La raiz cuadrada de " + num + " es " + object.raizCuadrada(num);break;
                        case "r3":
                            respuesta = "La raiz cubica de " + num + " es " + object.raizCubica(num);break;
                        case "p2":
                            respuesta = num + " elevado a 2 es " + object.potencia2(num);break;
                        case "p3":
                            respuesta = num + " elevado a 3 es " + object.potencia3(num);break;
                        case "va":
                            respuesta = "Valor absolta de " + num + " es " + object.valorAbs(num);break;
                        default:
                            respuesta = "no hay datos";break;
                    }
                %>
                <div class="row mb-3">
                    <button class="modal-title text-bg-secondary p-3" style="font-size: 60px; text-align: center; padding: 150px 0;">
                        <%                            
                            out.print(respuesta);
                        %>
                    </button>

                    <div class="alert" role="alert">
                        <a class="btn btn-primary" href="envioODiversas.html" role="button">Volver a enviar datos</a>
                    </div>
                </div>
                <div class="row mb-3">
                    <img src="https://th.bing.com/th/id/OIP.O0Eb3ERPfAfR5EE0QudeIAHaF7?pid=ImgDet&rs=1" class="card-img-top" alt="..." style="height: 30rem;">
                </div>
                <br>
                <br>
            </div>
        </div>
        <div class="container">
            <footer class="py-3 my-4">
                <ul class="nav justify-content-center border-bottom pb-3 mb-3">
                    <li class="nav-item"><a href="index.html" class="nav-link px-2 text-white">Home</a></li>
                    <li class="nav-item"><a href="envioODiversas.html" class="nav-link px-2 text-white">Formulario</a></li>
                </ul>
                <p class="text-center text-muted">&copy; 2023 QJ - Developer</p>
            </footer>
        </div>

    </body>

</html>
