
<?php 
	include 'conexion_mysql.php';
	if (isset($_POST['enviar'])) {

		$nombre=$_POST["nombre"];
		$apellido=$_POST["apellido"];
		$cedula=$_POST["cedula"];
		$telefono=$_POST["telefono"];
		$telefono2=$_POST["telefono2"];
		$correo=$_POST["correo"];
		$direccion=$_POST["direccion"];

		$insertarCliente=$mysqli->query("INSERT INTO tbl_cliente(cliente_nombre,cliente_apellido,cliente_identidad,departamento_codigo,municipio_codigo,cliente_correo,categoriacaso_codigo,cliente_direccion)VALUES('$nombre','$apellido','$cedula','".$_POST["departamento"]."','".$_POST["municipio"]."','$correo','".$_POST["categoria"]."','$direccion')");

		$ultimo_id=mysqli_insert_id($mysqli);

		$insertartelefono=$mysqli->query("INSERT INTO tbl_clientetelefono(cliente_codigo,telefono_telefono)VALUES('$ultimo_id','$telefono')");

		$insertartelefono2=$mysqli->query("INSERT INTO tbl_clientetelefono(cliente_codigo,telefono_telefono)VALUES('$ultimo_id','$telefono2')");

		$insertarcaso=$mysqli->query("INSERT INTO tbl_caso(cliente_codigo,categoriacaso_codigo)VALUES('$ultimo_id','".$_POST["categoria"]."')");	
	}
 ?>
<!DOCTYPE html>
<html lang="es">
<head>
	<title>Crear Cliente</title>
	<link rel="shortcut icon" href="../images/mar.ico">
		<meta http-equiv="Content-type" content="text/html; charset=utf-8"/>
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="css/jquery.mobile-1.4.2.min.css">
    <script src="js/jquery-1.10.2.min.js"></script>
    <script src="js/jquery.mobile-1.4.2.min.js"></script>
 	<script src="functions.js"></script>
</head>
<body>

	<div data-role="page" class="jqm-demos ui-responsive-panel" id="inicio">
         
            <div id="fondo" data-role="content">	
	    <div id="contenido" data-role="content">
	        <form id="empresa2" name="empresa2" action="crear_usuario.php" method="post" enctype="multipart/form-data">
	        	<div style="width: 100%; margin: auto;" class="ui-field-contain"><?php 	include('header.php') ?> <br><br><br><br></div>
			<div style="width: 80%; margin: auto;" class="ui-field-contain">
	<div>
<h1 align="CENTER">Registrar Cliente</h1>

</div>


			<center><label style="color: #2A4151 !important; text-shadow: none; font-weight: bold;">Categoria del Caso:</label></center>
						<select name="categoria" id="categoria" data-mini="true" required/>
		        			 <option value="">[SELECCIONE UNA CATEGORIA]</option>
									<?php
                            $query = $mysqli -> query ("SELECT categoriacaso_codigo,categoriacaso_nombre FROM tbl_categoriacaso");
                            while ($valores = mysqli_fetch_array($query)) {
                            echo '<option value="'.$valores[categoriacaso_codigo].'">'.$valores[categoriacaso_nombre].'</option>';
                            }
                          ?>
				       </select>

			<center><label  style="color: #2A4151 !important; text-shadow: none; font-weight: bold;">Nombre Completo:</label></center> 
          	<input id="nombre" name="nombre" type="text" class="form-control" placeholder="Nombre del Cliente" autofocus required/>

          	<center><label  style="color: #2A4151 !important; text-shadow: none; font-weight: bold;">Apellido Completo:</label></center> 
          	<input id="apellido" name="apellido" type="text" class="form-control" placeholder="Apellido del Cliente" autofocus required/>

          	<center><label  style="color: #2A4151 !important; text-shadow: none; font-weight: bold;">Cédula:</label></center> 
          	<input id="cedula" name="cedula" type="text" class="cedula form-control" placeholder="Cédula del Cliente" autofocus required/>
				
			<center><label style="color: #2A4151 !important; text-shadow: none; font-weight: bold;">Departamento:</label></center>
						<select class="departamento" name="departamento" id="departamento" data-mini="true" required/>
		        			 <option value="">[SELECCIONE UN DEPARTAMENTO]</option>
		  				
				        </select>

			<center><label style="color: #2A4151 !important; text-shadow: none; font-weight: bold;">Municipio:</label></center>
				<select class="municipio" name="municipio" id="municipio" data-mini="true" required/>
		        			 <option value="">[SELECCIONE UN MUNICIPIO]</option>
				        </select>

			<center><label  style="color: #2A4151 !important; text-shadow: none; font-weight: bold;">Dirección:</label></center> 
			 <td><textarea id="direccion" name="direccion" required></textarea></td>		    

			<center><label  style="color: #2A4151 !important; text-shadow: none; font-weight: bold;">Teléfono:</label></center> 
          	<input id="telefono" name="telefono" type="text" class="telefono form-control" placeholder="Teléfono del Cliente" autofocus required/>

          	<center><label  style="color: #2A4151 !important; text-shadow: none; font-weight: bold;">Celular:</label></center> 
          	<input id="telefono2" name="telefono2" type="text" class="telefono2 form-control" placeholder="Celular del Cliente" autofocus required/>
			
			<center><label  style="color: #2A4151 !important; text-shadow: none; font-weight: bold;">Correo Electrónico:</label></center> 
			 <input type="email" class="form-control" id="correo" placeholder="Correo del Cliente" name="correo" autofocus required/> 
</br>
</br>
</br>
			<fieldset style="width: 100%; margin: center;"> 
					
						<input style="width: 100%;" data-theme="b" type="submit" data-icon="arrow-r" value="enviar" id="enviar" name="enviar"/> 
			</fieldset>
</div>
 </div>           
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
</div>
</div>
</div>

<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.10/jquery.mask.js"></script>
<script>

    $('.telefono').mask('(000) 0000-0000');
     $('.telefono2').mask('(000) 0000-0000');
    $('.cedula').mask('0000-0000-00000');
</script>	
</body>
</html>