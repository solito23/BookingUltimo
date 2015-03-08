 	 	<!doctype html>
<html>
<head>
<link type="text/css" rel="stylesheet" href="bootstrap-3.2.0-dist/bootstrap-3.2.0-dist/css/bootstrap.css">
<link type="text/css" rel="stylesheet" href="css/css.css">
<script src="scripts/registro.js" type="text/javascript"></script>
<meta charset="utf-8">
<link rel="shortcut icon" href="imagenes/br.ico" />
<title>..::Booking Routers::..</title>
</head>
<body>
<div class ="contenedor">
<div class="banner"> 
<p><a href="Index.html"><img src="imagenes/Logo.png" alt="Booking Routers" width="1360" height="126" title="Forget the rest, call the best"  /></a></p>
</div>
<nav> 
<ul id="main">
    <li><div align="center"><a href="Index.html" style="text-decoration: none;"><span class="glyphicon glyphicon-home"></span> Inicio</li></a>
            <li><div align="center"><a href="#" style="text-decoration: none;"><span class="glyphicon glyphicon-plane"></span> Reservas</a>
                            <ul class="submain">
                                <li><a href="reserva.jsp" style="text-decoration: none;">Solicitar Reserva</a></li>
                                <li><a href="CancelarR.jsp" style="text-decoration: none;">Mis Reservas</a> </li>
                                </ul>
                        </li>
                        <li><div align="center"><a href="menu.jsp" style="text-decoration: none;"><span class="glyphicon glyphicon-list-alt"></span> Menu</a>
                            <ul class="submain">
                                <li><a href="actualizarDatos1.jsp" style="text-decoration: none;">Mis Datos</a></li>
                                <li><a href="cambiarContraseña.jsp" style="text-decoration: none;">Cambiar Contraseña</a> </li>
                                </ul>
                        
        </ul>
    </nav> 



<form name="form1" action="Reserva" method="post" > 
<table width="744" align="center" id="registro">
<div class="ba">
    <h1><center>Reservas</center></h1>
</div>

<tr>
<td><label for="ser" class="labele"><strong>Servicio<font color="#FF0000">*</strong></label></font></td>
<td>   
      <select  id="servis" name="ser" id="ser" autofocus required class="form-control inputtext" list="servis" tabindex="9" style="width:250px; height:35px">     
      <option value="1">Airport and Jet Aviation Centers</option>
      <option value="2">Port and Cruise Ship Transportation</option>
      <option value="3">Transfer</option>
      <option value="4">By the Hour</option>
      <option value="5">Events</option>
      <option value="6">Tours</option>
      <option value="7">Atraccions Vacation Ideas</option>
      </select> 
 </td>
</select>                                        
<td><label for="aer" class="labele"><strong>Aerolineas<font color="#FF0000">*</strong></label></font></td>
<td>   
      <select name="aer" id="aer" style="width:250px; height:35px" id="aero" autofocus required class="form-control inputtext" list="aero">
      <option value="1">Avianca</option>
      <option value="2">LAN</option>
      <option value="3">US Airways</option>
      <option value="4">American Airline</option>
      </select> 
 </td>
</tr>

<tr>
    
<td><label for="res" class="labele"><strong>Responsable<font color="#FF0000">*</strong></label></font></td>
<td><input name="res" type="text" id="res" style="width:250px; height:25px" placeholder="Responsable" autofocus  required class="form-control inputtext"></td>   
<td><label for="fec" class="labele"><strong>Fecha Reserva<font color="#FF0000">* </strong></label></font></td>
<td><input name="fec" type="date" id="fec" style="width:250px; height:25px" required class="form-control inputtext" tabindex="4" onChange="edad()"></td>    
</tr> 
<tr>
<td><label for="hora" class="labele">Hora de Vuelo</label></td>
<td><input type="time" name="hora" id="hora" style="width:250px; height:25px" class="form-control" required></td>
<td><label for="aerop" class="labele">Aeropuesto Destino</label></td>
<td><select type="time" name="aerop" id="aerop" style="width:250px; height:30px"  autofocus  required class="form-control inputtext">
<option>Fort Louderdale</option>
    </select>

</td>
</tr>
<tr>

<td><input type="submit" name="registro"  id="registro" class="btn btn-success"  value="Generar Reserva" onclick="validar(registro)" style="position:relative; left:330px">

</table>

</form>
</div> 



</div>
<div class="idioma3">
    <img src="imagenes/dddd.png"><a href="reserva1.jsp">English</a> ||  <img src="imagenes/original.jpg"><a href="reserva.jsp">Spanish</a>
</div>
</main>

</body>
</html>
