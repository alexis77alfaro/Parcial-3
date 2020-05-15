<!DOCTYPE html>
<html lang="en">

<head>
    <title></title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="css/style.css" rel="stylesheet">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
</head>

<body>
    <nav>
        <h1 style="text-align: center;">INICIA SECCION</h1>
    </nav>


    <div class="izquierdo">
        <form class="" action="serveletUsuario1" method="post">
            <h1 style="text-align: center;">Inicia secion</h1>
            <label for="">Usuario</label><br>
            <input type="text" class="form-control" placeholder="Usuario" name="Usuario"><br>
            <label for="">Contraseña</label>
            <input type="password" class="form-control" placeholder="Contraseña" name="contra">
            <input type="submit" value="iniciar" class="btn btn-success">

        </form>

    </div>
    <footer>
        parcial2
    </footer>

</body>
<style>
    nav {
        background-color: aqua;
    }
    
    .izquierdo {
        background-color: #63b7af;
        height: 400px;
        width: 250px;
        float: right;
    }
    
    footer {
        background-color: aqua;
    }
</style>

</html>