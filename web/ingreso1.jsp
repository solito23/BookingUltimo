<!doctype html>
<html>
<head>
<meta charset="utf-8" />
<title>Booking Routers</title>
<link type="text/css" rel="stylesheet" href="bootstrap-3.2.0-dist/bootstrap-3.2.0-dist/css/bootstrap.css">
<link type="text/css" rel="stylesheet" href="css/css.css" />
<link rel="shortcut icon" href="imagenes/br.ico" />
</head>
<body>
 <div class ="contenedor">
 <div class="banner">
 <p><a href="Index1.html"><img src="imagenes/Logo.png" alt="Bookin Routers" width="1360" height="126" title="Forget the rest, call the best" /></a></p>
 </div>
<ul id="main">
<li> <div align="center"> <a href="Index1.html"><span class="glyphicon glyphicon-home"></span> Home</a>
</li>
<li>
<div align="center"> <a href="recuperarContrase�a.html">�Forgot password!</a>
</li>
</ul>
<center>
<form name="form1" action="Controlador1" method="post" > 
<table id="registro">
<div class ="ba">
<h1>Income Registered Users</h1> 
</div>
<label for="usu" class="labele"><strong>Document<font color="#FF0000">*</strong></label></font>
<input name="idPersona" type="text" style="width:250px; height:25px " autofocus id="usu" placeholder="Document" required class="form-control inputtext"  onChange="requisitos(nombre)" minlenght=3>

<br>

<label for="con" class="labele"><strong>Password<font color="#FF0000">*</strong></label></font>
<input name="contrase�a" type="password" style="width:250px; height:25px " required id="con" placeholder="*******" required class="form-control inputtext"  minlenght=3>
<br>
<input name="submit10" class="btn btn-success"  type="submit" id="submit10" onClick= "rol()" value="Enter">
</table>
</center>
</form>
<%
 if(request.getParameter("invalida") != null  ) {
%>
<div class="valido">
    <b> your data are not valid</b>
</div>
<%
 }
%>
<div class="idioma"> 
    <img src="imagenes/dddd.png"><a href="verificarRegistro1.jsp">English</a> ||  <img src="imagenes/original.jpg"><a href="verificarRegistro.jsp">Spanish</a>
</div>
</body>
</html>