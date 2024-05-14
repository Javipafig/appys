<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link href="estilos/estilototal.css" rel="stylesheet">
	<title>Ingreso a la plataforma - APPYS</title>
	  <link rel="shortcut icon" href="images/favicon.png" type="image/x-icon">
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,700|Poppins:400,600,700&display=swap" rel="stylesheet" />

	<style type="text/css">
	
	*{
	    margin: 0;
	    padding: 0;
	   
	}
	body{
	      font-family: "Poppins", sans-serif;
	}
		footer{
		    position:fixed;
		    bottom:-30px;
		    clear:both;
		    width:100%;
		    height:100px;
		    font-family: "Poppins", sans-serif;
		
		}
		.campos{
			width: 200px;
			height: 40px;
		}
		
		/*header*/
		    ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
  background-color: #333;
 
}

li {
  float: left;
}

li a {
  display: block;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}

li a:hover:not(.active) {
  background-color: #111;
}

.active {
  background-color: #04AA6D;
}

.button{
     font-family: "Poppins", sans-serif;
}

.message:hover{
    text-decoration: underline;
}


	</style>
</head>
<body>
	<br>
	<form method="POST" action="validar_usuario.php" class="login-form">
		<div class="login-page">
		   
	  		<div class="form">
	  		     <a href="index.php"><center><img src="hoja.png" width="100"></center></a>
	  		     <br>
				<table>
					<tr>
						<td><i class="fa fa-user-o"style="font-size:20px"></i></td>
						<td><input type="text" placeholder="username" name="Usuario" required class="campos" /></td>
					</tr>
					<tr>
						<td><i class="fa fa-lock" style="font-size:20px"></i></td>
						<td><input type="password" placeholder="password" name="Contrasena" id="Contrasena" required class="campos"/></td>
					</tr>
				</table>
				<br/><br/>
      			<input type="submit" value="Ingresar" id="Ingresar" class="button">
      			<p class="message"><a href="RecuperarContrasena.php">¿Olvidó su nombre de usuario o contraseña?</a></p>
	  		</div>
		</div>
	</form>
</body>
<?php include('plantillas/pie.php');?>
</html>
