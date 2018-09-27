<?php 
include'conexion_mysql.php';

$el_depto = $_POST['departamento'];

$query = $mysqli->query("SELECT * FROM tbl_municipio WHERE departamento_codigo = $el_depto");

echo '<option value="">Seleccione</option>';

while ( $row = $query->fetch_assoc() )
{
	echo '<option value="' . $row['municipio_codigo']. '">' . $row['municipio_nombre'] . '</option>' . "\n";
}

 ?>