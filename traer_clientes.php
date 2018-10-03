<?php
	include ("conexion_mysql.php");
	$consulta="SELECT cliente_codigo,cliente_nombre,cliente_apellido,cliente_identidad FROM tbl_cliente ";
	$registro = $mysqli->query($consulta);
	$tabla = "";
	while($row = $registro->fetch_array(MYSQLI_ASSOC)){		
		$tabla.='{
			"codigo":"'.$row['cliente_codigo'].'",
				"nombres":"'.$row['cliente_nombre'].'",
				"apellidos":"'.$row['cliente_apellido'].'",
				"identidad":"'.$row['cliente_identidad'].'"
				},';		
	}	
	$tabla = substr($tabla,0, strlen($tabla) - 1);
	echo '{"data":['.$tabla.']}';	
?>