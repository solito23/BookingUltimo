   
function edad() {
var fecNac = new Date(date.value);
var hoy = new Date();
var a = hoy.getFullYear();
var m = hoy.getMonth()+1;
var d = hoy.getDate();
var af = fecNac.getFullYear();
var mf = fecNac.getMonth()+1;
var df = fecNac.getDate()+1;
var hoyx = (a*365)+(m*30)+d;
var fecNacx = (af*365)+(mf*30)+df;
var dif = hoyx-fecNacx;
var difx = dif/365;
if (difx<18){
//alert('Usted es Menor de edad!!!\n'+'Fecha Nacimiento'+fecNacx+'\n'+'Hoy'+hoyx+'\n'+'Edad'+difx);
alert('Usted es menor de edad!!!\nEl sistema no permite registrar menores de edad!\n');
date.value="";
}
else {
    date.style.border="1px solid green";
}
}
function cerrarVentana() {
    window.close("registro.jsp");
    window.open("Index.html");
}

function contrase(){
var x=con.value;
var y=vcon.value;
if ((x==y)&&(x!="")&&(y!=""))
{
	alert('Clave Valida!!');
	con.style.border="1px solid green";
	vcon.style.border="1px solid green";
        
}
else {
    alert('Clave Invalida!!\nLas clave no son iguales!!');
        con.style.border="1px solid red";
        vcon.style.border="1px solid red";
	con.value ="";
	vcon.value="";
}
}
function Eliminar(){
if(eliminar.value=="")
	alert('Decea Eliminar Este Usuario!!');
	con.style.border="1px solid green";
	vcon.style.border="1px solid green";
        
}


function validar(){
	if (nombres.value==""){		
		nombres.style.border="1px solid red";
		nombres.value="";
	}
	else {
	nombres.style.border="1px solid green";
	}
	if (apellidos.value==""){
		apellidos.style.border="1px solid red";
		apellidos.value="";
	}
	else {
	apellidos.style.border="1px solid green";
	}
		if (doc.value==""){
		doc.style.border="1px solid red";
		doc.value="";
	}
        else if(doc.value.length<=8){     
         alert ('Debe ingresar mas de 8 digitos');
          doc.style.border="1px solid red";
          doc.value="";
        }
	else {
	doc.style.border="1px solid green";
	}
	if (date.value==""){
		date.style.border="1px solid red";
		date.value="";
	}
	else {
	date.style.border="1px solid green";
	}
	if (tel.value==""){		
		tel.style.border="1px solid red";
		tel.value="";
	}
	else {
	tel.style.border="1px solid green";
	}
	if (cor.value==""){		
		cor.style.border="1px solid red";
		cor.value="";
	}
	else {
	cor.style.border="1px solid green";
	}
	if (paisnac.value==""){		
		paisnac.style.border="1px solid red";
		paisnac.value="";
	}
	else {
	paisnac.style.border="1px solid green";
	}
	if (ciunac.value==""){		
		ciunac.style.border="1px solid red";
		ciunac.value="";
	}
	else {
	ciunac.style.border="1px solid green";
	}
	
        
      
	 }
   