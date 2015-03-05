<!doctype html>
<html>
    <head>
        <meta charset="utf-8" />
        <title>Booking Routers</title>
        <link type="text/css" rel="stylesheet" href="bootstrap-3.2.0-dist/bootstrap-3.2.0-dist/css/bootstrap.css">
        <link type="text/css" rel="stylesheet" href="css/css.css" />
        <link type="text/css" rel="stylesheet" href="font-awesome.css">
       <link rel="shortcut icon" href="imagenes/br.ico" />
      <script src="scripts/registro.js" type="text/javascript"></script>
    </head>
    <body>
   
        <div class ="contenedor">
            <div class="banner"> 
                
                <p><a href="Index.html"><img src="imagenes/Logo.png" alt="Bookin Routers" width="1360" height="126" title="Forget the rest, call the best"/></a></p>
            </div>
            <nav> 
           <ul id="main"> 
                    <li>
                        <div align="center"> <a href="Index.html" style="text-decoration: none;"><span class="glyphicon glyphicon-home"></span> Inicio</a>    
                        </div>
                    </li>
           </ul>
                  </nav>  
                        <form name="form1" action="Controlador" method="post" id="form1"> 
                            
                            <table width="744" align="center">
                                
                                <div class="ba">
                                    <h1><center>Registro de Usuarios</center></h1>
                                </div>
                              <div style=" background:#98A0A8;  text-align: center; border-radius: 15; padding-top: 5px; border-radius: 15px; ">
                                  <a href="Index.html" style="color:black; text-decoration: none;">Inicio</a>
                                  -->
                                  <a href="registro.jsp" style="color: black; text-decoration: none;">Registro Usuario</a>
    </div> 
                                <tr>
                          
                                    <td><label for="nombres" class="labele"><strong>Nombres<font color="#FF0000">*</strong></label></font></td>
                                    <td><input name="nombres" type="text" style="width:250px; height:25px " autofocus id="nombres" placeholder="Nombres" required class="form-control" onChange="validacion(nombres)">
                                    </td>
                                    <td><label for="ape" class="labele"><strong>Apellidos<font color="#FF0000">*</strong></label></font></td>
                                    <td><input name="apellidos" type="text" style="width:250px; height:25px" autofocus id="apellidos" placeholder="Apellidos" required class="form-control inputtext"tabindex="2" onChange="requisitos(apellidos)">
                                    </td>
                                    </tr>
                                    <tr>
                                        <td><label for="doc" class="labele"><strong>Documento <font color="#FF0000">*</strong></label></font></td>
                                        <td><input name="doc" type="number" style="width:250px; height:30px" autofocus id="doc" placeholder="Doc Identidad" required class="form-control inputtext" tabindex="3" onChange="requisitos(doc)" minlenght=8></td>    
                                        <td><label for="date" class="labele"><strong>Fecha Nacimiento<font color="#FF0000">* </strong></label></font></td>
                                        <td><input name="date" type="date" id="date" style="width:250px; height:25px" required class="form-control inputtext" tabindex="4" onChange="edad(date)"></td>    
                                    </tr>
                                    <tr>
                                        <td><label for="tel" class="labele"><strong> Teléfono <font color="#FF0000">*</strong></label></font></td>
                                        <td><input name="tel" type="text" id="tel" style="width:250px; height:25px" placeholder="Telefono" autofocus  required class="form-control inputtext" tabindex="6" onChange="requisitos(tel)"></td>   
                                        <td><label for="cor" class="labele"><strong>Correo<font color="#FF0000">*</strong></label></font></td>
                                        <td><input name="cor" type="email" id="cor" style="width:250px; height:25px" placeholder="asldj@misena.edu.co" autofocus required class="form-control inputtext" tabindex="7" onChange="requisitos(cor)"></td>
                                    </tr>    
                                    <tr>
                                        <td><label for="paisnac" class="labele"><strong>País <font color="#FF0000">* </strong></label></font></td>
                                        <td><input name="paisnac" id="paisnac" style="width:250px; height:35px" placeholder="Seleccione país" autofocus required class="form-control inputtext" list="paises" tabindex="8" onChange="requisitos(paisnac)">
                                            <datalist id="paises">
                                                <option value="Argentina">Argentina</option>
                                                <option value="Brasil">Brasil</option>
                                                <option value="Chile">Chile</option>
                                                <option value="Colombia">Colombia</option>
                                                <option value="Ecuador">Ecuador</option>
                                                <option value="Perú">Perú</option>
                                            </datalist>
                                        </td>
                                    <td><label for="ciunac" class="labele"><strong>Ciudad<font color="#FF0000">*</strong></label></font></td>
                                    <td><input name="ciunac" id="ciunac" style="width:250px; height:35px" placeholder="Seleccione ciudad" autofocus required class="form-control inputtext"  list="ciudades" tabindex="9" size="30" onChange="requisitos(ciunac)">
                                        <datalist id="ciudades">
                                            <option value="Bogota">Bogota</option>
                                            <option value="Cali">Cali</option>
                                            <option value="Medellin">Medellin</option>
                                            <option value="Barranquilla">Barranquilla</option>
                                        </datalist>
                                    </td>
                                    <td nowrap>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    </tr>
                                    <tr> 
                                        <td><label for="con" class="labele"><strong>Contraseña<font color="#FF0000">*</strong></label></font></td>  
                                        <td><input name="con" type="password" id="con" style="width:250px; height:25px" tabindex="17" autofocus required class="form-control inputtext">
                                        <td><label for="con" class="labele"><strong>Confirmar<font color="#FF0000">* </strong></label></font>  
                                        <td><input name="vcon" type="password" id="vcon" style="width:250px; height:25px" placeholder="Comfirme su contraseña" tabindex="18" autofocus required class="form-control inputtext"></td>
                                    </tr>
                                    <tr>
                                        <td><input name="submit11" class="btn btn-success" type="button" id="ccon" tabindex="19" onClick="contrase()" value="Validar contraseña" style="position:relative; left:290px"></td>
                                        <td><input type="submit" name="registro"  id="registro" class="btn btn-success"  value="Registrar" onclick="validar(registro)" style="position:relative; left:280px">
                                       
                                        
                                    </tr>
                                     <tr>
   
                            </table>
                            
                            </fieldset>
                        </form>
 
                        </div> 
            <div class="idioma1">
                <img src="imagenes/dddd.png"><a href="registro1.jsp">English</a> ||  <img src="imagenes/original.jpg"><a href="ingreso.jsp">Spanish</a>
</div>
                </body>
                <html>