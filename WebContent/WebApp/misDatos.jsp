<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


  <c:set var="msg1" value="${abogado}"/>
 
    	<c:if test="${msg1==null}">

	<% response.sendRedirect("loginAbogado.jsp"); %>

	</c:if>

<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Registro Caso</title>

  <!-- Custom fonts for this template-->
  <link href="../carpetaplantilla/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
  <link rel="shortcut icon" href="../carpetaplantilla/img/icon.png">

  <!-- Custom styles for this template-->
  <link href="../carpetaplantilla/css/sb-admin-2.min.css" rel="stylesheet">
  
<link rel="stylesheet" href="../static/alertifyjs/css/alertify.min.css" />
 
<link rel="stylesheet" href="../static/alertifyjs/css/themes/default.min.css" />
 
<script src="../static/alertifyjs/alertify.min.js"></script>

</head>

<body id="page-top">




  <!-- Page Wrapper -->
  <div id="wrapper">

    <!-- Sidebar -->
   

    <!-- End of Sidebar -->

    <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">

      <!-- Main Content -->
      <div id="content">

        <!-- Topbar -->
        <nav class="navbar navbar-expand navbar-light bg-white topbar  static-top shadow">

          <!-- Sidebar Toggle (Topbar) -->
          <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
            <i class="fa fa-bars"></i>
          </button>

          <!-- Topbar Search -->
          <form class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
            <div class="input-group">
              <input type="text" class="form-control bg-light border-0 small" placeholder="Search for..." aria-label="Search" aria-describedby="basic-addon2">
              <div class="input-group-append">
                <button class="btn btn-primary" type="button">
                
                  <i class="fas fa-search fa-sm"></i>
                 
                  
                </button>
                 &nbsp;&nbsp;&nbsp;&nbsp;
                <a href="inicioAbogado.jsp" class="btn btn-primary btn-icon-split">
                                        <span class="icon text-white-50">
                                            <i class="fas fa-flag"></i>
                                        </span>
                                        <span class="text">Mis Casos</span>
                                    </a>
                
                
                
              </div>
              
              
            </div>
          </form>

          <!-- Topbar Navbar -->
          <ul class="navbar-nav ml-auto">

            <!-- Nav Item - Search Dropdown (Visible Only XS) -->
            <li class="nav-item dropdown no-arrow d-sm-none">
              <a class="nav-link dropdown-toggle" href="#" id="searchDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <i class="fas fa-search fa-fw"></i>
              </a>
              <!-- Dropdown - Messages -->
              <div class="dropdown-menu dropdown-menu-right p-3 shadow animated--grow-in" aria-labelledby="searchDropdown">
                <form class="form-inline mr-auto w-100 navbar-search">
                  <div class="input-group">
                    <input type="text" class="form-control bg-light border-0 small" placeholder="Search for..." aria-label="Search" aria-describedby="basic-addon2">
                    <div class="input-group-append">
                      <button class="btn btn-primary" type="button">
                        <i class="fas fa-search fa-sm"></i>
                      </button>
                    </div>
                  </div>
                </form>
              </div>
            </li>

            <!-- Nav Item - Alerts -->
            

            <div class="topbar-divider d-none d-sm-block"></div>

            <!-- Nav Item - User Information -->
            <li class="nav-item dropdown no-arrow">
              <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <span class="mr-2 d-none d-lg-inline text-gray-600 small"><c:out value="${abogado.persona.nombre}"></c:out></span>
                <img class="img-profile rounded-circle" src="https://raw.githubusercontent.com/Javier9710/Ejercicio/master/img/<c:out value="${abogado.foto}"></c:out>" >
              </a>
              <!-- Dropdown - User Information -->
              <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="userDropdown">
                
                <a class="dropdown-item" href="misDatos.jsp" >
                  <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                  Mis Datos
                </a>
                
                <a class="dropdown-item" href="../AbogadoControl?accion=cerrar" >
                  <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                  Cerrar Sesi�n
                </a>
                
              </div>
            </li>

          </ul>

        </nav>
    </div>





