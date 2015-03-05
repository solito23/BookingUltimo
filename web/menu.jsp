<%@page import="co.sena.edu.booking.DAO.personasDAO"%>
<%@page import="co.sena.edu.booking.DTO.personasDTO"%>
<!doctype html>
<html>
<head>
<link type="text/css" rel="stylesheet" href="bootstrap-3.2.0-dist/bootstrap-3.2.0-dist/css/bootstrap.css">
<link type="text/css" rel="stylesheet" href="css/css.css">
	<script  src="jquery/jquery.js"></script>
	<script src="jquery/jquery.validate.js"></script>
	<script src="jquery/additional-methods.js"></script>
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
    <li><a href="Index.html"><span class="glyphicon glyphicon-home"></span> Inicio</a></li>
            <li><a href="#"><span class="glyphicon glyphicon-plane"></span> Reservas</a>
                            <ul class="submain">
                                <li><a href="reserva.jsp">Solicitar Reserva</a></li>
                                <li><a href="CancelarR.jsp">Cancelar Reservas</a> </li>
                                <li><a href="ModificarReservas.jsp">Modificar Reserva</a> </li>
                                </ul>
                        </li>
                        <li><a href="#"><span class="glyphicon glyphicon-list-alt"></span> Mi Cuenta</a>
                            <ul class="submain">
                                <li><a href="actualizarDatos1.jsp">Mis Datos</a></li>
                                <li><a href="cambiarContraseña.jsp">Cambiar Contraseña</a> </li>
                                </ul>
                     </li>  
                     <center>
                     <table>
                     <tr>
                     <td colspan="2">
            <% if(request.getParameter("msg") != null) {%>
            <% if(!request.getParameter("msg").equals("")) { %> 
           <div class="alert alert-success" role="alert">
            <%= request.getParameter("msg") %>
            </div>
            <%}%>
            <%}%> 
            </tr>
                     </table>
            </center>
           
                       
         
</ul>
</ul> 
            </nav> 
            
 </div>                        
<br>

<%
                                    HttpSession misesion = request.getSession(false);

                                    if (misesion.getAttribute("logueado") != null) {
                                        personasDTO pdto = null;
                                        personasDTO persona = null;
                                        personasDAO pdao = new personasDAO();
                                        pdto = (personasDTO) misesion.getAttribute("logueado");
                                        persona = pdao.ListarUnaPersona(pdto.getIdPersona());                                       
                                                

                                %>
<div class="contenedor">
<div class="lateral">
 <h4>Bienvenido</h4>
<div class="nombre">
<td><input type="text" value="<%=persona.getNombres()%>" style="width:166px; height:25px; text-align:center; text-transform:uppercase;"  autofocus disabled  class="form-control inputtext">
</td>
</div>
<div class="foto">
<img id="foto" src="imagenes/user.jpg">
</div>
<h6>Ultima Conexion: 20/09/2014 10.25</h6>

</div>
<div class="novedades">
<h4>Novedades</h4>
<h6>_________________________________________________________</h6>
<span class="glyphicon glyphicon-inbox"> </span> &nbsp;Usted no tiene novedades actualmente
</div>
<div class="Noticias">
<h4>Noticias</h4>
<h6>_________________________________________________________</h6>

<span class="glyphicon glyphicon-euro"> </span> &nbsp; $2900 &nbsp; <span class="glyphicon glyphicon-arrow-up"> </span> 
</div>
</div>
          
   

<div style="width:100%; background: #0C4391; height: 30px; margin-top:10px; padding-top:5px; border-radius:3px;color:#e2c60f; margin-bottom:1%; float:left">
    <img src="imagenes/dddd.png"><a href="menu1.jsp">English</a> ||  <img src="imagenes/original.jpg"><a href="menu.jsp">Spanish</a>
</div>
 <%
   }
 %>
</body>
</html>
