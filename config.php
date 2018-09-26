<?php
require_once 'messages.php';

define( 'BASE_PATH', 'http://localhost/BuffeteSosa/login2');//Ruta base donde se encuentra
define( 'DB_HOST', 'localhost' );//Servidor de la base de datos
define( 'DB_USERNAME', 'deyvy10');//Usuario de la base de datos
define( 'DB_PASSWORD', 'humberto10');//Contraseña de la base de datos
define( 'DB_NAME', 'terra');//Nombre de la base de datos

function __autoload($class)
{
	$parts = explode('_', $class);
	$path = implode(DIRECTORY_SEPARATOR,$parts);
	require_once $path . '.php';
}
