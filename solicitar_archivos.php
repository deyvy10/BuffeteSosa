<?php 
		include 'conexion_mysql.php';

		if (isset($_POST['guardar'])) {
			//mkdir("Archivos/".$cedula);
			//mkdir("Archivos/$cedula/".$nombre);
		$archivos=$_FILES['text']['name'];
		$rutaarchivos="Archivos/".$archivos;
		$insertararchivos=$mysqli->query("INSERT INTO tbl_clientearchivos(cliente_codigo,archivos_ruta) VALUES(1,'$rutaarchivos')");
		echo $archivos;
		}
 ?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Solicitar Archivos</title>
	<link rel="shortcut icon" href="../images/mar.ico">
		<meta http-equiv="Content-type" content="text/html; charset=utf-8"/>
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="css/jquery.mobile-1.4.2.min.css">
    <script src="js/jquery-1.10.2.min.js"></script>
    <script src="js/jquery.mobile-1.4.2.min.js"></script>
</head>
<body>
<style>
input.text{
display:block;
}
</style>
	<div data-role="page" class="jqm-demos ui-responsive-panel" id="inicio">
            <div id="fondo" data-role="content">	
	    <div id="contenido" data-role="content">
	        <form id="empresa2" name="empresa2" action="" method="post" enctype="multipart/form-data">
	        	<div style="width: 100%; margin: auto;" class="ui-field-contain">
	        		<?php 	include('header.php') ?> <br><br><br><br>
	        	</div>
			<div style="width: 80%; margin: auto;" class="ui-field-contain">

	<div>
		<h1 align="CENTER">Cargar Archivos del Cliente</h1>
	</div>

<form id='f' action='Document.htm'>
	<center><label style="color: #2A4151 !important; text-shadow: none; font-weight: bold;">Cantidad de Archivos:</label></center>
<div><select onchange='genList(this.value);' autofocus required>
<option value=''>[SELECCIONE LA CANTIDAD DE ARCHIVOS]</option>
<option value='1'>1</option>
<option value='2'>2</option>
<option value='3'>3</option>
<option value='4'>4</option>
<option value='5'>5</option>
<option value='6'>6</option>
<option value='7'>7</option>
<option value='8'>8</option>
<option value='9'>9</option>
<option value='10'>10</option></select>
</div>
<div id='input_list'></div>


<input style="width: 100%;" data-theme="b" type="submit" data-icon="arrow-r" value="guardar" id="guardar" name="guardar"/> 

</form>

          <style type="text/css">
		  	 #contenido
        {
         		background: url(images/b.png);
                background-repeat: repeat-x;
                background-position:bottom;
                background-attachment:scroll;
                min-height: 30vh;
                min-height: 100vh;
        }
        #fondo
        {
          background: linear-gradient(to right, rgba(85, 161, 169), rgba(124, 155, 224, 0.33));
        }
        #titulo1
        {
          font-color: #2A4151 !important;
          text-align: center;
        }
		</style>

<script>
function genList(num){
clean();
 for(var i = 0; i < num; i++){
 var elem = list.appendChild(document.createElement('input'));
 elem.required=true;
 elem.setAttribute('type','file');
 elem.name ='text'+i;
 elem.className = 'text';
 }
}

function clean(){
list = document.getElementById('input_list');
 while(list.childNodes.length){
 list.removeChild(list.childNodes[list.childNodes.length - 1]);
 }
}
</script>
</body>
</html>