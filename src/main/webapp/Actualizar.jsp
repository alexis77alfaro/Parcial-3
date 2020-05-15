<!DOCTYPE html>
<html lang="en" dir="ltr">

<head>
    <meta charset="utf-8">
    <title>Actualizar</title>
    <link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
    <link rel="stylesheet" href="css/estilo.css">
    <%
String id = request.getParameter("idconsulta");
String nombre = request.getParameter("nombre");
String apellido = request.getParameter("apellido");


if(id ==null){
	
	id ="";
	nombre="";
	apellido="";
}

%>
</head>

<body>
    <div class="container">
        <nav class="navbar navbar-expand-lg navbar-light bg-light" style="text-align: center;">
            <a class="navbar-brand" href="#">
                <h2 style="text-align: center;">Actualiza tus datos</h2>
            </a>
        </nav>
    </div>
    <form action="serveletUsuario1">

        <section>
            <div id="datos" class="text-center">
                <div class="container">
                    <div class="row">
                        <div class="col">

                            <div class="input-group mb-3">
                                <label for="id1" class="col-sm-2 col-form-label">ID</label>
                                <div class="col-sm-10">
                                    <input type="text" name="Id" id="id1" placeholder="id" value="<%=id%>">
                                </div>
                            </div>
                            <div class="input-group mb-3">
                                <label for="nombre1" class="col-sm-2 col-form-label">Nombre</label>
                                <div class="col-sm-10">
                                    <input type="text" c name="nombre" id="nombre1" placeholder="Nombre" value="<%=nombre%>">
                                </div>
                            </div>
                            <div class="input-group mb-3">
                                <label for="edad1" class="col-sm-2 col-form-label">Apellido</label>
                                <div class="col-sm-10">
                                    <input type="text" name="apellido" placeholder="Edad" value="<%=apellido%>">
                                </div>
                            </div>
                        </div>
                    </div>


                    <input type="submit" class="btn btn-info" value="Actualizar" name="btn">
                    <input type="submit" class="btn btn-info" value="Eliminar" name="btn">


                </div>
            </div>
        </section>

    </form>
    <footer style="text-align: center;">
        2020 parcial 2
    </footer>
    <style>
        footer {
            background-color: aquamarine;
        }
    </style>
</body>

</html>