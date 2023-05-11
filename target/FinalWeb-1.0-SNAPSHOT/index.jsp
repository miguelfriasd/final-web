<%-- 
    Document   : index
    Created on : 1 may. 2023, 7:17:20
    Author     : mig_2
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Cerveza - Tierra Media</title>
        <link rel="icon" type="image/x-icon" href="assets/img/icon.png" />
        <!-- Font Awesome icons (free version)-->
        <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
        <!-- Google fonts-->
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Bilbo+Swash+Caps&display=swap" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Varela+Round" rel="stylesheet" />
        <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="css/styles.css" rel="stylesheet" />
        <link href="css/estilos.css" rel="stylesheet" />
        <script src="https://unpkg.com/scrollreveal"></script>
    </head>

    <nav class="navbar navbar-expand-lg navbar-dark fixed-top" id="#navbarNav" style="background-color: transparent;">
        <div class="container">
          
              <a class="navbar-brand" href="#">
                <img src="assets/img/iconoTM.png" alt="Logo" width="150x" height="40" class="d-inline-block align-text-top">
                
              </a>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse"   id="navbarCollapse">
            <ul class="navbar-nav ml-auto">
              <li class="nav-item active">
                <a class="nav-link" href="#about">Nosotros</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#projects">Cervezas</a>
              </li>
              <li class="nav-item">
                <a class="nav-link"  href="tienda.jsp">Tienda</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#signup">Suscribete</a>
              </li>
            </ul>
          </div>
        </div>
      </nav>
        
        <!-- Masthead-->
        <header class="masthead">
            <div class="container px-4 px-lg-5 d-flex h-100 align-items-center justify-content-center logos">
                <div class="d-flex justify-content-center">
                    <div class="text-center">
                        <img  src="assets/img/logoTM.png
                        " alt="">
                        <h1 class="text-white-50 mx-auto mt-2 mb-5">El sabor de la tierra media.</h1>
                        
                    </div>
                </div>
            </div>
        </header>
        <!-- About-->
        <section class="about-section text-center" id="about">
            <div class="container px-4 px-lg-5 cheve">
                <div class="row gx-4 gx-lg-5 justify-content-center">
                    <div class="col-lg-8">
                        <h2 class="text-white mb-4">Nuestra cerveza</h2>
                        <p class="text-white-50">
                            La cerveza artesanal tierra media es una cerveza elaborada cuidadosamente con técnicas tradicionales y con ingredientes seleccionados para recrear el sabor auténtico de la cerveza de la época medieval. Con su aroma y sabor intensos y complejos, esta cerveza ofrece una experiencia única que te transportará a la Edad Media. Ya sea que la disfrutes en un banquete, en una taberna o en tu propia casa, la cerveza artesanal con tema medieval es una elección perfecta para los amantes de la historia y la cerveza de calidad.
                          
                        </p>
                    </div>
                </div>
         
                
            </div>    
        </section>
       
        <!-- Projects-->
        <section class="projects-section bg-ligh" id="projects">
            <div class="container">
                <!-- Featured Project Row-->

                <!-- Project One Row-->
                <div class="row gx-0 mb-5 mb-lg-0 justify-content-center">
                    <div class="col-lg-6" id ="img1">                       
                        <img class="img-fluid cheve" src="assets/img/elfica.png" alt="Botella elfica" />                       
                    </div>
                    <div class="col-lg-6">
                        <div class="bg-black text-center h-100 project">
                            <div class="d-flex h-100">
                                <div class="project-text w-100 my-auto text-center text-lg-left infoelfica">
                                     <img src="assets/img/nameElfica.png" alt="elfica" width="100%"> </img>
                                    
                                    <p class="mb-0 text-white-50">Descubre nuestra cerveza estilo hefeweizen que evoca la magia de la fantasía. Elaborada con una mezcla de maltas de trigo y cebada, lúpulos cuidadosamente seleccionados y una cepa de levadura tradicional que le da un sabor a banana y clavo inconfundible. Esta cerveza artesanal tiene un contenido alcohólico de 5% por volumen. ¡Siente la magia y disfruta de nuestra cerveza artesanal élfica en cualquier momento y lugar!</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Project Two Row-->
                <div class="row gx-0 justify-content-center">
                    <div class="col-lg-6" id="img2">
                        <img class="img-fluid cheve"  src="assets/img/Enano.png" alt="..." /></div>
                    <div class="col-lg-6 order-lg-first">
                        <div class="bg-black text-center h-100 project">
                            <div class="d-flex h-100">
                                <div class="project-text w-100 my-auto text-center text-lg-right infoenano">
                                    <img src="assets/img/nameEnano.png" alt="enano" width="100%"> </img>
                                    <p class="mb-0 text-white-50">Descubre nuestra cerveza Enano estilo pale ale. Esta cerveza está elaborada con una combinación de maltas de cebada cuidadosamente seleccionadas y lúpulos aromáticos que le dan un sabor afrutado y refrescante con un toque de amargor. Con un contenido alcohólico de 5.5%, nuestra cerveza Enano es perfecta para cualquier ocasión.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                      <!-- Project thre Row-->
                      <div class="row gx-0 mb-5 mb-lg-0 justify-content-center">
                        <div class="col-lg-6" id ="img3">                       
                            <img class="img-fluid cheve" src="assets/img/orco.png" alt="..." />                       
                        </div>
                        <div class="col-lg-6">
                            <div class="bg-black text-center h-100 project">
                                <div class="d-flex h-100">
                                    <div class="project-text w-100 my-auto text-center text-lg-left infoelfica">
                                        <img src="assets/img/nameOrco.png" alt="orco" width="100%"> </img>
                                        <p class="mb-0 text-white-50">Descubre nuestra cerveza "Orco" estilo Hazy IPA y deja que tus sentidos se sumerjan en su deliciosa complejidad. Elaborada con una combinación de maltas de cebada, trigo y avena, junto con lúpulos aromáticos que le dan un sabor frutal y lupulado, nuestra cerveza Orco es la elección perfecta para aquellos que buscan una experiencia cervecera única. Con un contenido alcohólico de 6.5%, esta cerveza es una explosión de sabor que no querrás perderte.</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Project  four Row-->
                    <div class="row gx-0 justify-content-center">
                        <div class="col-lg-6" id="img4">
                            <img class="img-fluid cheve" src="assets/img/necromante.png" alt="..." /></div>
                        <div class="col-lg-6 order-lg-first">
                            <div class="bg-black text-center h-100 project">
                                <div class="d-flex h-100">
                                    <div class="project-text w-100 my-auto text-center text-lg-right infoenano">
                                        <img src="assets/img/nameNicromante.png" alt="enano" width="100%"> </img>
                                        <p class="mb-0 text-white-50">Descubre nuestra cerveza "Nigrogmante" estilo oatmeal stout. Esta cerveza está elaborada con una combinación de maltas de cebada, avena y trigo, que le dan una textura suave y cremosa, junto con lúpulos cuidadosamente seleccionados que le dan un sabor a café y chocolate con un toque de amargor. Con un contenido alcohólico de 5.8%, nuestra cerveza Nigrogmante es perfecta para aquellos que buscan una experiencia cervecera oscura y rica en sabor.</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
            </div>
            
        </section>
        <!-- Signup-->
        <section class="signup-section" id="signup">
            <div class="container px-4 px-lg-5 cheve">
                <div class="row gx-4 gx-lg-5">
                    <div class="col-md-10 col-lg-8 mx-auto text-center">
                        <i class="far fa-paper-plane fa-2x mb-2 text-white"></i>
                        <h1 class="text-white mb-5">Suscribete para recibir ofertas</h1>
                   
                        <form class="form-signup" id="contactForm" data-sb-form-api-token="API_TOKEN">
                            <!-- Email address input-->
                            <div class="row input-group-newsletter">
                                <div class="col"><input class="form-control" id="emailAddress" type="email" placeholder="Ingrese correo electronico..." aria-label="Enter email address..." data-sb-validations="required,email" /></div>
                                <div class="col-auto"><button class="btn btn-primary disabled" id="submitButton" type="submit">Suscribirse!</button></div>
                            </div>
                            <div class="invalid-feedback mt-2" data-sb-feedback="emailAddress:required">An email is required.</div>
                            <div class="invalid-feedback mt-2" data-sb-feedback="emailAddress:email">Email is not valid.</div>
                            <!-- Submit success message-->
                            <!---->
                            <!-- This is what your users will see when the form-->
                            <!-- has successfully submitted-->
                            <div class="d-none" id="submitSuccessMessage">
                                <div class="text-center mb-3 mt-2 text-white">
                                    <div class="fw-bolder">Subscripción completa!!</div>
                                    
                                </div>
                            </div>
                            <!-- Submit error message-->
                            <!---->
                            <!-- This is what your users will see when there is-->
                            <!-- an error submitting the form-->
                            <div class="d-none" id="submitErrorMessage"><div class="text-center text-danger mb-3 mt-2">Error sending message!</div></div>
                        </form>
                    </div>
                </div>
            </div>
        </section>
        <!-- Contact-->
        <section class="contact-section bg-black">
            <div class="container px-4 px-lg-5">
                
                </div>
                <div class="social d-flex justify-content-center">
                    <h1>Siguenos</h1>
                    <a class="mx-2" href="https://www.facebook.com/Cerveza-Tierra-Media-102205229325474" target="_blank"><i class="fab fa-facebook-f"></i></a>
                    <a class="mx-2" href="https://instagram.com/cerveza.tierramedia?igshid=YmMyMTA2M2Y=" target="_blank"><i class="fab fa-instagram"></i></a>
                </div>
            </div>
        </section>
        <!-- Footer-->
        <footer class="footer bg-black small text-center text-black-50"><div class="container px-4 px-lg-5">Copyright &copy; Cerveza Tierra Media 2023</div></footer>
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>

        <script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
        <script src="js/index.js"></script>
    </body>
</html>