<div class="container-fluid" style="background-image: url(https://www.publicdomainpictures.net/pictures/280000/velka/gradient-yellow-to-blue-background.jpg);"><br>

          <!-- Page Heading -->

          <div class="row justify-content-center align-self-center" >

            <div class="col col-sm-9 col-md-9 col-lg-6 col-xl-6 h-100" style="background-color: #a7c0cd;" style="border-radius: 20px;">
              
                <form method="GET" action="../AbogadoControl"   enctype="multipart/form-data">
                  
               <legend class="text-center header" style="color: black;">Editar Datos</legend>

                <div class="form-group">
                    <input _ngcontent-c0="" value="<c:out value="${abogado.persona.cedula}"></c:out>" class="form-control" name="cedula" placeholder="Cedula" type="text" required readonly>
                </div>

                <div class="form-group">
                    <input _ngcontent-c0=""  value="<c:out value="${abogado.persona.nombre}"></c:out>" class="form-control" name="nombre" placeholder="Nombre" type="text" required readonly>
                </div>

                <div class="form-group">
                    <input _ngcontent-c0="" value="<c:out value="${abogado.persona.correo}"></c:out>" class="form-control" name="correo" placeholder="Correo" type="text" required>
                </div>
                
                <div class="form-group">
                    <select  class="form-control" name="especializacion" readonly>
                      <option value="<c:out value="${abogado.especializacion}"></c:out>"><c:out value="${abogado.especializacion}"></c:out></option>
                      <option value="Civil">Civil</option>
                      <option value="Penal">Penal</option>
                      <option value="Fiscal">Fiscal</option>
                      <option value="Familiar">Familiar</option>
                      <option value="Laboral">Laborar</option>
                      <option value="Mercantil">Mercantil</option>
                      <option value="Sin Especialidad">Sin Especialidad</option>
                   </select>
                </div>

                <div class="form-group">
                   <input _ngcontent-c0="" value="<c:out value="${abogado.pass}"></c:out>" name="pass" type="password" placeholder="Contrase�a" class="form-control" required>
                </div>
                
                <input _ngcontent-c0=""  type="hidden" value="<c:out value="${abogado.estado}"></c:out>" class="form-control" name="estado" placeholder="" type="text" required>
                
                <input _ngcontent-c0=""  type="hidden" value="<c:out value="${abogado.foto}"></c:out>" class="form-control" name="foto" placeholder="" type="text" required>


  <p class="file-return" ></p>
                
                 <div class="form-group">
                  <div class="col-md-12 text-center">
                    <button  type="submit" name="accion" value="actualizar"  style="width: 40%;" class="btn btn-primary" >Actualizar</button>
                  </div>
                </div>
             
              </form>
              
            </div>
          </div><br>
      </div>

       
       
       
       
       
       
       
      <!-- End of Main Content -->

      <!-- Footer -->
      <footer class="sticky-footer bg-white" >
        <div class="container my-auto">
          <div class="copyright text-center my-auto">
            <span>Copyright &copy; Your Website 2020</span>
          </div>
        </div>
      </footer>
      <!-- End of Footer -->

    </div>
    <!-- End of Content Wrapper -->

  </div>
  <!-- End of Page Wrapper -->

  <!-- Scroll to Top Button-->
  <a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
  </a>

  <!-- Logout Modal-->
  

  <!-- Bootstrap core JavaScript-->
  <script src="../carpetaplantilla/vendor/jquery/jquery.min.js"></script>
  <script src="../carpetaplantilla/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Core plugin JavaScript-->
  <script src="../carpetaplantilla/vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Custom scripts for all pages-->
  <script src="../carpetaplantilla/js/sb-admin-2.min.js"></script>
  
  
  
  
  

</body>

<c:set var="msg" value="${abogadoA}"/>
  
    	<c:if test="${msg==1}">
	
	<script type="text/javascript">
	
	alertify.notify('Registro Exitoso', 'success', 5, function(){  console.log('dismissed'); });

	</script>
	<% session.setAttribute("abogadoA", null); %>
	 
		
	
	</c:if>
	
	<script type='text/javascript'> 
(function() { 
	if( window.localStorage ) { 
		if( !localStorage.getItem('9') ) { 
			localStorage['9'] = true; 
			window.location.reload(); 
		} else 
			localStorage.removeItem('9'); 
		
	} })(); </script> 
</html>
