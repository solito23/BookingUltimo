<%@page import="co.sena.edu.booking.DAO.reserDAO"%>
<%@page import="co.sena.edu.booking.DTO.personasDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="co.sena.edu.booking.DAO.personasDAO"%>
<%@page import="co.sena.edu.booking.DTO.reserDTO"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
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
<li>
 <div align="center"> <a href="Index.html"><span class="glyphicon glyphicon-home"></span> Inicio </a>
</li>
        <center>
    <%reserDTO  per= new reserDTO();
      reserDAO pers = new reserDAO(); 
      ArrayList<reserDTO> misReservas= new ArrayList();      
      int numreg = pers.contarRegistros();
      int numpg = numreg/5;  
      int pg =0; //pagona a mostrar
      if(request.getParameter("pg")==null){
      pg=1;
      }else{
      pg=Integer.valueOf(request.getParameter("pg"));
      }  
      misReservas =(ArrayList<reserDTO>) pers.Paginacion(pg,5);
      %>    
<div class="ba">
      <h1> Mis Reservas</h1>
</div>
<table border="6" class="paginated" id="divTabla">
    <tr>
        <th style="background: #0C4391;">idReserva</th>
        
        <th style="background: #0C4391;">idServicio</th>
        <th style="background: #0C4391;">idTrasnporteLlegada</th>
        <th style="background: #0C4391;">responsable</th>
        <th style="background: #0C4391;">fechaReserva</th>
        <th style="background: #0C4391;">horaReserva</th>
        <th style="background: #0C4391;">direccionDestino</th>
        <th style="background: #0C4391;">Modificar</th>
    </tr>
    <%
      for(reserDTO so: misReservas){
          
      
    %>
    <tr>
        <td><%=so.getIdReserva()%></td>
       
        <td><%=so.getIdServicio()%></td>
        <td><%=so.getIdTransporteLlegada()%></td>
        <td><%=so.getResponsable()%></td>
        <td><%=so.getFechaReserva()%></td>
        <td><%=so.getHoraReserva()%></td>
        <td><%=so.getDireccionDestino()%></td>
        
        <td><a href="modificarRerserva?idReserva=<%=so.getIdReserva()%>"><img src="imagenes/Modificar.png" align="middle" width="32" height="32" title="Verificar"></td></a>
    
    </tr>
    <%
    }
    %>
</table>
<div class="pagination" id="">
     <%
     int adelanteA;
     if (request.getParameter("pg")==null) {
             adelanteA =1;
         }else{
     adelanteA =Integer.parseInt(request.getParameter("pg"));
     }
         
     %> 
    <a href="?pg=<%=adelanteA-1%>">&laquo</a>
    
    <%      
       for(int j=0;j<numpg+1;j++){
       %>  
       <a href="?pg=<%=j+1%>"><%=j+1 %></a>
 <%
     }
 %> 
<a href="?pg=<%=adelanteA+1%>">&raquo</a>
</div>
<div style="width:100%; background: #0C4391; height: 30px; margin-top:10px; padding-top:5px; border-radius:3px;color:#e2c60f; margin-bottom:1%; float:left">
    <img src="imagenes/dddd.png"><a href="ModificarReservas1.jsp">English</a> ||  <img src="imagenes/original.jpg"><a href="ModificarReservas.jsp">Spanish</a>
</div>

</table>
</main>

</body>
</html>
