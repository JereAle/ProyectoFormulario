<html>
<head>
	<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
	
	<title>Formulario</title>
</head>
<body>
<main>
	<div class="container">
		<div class="row justify-content-center">
			<div class="col-md-6">
				<form action="FormularioServlet" method="post">
					<h4 class="mt-4 mb-2 text-center">Formulario</h4>
					<div class="row">
   						<div class="col">
   							<label for="nombre">Nombre</label>
      						<input type="text" class="form-control" name="nombre" id="nombre" required>
    					</div>
    					<div class="col">
    						<label for="apellido">Apellido</label>
      						<input type="text" class="form-control" name="apellido" id="apellido" required>
    					</div>
  					</div>				
					<div class="form-group">
						<label for="email">Email</label>
						<input type="email" class="form-control" name="email" id="email" required> 
					</div>
					<div class="form-group">
						<label for="edad">Edad</label>
						<input type="number" class="form-control" name="edad" id="edad" required>
					</div>
					<input type="submit" value="Enviar" class="btn btn-success btn-block" id="enviar"/>
					
					<h4 class="mt-4 mb-2 text-center">Comprobaciones</h4>
					<div class="form-group">
						<label for=name>Nombre y Apellido</label>
						<input type=text class="form-control" id="name" name="name" disabled value="<%
						if(request.getSession().getAttribute("name")==null){
							out.print("");
						}else{
							out.print(request.getSession().getAttribute("name"));
						}
						%>">
					</div>
					<div class="form-group">
						<label for=name>Edad</label>
						<input type=text class="form-control" id="age" name="age" disabled value="<%
						if(request.getSession().getAttribute("age")==null){
							out.print("");
						}else{
							out.print(request.getSession().getAttribute("age"));
						}
						%>">
						<input type="text" class="form-control" id="message" name="message" disabled value="<%
						if(request.getSession().getAttribute("mesagge")==null){
							out.print("");
						}else{
							out.print(request.getSession().getAttribute("mesagge"));
						}
						%>">
					</div>
					<div class="form-group">
						<label for=name>Email</label>
						<input type=text class="form-control" id="mail" name="mail" disabled value="<%
						if(request.getSession().getAttribute("mail")==null){
							out.print("");
						}else{
							out.print(request.getSession().getAttribute("mail"));
						}
						%>">
					</div>
				</form>
			</div>
		</div>
	</div>
</main>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
</body>
</html>