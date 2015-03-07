<%-- 
    Document   : modificarReserva
    Created on : 22/01/2015, 12:58:50 PM
    Author     : fabian
--%>

<%@page import="co.sena.edu.booking.DAO.reserDAO"%>
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
<p><a href="Index.html"><img src="imagenes/Logo.png" alt="Booking Routers" width="1360" height="126" title="Forget the rest, call the best"  /></a></p>
</div>
                <nav> 
                    <ul id="main">  
                        <li><a align="center" href="Index.html" style="text-decoration: none;"><span class="glyphicon glyphicon-home"></span> Inicio</a></li>
                        <li><a align="center" href="#" style="text-decoration: none;"><span class="glyphicon glyphicon-plane"></span> Reservas</a>
                            <ul class="submain">
                                <li><a href="reserva.jsp" style="text-decoration: none;">Solicitar Reservas </a></li>
                                <li><a href="#" style="text-decoration: none;">Modificar Reserva</a> </li>
                                <li><a href="#" style="text-decoration: none;">Cancelar Reserva</a></li>
                            </ul>
                        </li>                       
                        <li><div align="center"><a href="menu.jsp" style="text-decoration: none;"><span class="glyphicon glyphicon-list"></span> Menu</a> 
                        </li>
                        <li><div align="center"><a href="Index.html" style="text-decoration: none;"><span class="glyphicon glyphicon-remove-sign"></span> Salir</a> 
                        </li>
                        </ul> 
                    </nav>

     <%
                                    HttpSession misesion = request.getSession(false);

                                    if (misesion.getAttribute("logueado") != null) {
                                        reserDTO pdto = null;
                                        reserDTO persona = null;
                                        reserDAO pdao = new reserDAO();
                                        pdto = (reserDTO) misesion.getAttribute("logueado");
                                        
                                        persona = pdao.ListarUnaReserva(pdto.getIdReserva());
                                       

                                %>
<div class="ba">
    <h1><center>Modificar Reservas</center></h1>
</div>
<form name="form1" action="modificarRerserva" method="post" > 
<table width="744" align="center" id="registro">
<tr>
<td><label for="reser" class="labele"><strong>idReserva<font color="#FF0000">*</strong></label></font></td>
<td><input name="reser" type="text" id="reser" value="<%=pdto.getIdReserva()%>" style="width:250px; height:25px"  readonly="readonly"  placeholder="Responsable" autofocus  required class="form-control inputtext"></td>   
</tr>    
<tr>
<td><label for="ser" class="labele"><strong>Servicio<font color="#FF0000">*</strong></label></font></td>
<td><input name="ser" id="ser" value="<%=pdto.getIdServicio()%>" style="width:250px; height:35px" placeholder="Seleccione servicio" autofocus required class="form-control inputtext" list="servis" tabindex="9" size="30">   
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
<td><label for="aer" class="labele"><strong>Aerolineas<font color="#FF0000">*</strong></label></font></td>
<td><input name="aer" id="aer" value="<%=pdto.getIdTransporteLlegada()%>"  style="width:250px; height:35px" placeholder="Seleccione Aerolinea" autofocus required class="form-control inputtext" list="aero">   
      <datalist id="aero">
      <option value="Avianca">Avianca</option>
      <option value="LAN">LAN</option>
      <option value="US Airways">US Airways</option>
      <option value="American Airlin">American Airline</option>
      </datalist> 
 </td>
</tr>
<tr>
<td><label for="res" class="labele"><strong>Responsable<font color="#FF0000">*</strong></label></font></td>
<td><input name="res" type="text" id="res" value="<%=pdto.getResponsable()%>" style="width:250px; height:25px" placeholder="Responsable" autofocus  required class="form-control inputtext"></td>   
<td><label for="fec" class="labele"><strong>Fecha Reserva<font color="#FF0000">* </strong></label></font></td>
<td><input name="fec" type="date" id="fec" value="<%=pdto.getFechaReserva()%>" style="width:250px; height:25px" required class="form-control inputtext" tabindex="4" onChange="edad()"></td>    
</tr> 
<td><label for="hora" class="labele">Hora de Vuelo</label></td>
<td><input type="time" name="hora" id="hora" value="<%=pdto.getHoraReserva()%>" style="width:250px; height:25px" class="form-control" required></td>
<td><label for="aerop" class="labele">Aeropuesto Destino</label></td>
<td><select type="time" name="aerop" id="aerop" value="<%=pdto.getDireccionDestino()%>" style="width:250px; height:30px" placeholder="Aeropuerto" autofocus  required class="form-control inputtext">
<option>Fort Louderdale</option>
</select>
</td>
</tr>
<tr>
<td><input type="submit" name="registro"  id="registro" class="btn btn-success"  value="Actualizar"  style="position:relative; left:330px">
</tr>
</table>
</fieldset>
 <%
  }
 %>
</form>
</div> 



</div>
<div class="idioma">
    <img src="imagenes/dddd.png"><a href="modificarReserva1.jsp">English</a> ||  <img src="imagenes/original.jpg"><a href="modificarReserva.jsp">Spanish</a>
</div>
                    </body>
</html>