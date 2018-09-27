<?php 

include ('conexion_mysql.php');
 ?>
<!DOCTYPE html>
<html lang="es">
<head>
	<title>Solicitar Archivos</title>
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
    <link rel="stylesheet" href="http://code.jquery.com/mobile/1.4.2/jquery.mobile-1.4.2.min.css">
    <script src="http://code.jquery.com/jquery-1.10.2.min.js"></script>
    <script src="http://code.jquery.com/mobile/1.4.2/jquery.mobile-1.4.2.min.js"></script>
<script type="text/javascript"> 
var numero = 0;
evento = function (evt) { 
return (!evt) ? event : evt; 
} 
addCampo = function () {  
nDiv = document.createElement('div');  
nDiv.className = 'archivo'; 
nDiv.id = 'file' + (++numero); 
nCampo = document.createElement('input');  
nCampo.name = 'archivos[]'; 
nCampo.type = 'file'; 
nCampo.required=true;
a = document.createElement('a'); 
a.name = nDiv.id;  
a.href = '#';  
a.onclick = elimCamp;  
a.innerHTML = 'Eliminar'; 
nDiv.appendChild(nCampo); 
nDiv.appendChild(a);  
container = document.getElementById('adjuntos'); 
container.appendChild(nDiv); 
} 
elimCamp = function (evt){ 
evt = evento(evt); 
nCampo = rObj(evt); 
div = document.getElementById(nCampo.name); 
div.parentNode.removeChild(div); 
} 
rObj = function (evt) { 
return evt.srcElement ? evt.srcElement : evt.target; 
} 
</script> 
</head>


<body oncontextmenu="return false">
	<div id="fondo" data-role="content">	
	    <div id="contenido" data-role="content">
	        <form id="empresa" name="empresa" action="solicitar_archivos.php" method="post" data-ajax="false"  enctype="multipart/form-data">
		<div style="width: 100%; margin: auto;" class="ui-field-contain">
	        		<?php 	include('header.php') ?> <br><br><br><br>
	        	</div>
			<div style="width: 80%; margin: auto;" class="ui-field-contain">
		<div>
			<h1 align="CENTER">Subir Archivos del Cliente</h1>
		</div>
	<dl> 
		<center><label style="color: #2A4151 !important; text-shadow: none; font-weight: bold;">Archivos a Subir:</label></center>
			<dd><div id="adjuntos"> 
     		<center><input type="file" name="archivos[]" required/><br /></center>
		</div></dd> 
		<center><dt><a href="#" onClick="addCampo()">Subir otro archivo</a></dt></center> 
		<input style="width: 100%;" data-theme="b" type="submit" data-icon="arrow-r" value="enviar" id="enviar" name="enviar"/> 
</dl> 
							<?php

								$consulta=$mysqli->query("SELECT CL.cliente_codigo,CL.cliente_identidad,CAC.categoriacaso_nombre FROM tbl_cliente CL INNER JOIN tbl_categoriacaso CAC ON CAC.categoriacaso_codigo=CL.categoriacaso_codigo ORDER by cliente_codigo DESC LIMIT 1");

								if($row = $consulta->fetch_array(MYSQLI_ASSOC)){
								   $id = $row["cliente_codigo"];
								   $identidad=$row["cliente_identidad"];
								   $casonombre=$row["categoriacaso_nombre"];
								}

								if(isset($_POST['enviar'])){
								if (isset ($_FILES["archivos"])) { 
								$tot = count($_FILES["archivos"]["name"]); 
								for ($i = 0; $i < $tot; $i++){ 
							$tmp_name = $_FILES["archivos"]["tmp_name"][$i]; 
							//$name = $_FILES["archivos"]["name"][$i];
							$ruta=$_FILES["archivos"]["name"][$i];

							$rutaarchivos="Archivos/$identidad/$casonombre/".$ruta;
						$insertar=$mysqli->query("INSERT INTO tbl_clientearchivos(cliente_codigo,archivos_ruta) VALUES('$id','$rutaarchivos')");

						if (!is_dir("Archivos/".$identidad) && $i==0) {
							
							mkdir("Archivos/".$identidad);
							mkdir("Archivos/$identidad/".$casonombre);
							move_uploaded_file($_FILES["archivos"]["tmp_name"][$i], "Archivos/$identidad/$casonombre/$ruta");
							}

							if (is_dir("Archivos/".$identidad) && $i!=0) {

								move_uploaded_file($_FILES['archivos']['tmp_name'][$i], "Archivos/$identidad/$casonombre/$ruta");
									
								}

									} 
								}	
								
							}	

							?>  

				</div>
			</form>
		</div>
			</div>		
			

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
	
</body>

</html>