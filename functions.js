$(function(){

	// Lista de Continentes
	$.post( 'departamentos.php' ).done( function(respuesta)
	{
		$( '#departamento').html( respuesta );
	});

	// lista de Paises	
	$('#departamento').change(function()
	{
		var el_depto = $(this).val();
		
		// Lista de Paises
		$.post( 'municipios.php', { departamento: el_depto} ).done( function( respuesta )
		{
			$( '#municipio' ).html( respuesta );
		});
	});

})
