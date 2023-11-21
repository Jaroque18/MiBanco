
<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="MiBanco._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Bootstrap Icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Google fonts-->
        <link href="https://fonts.googleapis.com/css?family=Merriweather+Sans:400,700" rel="stylesheet" />
        <link href="https://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic" rel="stylesheet" type="text/css" />
    <header class="container-fluid py-5"> <!--style="background-color:  #f58809 !important;"-->
                <div class="container-fluid px-5">
                    <div class="row gx-5 align-items-center justify-content-center">
                        <div class="col-lg-8 col-xl-7 col-xxl-6">
                            <div class="my-5 text-center text-xl-start">
                                <asp:Label ID="lblTipoCambio" runat="server" CssClass="display-5 fw-bolder h2 mb-2" Text="USD 1 - CRC 568,7569"></asp:Label>

                                <p class="lead fw-normal h3 mt-3 mb-4">Puedes confiar en MiBanco ya que te brindamos el mejor servicio y privacidad. Ademas de contamos un enlace total con la aplicacion de TraveleNest</p>
                                <!--<div class="d-grid gap-3 d-sm-flex justify-content-sm-center justify-content-xl-start">
                                    <a class="btn btn-primary btn-lg px-4 me-sm-3" href="">Iniciar</a>
                                    <a class="btn btn-outline-light btn-lg px-4" href="">Mas Informacion</a>
                                </div>-->
                            </div>
                        </div>
                        
                        <div class="col-xl-5 col-xxl-6 d-none d-xl-block text-center"><img class="img-fluid rounded-3 my-5" src="img/miBanco.jpeg" " alt="..." /></div>
                    </div>
                </div>
            </header>
            
            <section class="py-5" id="features">
                <div class="container px-5 my-5">
                    <div class="row gx-5">
                        <div class="col-lg-4 mb-5 mb-lg-0"><h2 class="fw-bolder mb-0">Un poco de nosotros</h2></div>
                        <div class="col-lg-8">
                            <div class="row gx-5 row-cols-1 row-cols-md-2">
                                <div class="col mb-5 h-100">
                                    <h2 class="h5">Seguridad Avanzada</h2>
                                    <p class="mb-0">En MiBanco, la seguridad de tus finanzas es nuestra máxima prioridad. Implementamos tecnologías de encriptación de última generación y sistemas de monitoreo constante.</p>
                                </div>
                                <div class="col mb-5 h-100">
                                    <h2 class="h5">Soluciones Financieras Personalizadas</h2>
                                    <p class="mb-0">Nuestra oferta incluye una amplia gama de productos y servicios financieros diseñados para satisfacer tus necesidades individuales. Desde cuentas de ahorro hasta soluciones de inversión.</p>
                                </div>
                                <div class="col mb-5 mb-md-0 h-100">
                                    <h2 class="h5">Experiencia Digital Fluida</h2>
                                    <p class="mb-0">Con nuestra plataforma digital, tendrás acceso a tus cuentas en cualquier momento y lugar. Nuestro sistema de banca en línea es fácil de usar.</p>
                                </div>
                                <div class="col h-100">
                                    <h2 class="h5">Compromiso con el Cliente</h2>
                                    <p class="mb-0">En MiBanco, valoramos la confianza que depositas en nosotros. Nuestro equipo de atención al cliente está siempre disponible para ofrecerte asistencia personalizada.</p>
                                </div>
                                
                            </div>
                        </div>
                    </div>
                </div>
            </section>
  <!-- JavaScript -->
  <script src="https://code.jquery.com/jquery-3.5.1.js" integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script>  
  
</asp:Content>
