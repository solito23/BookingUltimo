<%@page import="co.sena.edu.booking.DAO.personasDAO"%>
<%@page import="co.sena.edu.booking.DTO.personasDTO"%>
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
<li><a href="reserva.jsp" style="text-decoration: none;">Nueva Solicitud </a></li>
<li><a href="mreserva.html" style="text-decoration: none;">Mis Reservas</a></li>
</ul>
</li>
<li><div align="center"><a href="#" style="text-decoration: none;"><span class="glyphicon glyphicon-list-alt"></span> Mi Cuenta</a>
    
<ul class="submain">
<li><a href="actualizarDatos1.jsp" style="text-decoration: none;">Mis Datos</a></li>
</ul>
</li> 
<li><div align="center"><a href="menu.jsp" style="text-decoration: none;"><span class="glyphicon glyphicon-list"></span> Menu</a></li>
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
                                                

                                %>
                                <div class="table">
                                <form id="registro" action="cambiarClave?id=<%=persona.getIdPersona()%>" method="post"> 
                                    <table align="center" id="registro" >
                                        <div class="ba">
                                        <h1>Cambiar Contraseña</h1>
                                        </div>                                 
                                        <center>                                   
                                                <label for="con" class="labele"><strong>Contraseña<font color="#FF0000">*</font></strong></label>
                                                <input name="con" type="password" id="con" value="<%=persona.getContraseña()%>" style="width:250px; height:25px" tabindex="17" autofocus required class="form-control inputtext">
                                                <br>
                                                <label for="con" class="labele"><strong>Confirmar<font color="#FF0000">*</font></strong></label>
                                                <input name="vcon" type="password" id="vcon" value="<%=persona.getContraseña()%>" style="width:250px; height:25px" tabindex="18" autofocus required class="form-control inputtext">
                                                <br>
                                                <br>
                                                <input name="submit11" class="btn btn-success" type="button" id="ccon" tabindex="19" onClick="contrase()" value="Validar contraseña"style="position:relative; left:30px">
                                                <input name="submit10" class="btn btn-success" type="submit" id="submit10" tabindex="20"  value="Guardar Cambios" onClick="validar(registro)" style="position:relative; left:50px">                                            
                                        </center>                                   
                                        </table>
                                    </form>
                                </div>
                                   
                                    <%
                                        }
                                    %>

</div>
                                      
<div class="idioma3">
    <img src="imagenes/dddd.png"><a href="cambiarContraseña1.jsp">English</a> ||  <img src="imagenes/original.jpg"><a href="cambiarContraseña.jsp">Spanish</a>
</div>
</body>
</html>
