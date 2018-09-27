<?php 
include'conexion_mysql.php';
$query = $mysqli->query("SELECT * FROM tbl_departamento");

echo '<option value="">Seleccione</option>';

while ( $row = $query->fetch_assoc() )
{
	echo '<option value="' . $row['departamento_codigo']. '">' . $row['departamento_nombre'] . '</option>' . "\n";
}

 ?>