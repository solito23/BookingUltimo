<%-- 
    Document   : modificarReserva
    Created on : 22/01/2015, 12:58:50 PM
    Author     : fabian
--%>

<%@page import="co.sena.edu.booking.DTO.personasDTO"%>
<%@page import="co.sena.edu.booking.DAO.reserDAO"%>
<%@page import="co.sena.edu.booking.DAO.personasDAO"%>
<%@page import="co.sena.edu.booking.DTO.reserDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
       <meta charset="utf-8" />
        <title>Booking Routers</title>
        <link type="text/css" rel="stylesheet" href="css/css.css" />
        <link type="text/css" rel="stylesheet" href="bootstrap-3.2.0-dist/bootstrap-3.2.0-dist/css/bootstrap.css">
        <link rel="shortcut icon" href="imagenes/br.ico" />
        <script src="scripts/bookclient.js" type="text/javascript">
        </script>
    </head>
    <body>
<div class ="contenedor">
<div class="banner"> 
<p><a href="Index1.html"><img src="imagenes/Logo.png" alt="Booking Routers" width="1360" height="126" title="Forget the rest, call the best"  /></a></p>
</div>
                <nav> 
                    <ul id="main">  
                        <li><div align="center" style="text-decoration: none;"><a href="Index1.html"><span class="glyphicon glyphicon-home"></span> Home</a></li>
                        <li><div align="center" style="text-decoration: none;"><a href="#"><span class="glyphicon glyphicon-plane"></span> Reservations</a>
                            <ul class="submain">
                                <li><a href="reserva1.jsp" style="text-decoration: none;">Request reservations </a></li>
                                <li><a href="#" style="text-decoration: none;">Modify reservation</a> </li>
                                <li><a href="#" style="text-decoration: none;">Cancel reservation</a></li>
                            </ul>
                        </li>                                              
                        <li><div align="center"><a href="menu1.jsp" style="text-decoration: none;"><span class="glyphicon glyphicon-list"></span> Main</a> 
                        </li>
                        <li><div align="center"><a href="Index1.html" style="text-decoration: none;"><span class="glyphicon glyphicon-remove-sign"></span> Exit</a> 
                        </li>
                        </ul> 
                    </nav>

     <%
                                    HttpSession misesion = request.getSession(false);

                                    if (misesion.getAttribute("logueado") != null) {
                                        personasDTO pdto = null;
                                        personasDTO persona = null;
                                        personasDAO pdao = new personasDAO();
                                        pdto = (personasDTO) misesion.getAttribute("logueado");
                                        
                                        persona = pdao.ListarUnaPersona(pdto.getIdPersona());
                                        reserDTO re = new reserDTO();
                                        reserDAO r = new reserDAO();  
                                        
                                        re=r.ListarUnaReserva(78745);

                                %>
                                
                                
<form name="form1" action="Reserva1" method="post" > 
<table width="744" align="center" id="registro">
<div class="ba">
    <h1><center>Modify Reservations</center></h1>
</div>
<tr>
<td><label for="reser" class="labele"><strong>Number Reservation<font color="#FF0000">*</strong></label></font></td>
<td><input name="reser" type="text" value="<%=re.getIdReserva()%>"  style="width:250px; height:25px " autofocus id="reser" class="form-control    inputtext" tabindex="1" onChange="requisitos(nombre)" minlenght=3>
</td>
<td><label for="State" class="labele"><strong>State Reservation<font color="#FF0000">*</strong></label></font></td>
<td><input name="State" type="text" value="<%=re.getIdEstadoReserva()%>" style="width:250px; height:30px" autofocus id="State" placeholder="Select" required class="form-control inputtext" list="es" tabindex="2" onChange="requisitos(ape)">
<datalist id="es">
<option value="0">Not validated</option>
</datalist>                                   
</td>
</tr>
<tr>
<td><label for="ser" class="labele"><strong>Service<font color="#FF0000">*</strong></label></font></td>
<td><input name="ser" id="ser" value="<%=re.getIdServicio()%>" style="width:250px; height:35px" placeholder="Select service" autofocus required class="form-control inputtext" list="servis" tabindex="9" size="30">   
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
<td><input name="aer" id="aer" value="<%=re.getIdTransporteLlegada()%>"  style="width:250px; height:35px" placeholder="Select airline" autofocus required class="form-control inputtext" list="aero">   
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
<td><input name="res" type="text" id="res" value="<%=re.getResponsable()%>" style="width:250px; height:25px" placeholder="Responsible for" autofocus  required class="form-control inputtext"></td>   
<td><label for="fec" class="labele"><strong>Date Birth<font color="#FF0000">* </strong></label></font></td>
<td><input name="fec" type="date" id="fec" value="<%=re.getFechaReserva()%>" style="width:250px; height:25px" required class="form-control inputtext" tabindex="4" onChange="edad()"></td>    
</tr> 
<td><label for="hora" class="labele">Time of flight</label></td>
<td><input type="time" name="hora" id="hora" value="<%=re.getHoraReserva()%>" style="width:250px; height:25px" class="form-control" required></td>
<td><label for="aerop" class="labele">Airport destination</label></td>
<td><select type="time" name="aerop" id="aerop" value="<%=re.getDireccionDestino()%>" style="width:250px; height:30px" placeholder="Airport" autofocus  required class="form-control inputtext">
<option>Fort Louderdale</option>
</select>
</td>
</tr>
<tr>

<td><input type="submit" name="Register"  id="Register" class="btn btn-success"  value="Register" onclick="validar(registro)" style="position:relative; left:330px">


</tr>
</table>
</fieldset>
 <%
  }
 %>
</form>
</div> 



</div>
<div style="width:100%; background: #0C4391; height: 30px; margin-top:10px; padding-top:5px; border-radius:3px;color:#e2c60f; margin-bottom:1%; float:left; text-align: center;height:70px;color:white;">
                                         <span>Booking Routers &copy; 2015</span><br>
                                         Integrantes :<span class="glyphicon glyphicon-user" style="padding-top: 4px;"></span> Yilber Hernandez 
                                         <span classs="glyphicon glyphicon-user" style="padding-top: 4px;"></span> Cristian Moreno 
                                         <span class="glyphicon glyphicon-user" style="padding-top: 4px;"></span> Sergio Stiven Urbiba
                                         <span class="glyphicon glyphicon-user" style="padding-top: 4px;"></span> Andres Feipe Guerrero<br>
                                         <img src="imagenes/dddd.png"><a href="modificarReserva1.jsp" style=" color: #ffffff; text-decoration: none;"  >English</a> --  <img src="cambiarContraseña.jsp"><a href="modificarReserva.jsp" style=" color: #ffffff; text-decoration: none;" >Spanish</a>

                                     </div>

</body>
</html>