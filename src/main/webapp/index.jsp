<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title></title>
      <link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
      <script src="http://code.jquery.com/jquery-latest.js"></script>
      <script type="text/javascript">
$(document).ready(function(){
	  $('#Cargar').click(function(event){
		  var btn =$('#Cargar').val();
		  $.post('ServeletController',{
			}, function(respose){
				let datos = JSON.parse(respose);
				console.log(respose);
			  var tablac =document.getElementById('tablaconsulta') 
				for(let item of datos){

					tablac.innerHTML += `
					<tr>
					<td>${item.apellido}</td>	
					<td>${item.nombre}</td>	
					<td>${item.idConsulta}</td>
					
					<td><form action="serveletUsuario1"  method="get">
					  
					<div class="btn-group" role="group" aria-label="Basic example">
					<a href="Actualizar.jsp?id=${item.idConsulta}&nombre=${item.nombre}&apellido=${item.apellido}" class="btn btn-danger">ACTUALIZAR</a>
					<a href="serveletUsuario1?btn=Eliminar&Id=${item.idConsulta}" class="btn btn-warning">ELIMINAR</a> 
					</form>
					 </div> </td>
					
		</tr>
		`
				}
	  });
	 
	});
});		
</script>

  </head>
  <body>
    <div class="btn-group" role="group" aria-label="Basic example">
    <button type="button" class="btn btn-success">Iniciar sesion</button>
<button type="button" class="btn btn-success" id="Cargar">Cargar Datos</button>
</div>
<table class="table table-striped table-dark" id="tablaconsulta">
  <thead>
    <tr>
      <th scope="col">Apellido</th>
      <th scope="col">Nombre</th>
       <th scope="col">ID</th>
      <th scope="col">Actualizaciones</th>
    </tr>
  </thead>
  <tbody>

  </tbody>
</table>
  </body>
</html>