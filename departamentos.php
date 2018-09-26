<?php 
$conexion = mysqli_connect("localhost","deyvy10","humberto10","buffetesosa");

$query = $conexion->query("SELECT * FROM tbl_departamento");

echo '<option value="">Seleccione</option>';

while ( $row = $query->fetch_assoc() )
{
	echo '<option value="' . $row['departamento_codigo']. '">' . $row['departamento_nombre'] . '</option>' . "\n";
}

 ?>