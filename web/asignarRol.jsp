<%-- 
    Document   : asignarRol
    Created on : 4/02/2015, 06:32:15 PM
    Author     : fabian
--%>

<%@page import="co.sena.edu.booking.DTO.reserDTO"%>
<%@page import="co.sena.edu.booking.DAO.personasDAO"%>
<%@page import="co.sena.edu.booking.DTO.personasDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
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
                
                    <ul id="main">  
                        <li><div align="center"><a href="Index1.html"><span class="glyphicon glyphicon-home"></span> Home</a></div></li>
                        <li><div align="center"><a href="#"><span class="glyphicon glyphicon-plane"></span> Reservations</a></div>
                            <ul class="submain">
                                <li><a href="reserva1.jsp">Request reservations </a></li>
                                <li><a href="#">Modify reservation</a> </li>
                                <li><a href="#">Cancel reservation</a></li>
                            </ul>
                        </li>
                        <li><div align="center"><a href="#"><span class="glyphicon glyphicon-folder-open"></span> Reports</a>
                            </div>
                                <ul class="submain">
                                <li><a align="center"  href="#">Reservations</a> </li>
                            </ul>
                        </li>                        
                        <li><div align="center"><a href="menu1.jsp"><span class="glyphicon glyphicon-list"></span> Main</a> 
                            </div>
                        </li>
                        
                  
                    
     <%
                                    HttpSession misesion = request.getSession(false);

                                    if (misesion.getAttribute("logueado") != null) {
                                        personasDTO pdto = null;
                                        personasDTO persona = null;
                                        personasDAO pdao = new personasDAO();
                                        pdto = (personasDTO) misesion.getAttribute("logueado");
                                        
                                        persona = pdao.ListarUnaPersona(pdto.getIdPersona());
                                      

                                %>
                              
                                 <form id="registro" action="modificarRol" method="post">
                                <table align="center" id="registro" >
                                 <div class="ba">
                                       <h1>Asignar Rol</h1>
                                        </div>
                                         <tr>
                                            <td><label for="nombre" class="labele"><strong>Nombres<font color="#FF0000">*</font></strong></label></td>
                                            <td><input name="nombres" type="text" id="nombre" value="<%=persona.getNombres()%>" style="width:250px; height:25px " readonly="readonly" autofocus required class="form-control inputtext"></td>
                                       
                                            <td><label for="ape" class="labele"><strong>Apellidos<font color="#FF0000">*</font></strong></label></td>
                                            <td><input name="apellidos" type="text" id="ape" value="<%=persona.getApellidos()%>" style="width:250px; height:25px" readonly="readonly" autofocus required class="form-control inputtext"></td>
                                         </tr> 
                                         <tr>
                                             <td><label for="doc" class="labele"><strong>Documento <font color="#FF0000">*</font></strong></label></td>
                                             <td><input name="doc" type="number"  id="doc" value="<%=persona.getIdPersona()%>" style="width:250px; height:30px" readonly="readonly" autofocus required class="form-control inputtext"></td>    
                                       
                                             <td><label for="date" class="labele"><strong>Fecha Nacimiento<font color="#FF0000">* </font></strong></label></td>
                                             <td><input name="date" type="text" id="date" value="<%=persona.getFechaNto()%>" style="width:250px; height:25px" readonly="readonly"  autofocus required class="form-control inputtext"></td>   
                                         </tr>
                                         <tr>
                                         <td><label for="tel" class="labele"><strong> Telefono <font color="#FF0000">*</font></strong></label></td>
                                         <td><input name="tel" type="text" id="tel" value="<%=persona.getTelefono()%>" style="width:250px; height:25px" readonly="readonly"  autofocus required class="form-control inputtext"></td>   
                                        
                                         <td><label for="cor" class="labele"><strong>Correo<font color="#ff0000">*</font></strong></label></td>
                                         <td><input name="cor" type="email" id="cor" value="<%=persona.getCorreoElectronico()%>" style="width:250px; height:25px" readonly="readonly"  autofocus required class="form-control inputtext"></td>
                                         </tr>
                                         <tr>
                                         <td><label for="paisnac" class="labele"><strong>País <font color="#ff0000">*</font></strong></label></td>
                                         <td><input name="paisnac" id="paisnac" value="<%=persona.getIdNacionalidad()%>" style="width:250px; height:30px"list="paises" readonly="readonly"  autofocus required class="form-control inputtext"></td>
                                         <datalist id="paises">
                                                        <option value="Argentina">Argentina</option>
                                                        <option value="Brasil">Brasil</option>
                                                        <option value="Chile">Chile</option>
                                                        <option value="Colombia">Colombia</option>
                                                        <option value="Ecuador">Ecuador</option>
                                                        <option value="Perú">Perú</option>
                                                        </datalist>                                               
                                                   
                                         <td><label for="ciunac" class="labele"><strong>Ciudad<font color="#FF0000">*</font></strong></label></td>
                                         <td><input name="ciunac" id="ciunac"value="<%=persona.getPais()%>" style="width:250px; height:30px"  list="ciudades" readonly="readonly"  autofocus required class="form-control inputtext"></td>
                                        <datalist id="ciudades">
                                                    <option label="BOG">Bogota</option>
                                                    <option label="CLO">Cali</option>
                                                    <option label="MED">Medellin</option>
                                                    <option label="BAR">Barranquilla</option>
                                                    </datalist>                                     
                                     </tr>
                                     <tr>
                                         <td><label for="es" class="labele"><strong>Estado</strong></label></td>
                                         <td><input name="es" id="es"style="width:250px; height:30px" list="estados" autofocus required class="form-control inputtext"></td>                                    
                                     <datalist id="estados">
                                     <option value="Sin validar">1</option>                             
                                     <option value="Activo">2</option>   
                                     <option value="Cancelada">3</option> 
                                     </datalist>
                                     <td><label for="obs" class="labele"><strong>Observaciones</strong></label></td>
                                     <td><textarea cols=50 rows=3 name="info" autofocus required class="form-control inputtext"></textarea></td>
                                      </tr>	
                                     <tr>                                                                                          
                                     <td><input name="submit10" class="btn btn-success" type="submit" id="submit10" value="Guardar Cambios" onClick="validar(registro)" style="position:relative; left:380px"></td>
                                     </tr>                                                 
                                     
                                        
                                     </table>
                                  
                                    <%
                                        }
                                    %>
                                </form>
                            </div>                            
                       
                           <div class="idioma4">
    <img src="imagenes/dddd.png"><a href="verificarRegistro1.jsp">English</a> ||  <img src="imagenes/original.jpg"><a href="verificarRegistro.jsp">Spanish</a>
                          </div>
                                
    </body>
</html>
