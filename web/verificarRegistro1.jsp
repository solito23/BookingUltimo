<%@page import="java.util.ArrayList"%>
<%@page import="co.sena.edu.booking.DAO.personasDAO"%>
<%@page import="co.sena.edu.booking.DTO.personasDTO"%>
<!doctype html>
<html>
<head>
<link type="text/css" rel="stylesheet" href="bootstrap-3.2.0-dist/bootstrap-3.2.0-dist/css/bootstrap.css">
<link type="text/css" rel="stylesheet" href="css/css.css">
	 <link rel="shortcut icon" href="imagenes/br.ico" />
         <script src="scripts/registro.js" type="text/javascript"></script>
         <script src="scripts/ingreso.js" type="text/javascript"></script>
         <script src="scripts/bookasp.js" type="text/javascript"></script>
<meta charset="utf-8">
<title>..::Booking Routers::..</title>
</head>
<body>
<div class ="contenedor">
<div class="banner"> 
<p><a href="Index1.html"><img src="imagenes/Logo.png" alt="Booking Routers" width="1360" height="126" title="Forget the rest, call the best"  /></a></p>
</div>
<nav> 
    <ul id="main">
    <li><div align="center"><a href="Index1.html"><span class="glyphicon glyphicon-home"></span> Home</li></a>
    <li><div aling="center"><a href="#"><span class="glyphicon glyphicon-plane"></span> Reservations</a>
   <ul class="submain">
   <li><a href="#">Check booking</a>  	  
   <li><a href="#">Cancel reservation</a></li>
   </ul>
   </li>
   <li><div align="center"><a href="#"><span class="glyphicon glyphicon-send"></span> Routes</a>
   <ul class="submain">
   <li><a href="#">Generate routes</a>
   <li><a href="#">Modify routes</a></li>
   </ul>
   </div>
   </li>
    </ul>
    </nav> 
   <li><div align="center"><a href="#"><span class="glyphicon glyphicon-folder-open"></span> Reports</a> 
    <ul class="submain">
    <li><div align="center"><a href="#">Reservations</a> 
    <li><div align="center"><a href="#">Routes</a>
    <li><div align="center"><a href="#">Drivers</a> 
    <li><div align="center"><a href="#">Customers</a>
    <li><div align="center"><a href="#">Tourists</a> 
    </div>
     </li>
  </ul>
</li>
  
<center>
    <%personasDTO  per= new personasDTO();
      personasDAO pers = new personasDAO(); 
      ArrayList<personasDTO> misPersonas= new ArrayList();
      misPersonas =(ArrayList<personasDTO>) pers.listarPersonas();
      
      
      
      %>  
      <div class="ba">
          <h1><center>Registered users</center></h1>
      </div>
<table border="1" id="one-column-emphasis">
    <tr>
        <th>DOCUMENT</th>
        <th>NAMES</th>
        <th>SURNAMES</th>
        <th>FECHANTO</th>
        <th>COUNTRY</th>
        <th>IDCOUNTRY</th>
        <th>PHONE</th>
        <th>PASSWORD</th>
        <th>MAIL</th>
        <th>DELETE</th>
        <th>Verificar</th>
    </tr>
    <%
      for(personasDTO so: misPersonas){
          
      
    %>
    <tr>
        <td><%=so.getIdPersona()%></td>
        <td><%=so.getNombres()%></td>
        <td><%=so.getApellidos()%></td>
        <td><%=so.getFechaNto()%></td>
        <td><%=so.getIdCiudad()%></td>
        <td><%=so.getIdNacionalidad()%></td>
        <td><%=so.getTelefono()%></td>
        <td><%=so.getContraseña()%></td>
        <td><%=so.getCorreoElectronico()%></td>
        <td><a href="Controlador1?id=<%=so.getIdPersona()%>"><img src="imagenes/Eliminar.png" align="middle" width="32" height="32" title="Delete"></a></td>
        <td><a href="Controlador?idPersona=<%=so.getIdPersona()%>"><img src="imagenes/user.jpg" align="middle" width="32" height="32" title="Verificar"></a></td>
    </tr>
    <%
    }
    %>
</table>
</center>
<div style="width:100%; background: #0C4391; height: 30px; margin-top:10px; padding-top:5px; border-radius:3px;color:#e2c60f; margin-bottom:1%; float:left">
<a href="verificarRegistro1.jsp">English</a> ||  <a href="verificarRegistro.jsp">Spanish</a>
</div>
</body>
<html>