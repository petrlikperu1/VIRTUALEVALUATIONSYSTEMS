<%@page   session="true" %>
 <%@page import="BEAN.*"%> 
<%! 
   AlumnoBean  objAlumnoBean=null;
   SemestreBean   objSemestreBean=null;
   String  parametros="";
%>
<%

   objAlumnoBean=(AlumnoBean)session.getAttribute("SESION"); 
   objSemestreBean=(SemestreBean)session.getAttribute("SESIONSEMESTRE");
   // parametros="&CODALU="+objAlumnoBean.getCODALU()+"&CODSEMESTRE="+objSemestreBean.getCODSEMESTRE();
 
%>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>VENTANA  PRINCIPAL DEL  SISTEMA VIRTUAL DE  EVALUACION EN LINEA DE LA  UNIVERSIDAD PERUANA SIMON BOLIVAR</title>

    
    
    
    
 <!-- Bootstrap Core CSS -->
    <link href="<%=request.getContextPath()%>/css/bootstrap.min2.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="<%=request.getContextPath()%>/css/modern-business.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="<%=request.getContextPath()%>/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
     <!-- jQuery -->
    <script src="<%=request.getContextPath()%>/js/jquery_3.js"></script>
    <script src="<%=request.getContextPath()%>/js/jquery_3.js"></script>
    <!-- Bootstrap Core JavaScript -->
    <script src="<%=request.getContextPath()%>/js/bootstrap.min5.js"></script>

     <script src="<%=request.getContextPath()%>/js/jssor.slider-22.0.15.mini.js" type="text/javascript" data-library="jssor.slider.mini" data-version="22.0.15"></script>

   
     <link href="<%=request.getContextPath()%>/css/style.css" rel="stylesheet" type="text/css" media="all" />
     <script src="<%=request.getContextPath()%>/js/responsiveslides.min.js"></script>
   
     
     <script>
         
       function InvocarMenu(ruta,tabla,op,parametros)
       { 
           
           
             
              var pagina=ruta+"/"+tabla+"Servlet?"+parametros;  
              document.form.action=pagina;
              document.form.method="POST";
              document.form.op.value=op;
             
             
              document.form.submit();
                
       } 
         
         
         document.oncontextmenu=inhabilitarMenuContextual;        
         
     </script>
     
     
     <script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery.flexisel.js"></script>
    <script type="text/javascript">
        jQuery(document).ready(function ($) {

            var jssor_1_SlideoTransitions = [
              [{b:-1,d:1,o:-1},{b:0,d:1000,o:1}],
              [{b:1900,d:2000,x:-379,e:{x:7}}],
              [{b:1900,d:2000,x:-379,e:{x:7}}],
              [{b:-1,d:1,o:-1,r:288,sX:9,sY:9},{b:1000,d:900,x:-1400,y:-660,o:1,r:-288,sX:-9,sY:-9,e:{r:6}},{b:1900,d:1600,x:-200,o:-1,e:{x:16}}]
            ];

            var jssor_1_options = {
              $AutoPlay: true,
              $SlideDuration: 800,
              $SlideEasing: $Jease$.$OutQuint,
              $CaptionSliderOptions: {
                $Class: $JssorCaptionSlideo$,
                $Transitions: jssor_1_SlideoTransitions
              },
              $ArrowNavigatorOptions: {
                $Class: $JssorArrowNavigator$
              },
              $BulletNavigatorOptions: {
                $Class: $JssorBulletNavigator$
              }
            };

            var jssor_1_slider = new $JssorSlider$("jssor_1", jssor_1_options);

            /*responsive code begin*/
            /*you can remove responsive code if you don't want the slider scales while window resizing*/
            function ScaleSlider() {
                var refSize = jssor_1_slider.$Elmt.parentNode.clientWidth;
                if (refSize) {
                    refSize = Math.min(refSize, 1920);
                    jssor_1_slider.$ScaleWidth(refSize);
                }
                else {
                    window.setTimeout(ScaleSlider, 30);
                }
            }
            ScaleSlider();
            $(window).bind("load", ScaleSlider);
            $(window).bind("resize", ScaleSlider);
            $(window).bind("orientationchange", ScaleSlider);
            /*responsive code end*/
        });
    </script>
    <style>
        /* jssor slider bullet navigator skin 05 css */
        /*
        .jssorb05 div           (normal)
        .jssorb05 div:hover     (normal mouseover)
        .jssorb05 .av           (active)
        .jssorb05 .av:hover     (active mouseover)
        .jssorb05 .dn           (mousedown)
        */
        .jssorb05 {
            position: absolute;
        }
        .jssorb05 div, .jssorb05 div:hover, .jssorb05 .av {
            position: absolute;
            /* size of bullet elment */
            width: 16px;
            height: 16px;
            background: url('./imagenes/b05.png') no-repeat;
            overflow: hidden;
            cursor: pointer;
        }
        .jssorb05 div { background-position: -7px -7px; }
        .jssorb05 div:hover, .jssorb05 .av:hover { background-position: -37px -7px; }
        .jssorb05 .av { background-position: -67px -7px; }
        .jssorb05 .dn, .jssorb05 .dn:hover { background-position: -97px -7px; }

        /* jssor slider arrow navigator skin 22 css */
        /*
        .jssora22l                  (normal)
        .jssora22r                  (normal)
        .jssora22l:hover            (normal mouseover)
        .jssora22r:hover            (normal mouseover)
        .jssora22l.jssora22ldn      (mousedown)
        .jssora22r.jssora22rdn      (mousedown)
        .jssora22l.jssora22lds      (disabled)
        .jssora22r.jssora22rds      (disabled)
        */
        .jssora22l, .jssora22r {
            display: block;
            position: absolute;
            /* size of arrow element */
            width: 40px;
            height: 58px;
            cursor: pointer;
            background: url('imagenes/a22.png') center center no-repeat;
            overflow: hidden;
        }
        .jssora22l { background-position: -10px -31px; }
        .jssora22r { background-position: -70px -31px; }
        .jssora22l:hover { background-position: -130px -31px; }
        .jssora22r:hover { background-position: -190px -31px; }
        .jssora22l.jssora22ldn { background-position: -250px -31px; }
        .jssora22r.jssora22rdn { background-position: -310px -31px; }
        .jssora22l.jssora22lds { background-position: -10px -31px; opacity: .3; pointer-events: none; }
        .jssora22r.jssora22rds { background-position: -70px -31px; opacity: .3; pointer-events: none; }
    </style>
