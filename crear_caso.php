<?php 

include ('conexion_mysql.php');
 ?>
<!DOCTYPE html>
<html lang="es">
<head>
	<title>Nuevo Caso</title>
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
    <link rel="stylesheet" href="http://code.jquery.com/mobile/1.4.2/jquery.mobile-1.4.2.min.css">
    <script src="http://code.jquery.com/jquery-1.10.2.min.js"></script>
    <script src="http://code.jquery.com/mobile/1.4.2/jquery.mobile-1.4.2.min.js"></script>
     <!--CSS-->    
    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="css/dataTables.bootstrap.min.css">
  <script type="text/javascript" language="javascript" src="https://cdn.datatables.net/responsive/2.2.1/js/dataTables.responsive.min.js"></script>
    <!--Javascript-->    
    <script src="js/jquery.dataTables.min.js"></script>
    <script src="js/dataTables.bootstrap.min.js"></script>
    <script src="js/lenguajeclientes.js"></script>     

<!--Datatable Responsive-->
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.16/css/dataTables.bootstrap4.min.css">
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/responsive/2.2.1/css/responsive.bootstrap4.min.css">
    <script type="text/javascript" language="javascript" src="https://cdn.datatables.net/1.10.16/js/dataTables.bootstrap4.min.js"></script>
    <script type="text/javascript" language="javascript" src="https://cdn.datatables.net/responsive/2.2.1/js/dataTables.responsive.min.js"></script>
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

  <script>
  function mostrar_cliente(){
    var s = document.getElementById('cliente').value.split(";");
    document.getElementById('identidad').value=s[1];

  }
</script>

 <script>
  function mostrar_caso(){
    var s = document.getElementById('categoria').value.split(";");
    document.getElementById('caso').value=s[1];

  }
</script>
<script>
    $(document).ready(function() {
    var table = $('#example').DataTable();

    $('#example tbody').on( 'click', 'tr', function () {
        if ( $(this).hasClass('selected') ) {
            $(this).removeClass('selected');
        }
        else {
            table.$('tr.selected').removeClass('selected');
            $(this).addClass('selected');
        }
    } )
$('#example tbody').on( 'click', 'tr', function () {
    var data = table.row( this ).data();
    document.getElementById('identidad').value=data.identidad;
    document.getElementById('codigo').value=data.codigo;
} );
} );  
</script>
</head>


<body oncontextmenu="return false">
	<div id="fondo" data-role="content">	
	    <div id="contenido" data-role="content">
	        <form id="empresa" name="empresa" action="crear_caso.php" method="post" data-ajax="false"  enctype="multipart/form-data">
		<div style="width: 100%; margin: auto;" class="ui-field-contain">
	        		<?php 	include('header.php') ?> <br><br><br><br>
	        	</div>
			<div style="width: 80%; margin: auto;" class="ui-field-contain">
		<div>
			<h1 align="CENTER">Nuevo Caso de un Cliente</h1>
		</div>
	<dl> 
		                    <fieldset> 
                          <h4><center>SELECCIONE UN CLIENTE</center></h4> 
                      
                         <table id="example" class="table table-striped table-bordered dt-responsive" cellspacing="0" width="100%">
                          <thead>
                            <tr>
                                <th>Codigo</th>
                                <th>Nombres</th>
                                <th>Apellidos</th>
                                <th>Identidad</th>
                            </tr>
                            </thead>
                            <tbody>
                            </tbody>
                            <tfoot>
                            <tr>
                                <th>Codigo</th>
                                <th>Nombres</th>
                                <th>Apellidos</th>
                                <th>Identidad</th>
                            </tr>
                            </tfoot>
                        </table> 
                    </fieldset> 
			<br>

				 <input id="identidad" name="identidad" type="hidden" class="form-control" >
				 <input id="caso" name="caso" type="hidden" class="form-control" >   
				 <input id="codigo" name="codigo" type="hidden" class="form-control" >

			<center><label style="color: #2A4151 !important; text-shadow: none; font-weight: bold;">Categoria del Caso:</label></center>
						<select name="categoria" id="categoria" data-mini="true" onchange="return mostrar_caso();" required/>
		        			 <option value="">[SELECCIONE UNA CATEGORIA]</option>
									<?php
                          		  $query = $mysqli -> query ("SELECT categoriacaso_codigo,categoriacaso_nombre FROM tbl_categoriacaso");
                            	while ($valores = mysqli_fetch_array($query)) {
                            	echo '<option value="'.$valores[categoriacaso_codigo].";".$valores[categoriacaso_nombre].'">'.$valores[categoriacaso_nombre].'</option>';
                            		}
                          		?>
				       </select>

		<center><label  style="color: #2A4151 !important; text-shadow: none; font-weight: bold;">Fecha de Inicio:</label></center> 
          	<input id="fecha" name="fecha" type="date" class="form-control" autofocus required/>			
		<center><label style="color: #2A4151 !important; text-shadow: none; font-weight: bold;">Archivos a Subir:</label></center>
			<dd><div id="adjuntos"> 
     		<center><input type="file" name="archivos[]" required/><br /></center>
		</div></dd> 
		<center><dt><a href="#" onClick="addCampo()">Subir otro archivo</a></dt></center> 
		<input style="width: 100%;" data-theme="b" type="submit" data-icon="arrow-r" value="enviar" id="enviar" name="enviar"/> 
</dl> 
							<?php

								if(isset($_POST['enviar'])){
									$fecha=$_POST["fecha"];
									$codigo=$_POST["codigo"];
									$identidad=$_POST["identidad"];
									$casonombre=$_POST["caso"];
								$insertarcaso=$mysqli->query("INSERT INTO tbl_caso(cliente_codigo,categoriacaso_codigo,caso_fechacrea,caso_estado)VALUES('$codigo','".$_POST["categoria"]."','$fecha',1)");

								if (isset ($_FILES["archivos"])) { 
									$tot = count($_FILES["archivos"]["name"]); 
									for ($i = 0; $i < $tot; $i++){ 
									$tmp_name = $_FILES["archivos"]["tmp_name"][$i];
									$ruta=$_FILES["archivos"]["name"][$i];
									$rutaarchivos="Archivos/$identidad/$casonombre/".$ruta;
									$insertar=$mysqli->query("INSERT INTO tbl_clientearchivos(cliente_codigo,archivos_ruta) VALUES('$codigo','$rutaarchivos')");

									if (is_dir("Archivos/".$identidad) && $i==0) {
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