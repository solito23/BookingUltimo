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
<p><a href="Index1.html"><img src="imagenes/Logo.png" alt="Booking Routers" width="1360" height="126" title="Forget the rest, call the best"  /></a></p>
</div>
<nav> 
<ul id="main">
    <li><div align="center"><a href="Index1.html" style="text-decoration: none;"><span class="glyphicon glyphicon-home"></span> Home</li></a>
            <li><a align="center"><a href="#" style="text-decoration: none;"><span class="glyphicon glyphicon-plane"></span> Reservations</a>
                            <ul class="submain">
                                <li><a href="reserva1.jsp" style="text-decoration: none;">Request reservation</a></li>
                                <li><a href="CancelarR1.JSP" style="text-decoration: none;">My reservations</a> </li>
                                </ul>
                        </li>
                        <li><div align="center"><a href="menu1.jsp" style="text-decoration: none;"><span class="glyphicon glyphicon-list-alt"></span> Main</a>
                            <ul class="submain">
                                <li><a href="actualizarDatos1.jsp" style="text-decoration: none;">My data</a></li>
                                <li><a href="cambiarContraseña1.jsp" style="text-decoration: none;">Change password</a> </li>
                                </ul>
                        </li>              
        </ul>
    </nav> 


<form name="form1" action="Reserva1" method="post" > 
<table width="744" align="center" id="registro">
    <div class="ba">
        <h1><center>Reservations</center></h1>
    </div>

<tr>
<td><label for="ser" class="labele"><strong>Service<font color="#FF0000">*</strong></label></font></td>
<td><input name="ser" id="ser" style="width:250px; height:35px" placeholder="Select service" autofocus required class="form-control inputtext" list="servis" tabindex="9" size="30">   
      <datalist id="servis">     
      <option value="Airport and Jet Aviation Centers">1</option>
      <option value="Port and Cruise Ship Transportation">2</option>
      <option value="Transfer">3</option>
      <option value="By the Hour">4</option>
      <option value="Events">5</option>
      <option value="Tours">6</option>
      <option value="Atraccions Vacation Ideas">7</option>
      </datalist> 
 </td>
</select>                                        
<td><label for="aer" class="labele"><strong>Airlines<font color="#FF0000">*</strong></label></font></td>
<td><input name="aer" id="aer" style="width:250px; height:35px" placeholder="Select airline" autofocus required class="form-control inputtext" list="aero">   
      <datalist id="aero">
      <option value="Avianca">Avianca</option>
      <option value="LAN">LAN</option>
      <option value="US Airways">US Airways</option>
      <option value="American Airlin">American Airline</option>
      </datalist> 
 </td>
</tr>
<tr>
<td><label for="res" class="labele"><strong>Responsible for<font color="#FF0000">*</strong></label></font></td>
<td><input name="res" type="text" id="res" style="width:250px; height:25px" placeholder="Responsible for" autofocus  required class="form-control inputtext"></td>   
<td><label for="fec" class="labele"><strong>Date reservation<font color="#FF0000">* </strong></label></font></td>
<td><input name="fec" type="date" id="fec" style="width:250px; height:25px" required class="form-control inputtext" tabindex="4" onChange="edad()"></td>    
</tr> 
<td><label for="hora" class="labele">Time of flight</label></td>
<td><input type="time" name="hora" id="hora" style="width:250px; height:25px" class="form-control" required></td>
<td><label for="aerop" class="labele">Airport destination</label></td>
<td><select type="time" name="aerop" id="aerop" style="width:250px; height:30px" placeholder="Airport destination" autofocus  required class="form-control inputtext">
<option>Fort Louderdale</option>
</select>
</td>
</tr>
<tr>

<td><input type="submit" name="registro"  id="registro" class="btn btn-success"  value="Register" onclick="validar(registro)" style="position:relative; left:330px">
</tr>
</table>
</form>
</div>
<div class="idioma3">
    <img src="imagenes/dddd.png"><a href="reserva1.jsp">English</a> ||  <img src="imagenes/original.jpg"><a href="reserva.jsp">Spanish</a>
</div>
</body>
</html>