</head>

<body>
    <form name="form">
        <input type="hidden" name="op">
        
        <input type="hidden" name="CODALU" value="<%=objAlumnoBean.getCODALU()%>" >
         
        <input type="hidden" name="CODSEMESTRE"  value="<%=objSemestreBean.getCODSEMESTRE()%>">
        <input type="hidden" name="parametros"  >
   <!-- Navigation -->
  
    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">   
        <div class="container">
              
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
               <div class="logo">
				<img src="<%=request.getContextPath()%>/imagenes/logousb.png" style="width: 100%;height: auto;" >
		</div>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
              
                <ul class="nav navbar-nav navbar-right">
                   <li class="active">
                        <a href="javascript:InvocarMenu('<%=request.getContextPath()%>','DetalleMatricula',4,'')">Inicio</a>
                    </li>
                                 
                   
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown"><img src="<%=request.getContextPath()%>/imagenes/examen1.png"    >Aplicación Examen <b class="caret"></b></a>
                         <ul class="dropdown-menu">
                            <li>
                                <a href="javascript:InvocarMenu('<%=request.getContextPath()%>','DetalleMatricula',1,'')">Rendir Evaluaciones</a>
                            </li>
                            <li>
                                <a href="javascript:InvocarMenu('<%=request.getContextPath()%>','DetalleMatricula',2,'')">Resultados de las Evaluaciones</a>
                            </li>
                            
                        </ul>
                    </li>
                    
                   
                    
                     <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown"><img src="<%=request.getContextPath()%>/imagenes/configuracion.png"    >Configuracion <b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li>
                                <a href="javascript:InvocarMenu('<%=request.getContextPath()%>','Alumno',24,'<%="CODALU="+objAlumnoBean.getCODALU()+"&CODSEMESTRE="+objAlumnoBean.getCODSEMESTRE()%>')">Actualizar Informacion</a>
                                
                                
                               
                            </li>
                            <li>
                                
                              <a href="javascript:InvocarMenu('<%=request.getContextPath()%>','Alumno',18,'<%="usuario="+objAlumnoBean.getUSUARIO()+
                                                                                                                        "&clave="+objAlumnoBean.getCLAVE()+                                                                                                                       
                                                                                                                        "&codAlu="+objAlumnoBean.getCODALU()%>')">Cambiar Contraseña</a>   
                               
                            </li>
                            
                        </ul>
                    </li>
                    
                       <li >
                        <a href="<%=request.getContextPath()%>/CerrarSesion?opciones=2" ><img src="<%=request.getContextPath()%>/imagenes/configuracion.png"    >Cerrar Sesion </a>
                       
                    </li>
                    
                    
                </ul>
                        
                        
                    
                        
                        
                        
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>

                        
                        
                        
                        
    <div id="jssor_1" style="position: relative; margin: 0 auto; top: 0px; left: 0px; width: 1300px; height: 500px; overflow: hidden; visibility: hidden;">
        <!-- Loading Screen -->
       
        <div data-u="slides" style="cursor: default; position: relative; top: 0px; left: 0px; width: 1300px; height: 500px; overflow: hidden;">
           
            <div data-p="225.00" style="display:none;">
                
                             <img data-u="image" src="<%=request.getContextPath()%>/imagenes/header-bg1.jpg" />
                             <div class="caption">
                               <h3><center>Sistema Virtual de  Evaluacion  en Linea</center></h3>
		             </div>
            </div>
            <div data-p="225.00" style="display:none;">
                
                             <img data-u="image" src="<%=request.getContextPath()%>/imagenes/header-bg2.jpg"/>
                             <div class="caption">
                                <h3><center>Sistema Virtual de  Evaluacion  en Linea</center></h3>
		             </div>
            </div>
            <div data-p="225.00" style="display:none;">
                
                             <img data-u="image" src="<%=request.getContextPath()%>/imagenes/header-bg3.jpg" />
                             <div class="caption">
                                <h3><center>Sistema Virtual de  Evaluacion  en Linea</center></h3>
		             </div>
            </div>
           
        </div>
        <!-- Bullet Navigator -->
        <div data-u="navigator" class="jssorb05" style="bottom:16px;right:16px;" data-autocenter="1">
            <!-- bullet navigator item prototype -->
            <div data-u="prototype" style="width:16px;height:16px;"></div>
        </div>
        <!-- Arrow Navigator -->
        <span data-u="arrowleft" class="jssora22l" style="top:0px;left:8px;width:40px;height:58px;" data-autocenter="2"></span>
        <span data-u="arrowright" class="jssora22r" style="top:0px;right:8px;width:40px;height:58px;" data-autocenter="2"></span>
    </div>
   
    <!-- Page Content -->
    <div class="container"> 

        <hr>

        <!-- Footer -->
       <footer>
            <div class="row">
                <div class="col-lg-12">
                    <p>Sistema Virtual de  Evaluacion en Linea de la Universidad Peruana  Simon Bolivar  &copy; 2015</p>
                </div>
            </div>
        </footer>

    </div>
   
    </form> 
</body>

</html>


