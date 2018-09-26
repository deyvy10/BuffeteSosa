<?php 

  session_start();


 ?>

<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="utf-8"/>

  <title>Bienvenido</title>
    <link rel="shortcut icon" href="images/logo.ico">

    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="http://code.jquery.com/mobile/1.4.2/jquery.mobile-1.4.2.min.css">
    <script src="http://code.jquery.com/jquery-1.10.2.min.js"></script>
    <script src="http://code.jquery.com/mobile/1.4.2/jquery.mobile-1.4.2.min.js"></script>
    <script type="text/javascript" src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.7/jquery.validate.min.js"></script>
    <script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
    <link rel="stylesheet" href="https://bootswatch.com/flatly/bootstrap.min.css">
    <script src="https://netdna.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" type="text/css" href="css/bs-table.css">
    <script src="js/bs-table.js"></script>
    <script src="js/push.js/push.min.js"></script>




 <link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
   <link href="css/estilo2.css" rel="stylesheet" />



  <script type="text/javascript">

    
    function cerrarsesion()
        {
            window.open('logout.php','_self',false);
        }
        function tarea()
        {
            window.open('bie-alumno-tareas.php','_self',false);
        }

function tutorial()
        {
            window.open('bie-alumno-tutoriales.php','_self',false);
        }

function foros()
        {
            window.open('bie-alumno-foros.php','_self',false);
        }
function archivos()
        {
            window.open('bie-alumno-archivos.php','_self',false);
        }
function calificaciones()
        {
            window.open('bie-alumno-calificaciones.php','_self',false);
        }

        function sendvariable(var1,var2,var3,var4,var5,var6,var7,var8)
        {
          $('#formulario').validate(
            {
                submitHandler: function (form) 
                {
                  document.getElementById("entreid").value=var1;
          document.getElementById("contapreg").value=var2;
          document.getElementById("contareal").value=var3;
          document.getElementById("orientado").value=var4;
          document.getElementById("para").value=var5;
          document.getElementById("tipo").value=var6;
          document.getElementById("hoy").value=var7;
          document.getElementById("entrercodigo").value=var8;
          //document.getElementById('formulario').submit();
                    form.submit();
                    //alert("TestForm3");
                    return false;
                }
                //return false;
            });
          
          //return true;
        }
  </script>
   <script type="text/javascript">
        refresca();
        ventanaSecundaria();
      </script>

  <style type="text/css">
    #inmarelogoheader
    {
      display: inline-block;
      margin: auto;
    }
.custom-btn {
    width: 250px !important;
  </style>

  
}

</head>

<body oncontextmenu="return false">

  <div data-role="page" class="jqm-demos ui-responsive-panel" id="inicio">
    
    <div style="min-height: 45px; max-height: 55px; background: linear-gradient(to right, rgba(67, 90, 93), rgba(70, 194, 214)); border-bottom-color: #2A4151; border-bottom-width: 2px;" vertical-align="center" align="center" data-role="header" data-position="fixed" data-fullscreen="false" data-theme="a">

      <!-- <h1 style="font-size: 100%"><img id="inmarelogoheader" src="../images/mar.png" style="width: 5%;"/><span> EDUINMARE</span></h1> -->

      <img id="inmarelogoheader" src="images/logo.png" style="width: 5vh;"/>

          
          <!-- botón cerrar sesión -->
          <a style="margin-right: 2%; font-color: #FFFFFF; background-color: #2A4151;" href="javascript:cerrarsesion();" data-theme="b" data-icon="home" data-position-to="window" data-role="button" class="ui-btn-right ui-btn-inline ui-shadow ui-corner-all ui-icon-home ui-btn-icon-left">SALIR</a>
          
        </div>

<div id="fondo" data-role="content">
    <div id="contenido" data-role="content"><h1 id="titulo1" >ABOGADO</h1>
      <h1 style="font-size: 100%;" id="titulo1" >BIENVENIDO A LA PLATAFORMA </h1>
     

      <div class="layout">  
      
        <a onclick='javascript:tarea()'><div class="brick1"></br></br></br><h5><P  style="COLOR: #000000; BACKGROUND-COLOR: #5FD3DE ">Clientes</P></h5></div></a>
        <div class="brick0"></div>
         <a onclick='javascript:tutorial()'><div class="brick2"></br></br></br><h5><P  style="COLOR: #000000; BACKGROUND-COLOR: #5FD3DE ">Agenda</P></h5></div></a>
        <div class="brick0"></div>
        

         

</div>
</br></br>
<div class="span12 responsive" data-tablet="span12 fix-margin" data-desktop="span12">
  </br></br></br>
        <!-- BEGIN CALENDAR PORTLET-->
        <div class="widget green">
            <div class="widget-title">
                <h4><i class="fa fa-smile-o"></i> Bienvenido</h4>
                <span class="tools">
                    <a href="javascript:;" class="fa fa-chevron-down"></a>
                </span>
            </div>
            <div class="widget-body">
                 <h1>Bienvenido a la Plataforma</h1>
                En esta plataforma usted podrá realizar diversas tareas exclusivas para nuestros usuarios tales como:
                <ul>
                    <li>Registrar Clientes</li>
                    <li>Guardar Documentos de referencia</li>
                    <li>Generar Reportes </li>
                    <li>Descargar Archivos</li>
                    <li>Negociación y gestión de todo tipo</li>
                </ul>
            </div>
        </div>
        </div>



    
    <style type="text/css">

    .layout {
        margin: 2em 15px;
        color: #333;
      }

      

      .brick1:hover
      {
        width: 100px;
        height: 100px;
      background: url("images/clientes.png");     
        float: left;
      cursor: default;
      overflow: hidden;
      background-repeat: no-repeat;
      background-size: cover;
      background-position: center;
       vertical-align: text-middle;  
      }
      


      .brick1 {
       width: 100px;
        height: 100px;
            background: url("images/clientes.png"); 
      float: left;
      cursor: default;
      overflow: hidden;
      background-repeat: no-repeat;
      background-size: cover;
      background-position: center;
       vertical-align: text-middle;  
      }
      .brick2:hover
      {
        width: 100px;
        height: 100px;
      background: url("images/agenda.png");     
        float: left;
      cursor: default;
      overflow: hidden;
      background-repeat: no-repeat;
      background-size: cover;
      background-position: center;
       vertical-align: text-middle;  
      }
      
      .brick2 {
        width: 100px;
        height: 100px;
            background: url("images/agenda.png"); 
      float: left;
      cursor: default;
      overflow: hidden;
      background-repeat: no-repeat;
      background-size: cover;
      background-position: center;
       vertical-align: text-middle;  
      }
      
      .brick0 {

        width: 25px;
        height: 100px;
      float: left;
      cursor: default;
      overflow: hidden;
      background-repeat: no-repeat;
      background-size: cover;
      background-position: center;
      }

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
</body>
</html>