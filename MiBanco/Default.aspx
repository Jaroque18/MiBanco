<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="MiBanco._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <main>
        <link href="Content/loginstyle.css" rel="stylesheet" />
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
            integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">

        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css"
            integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA=="
            crossorigin="anonymous" referrerpolicy="no-referrer" />
        <script defer src="https://use.fontawesome.com/releases/v5.15.4/js/solid.js"
            integrity="sha384-/BxOvRagtVDn9dJ+JGCtcofNXgQO/CCCVKdMfL115s3gOgQxWaX/tSq5V8dRgsbc"
            crossorigin="anonymous"></script>
        <script defer src="https://use.fontawesome.com/releases/v5.15.4/js/fontawesome.js"
            integrity="sha384-dPBGbj4Uoy1OOpM4+aRGfAOc0W37JkROT+3uynUgTHZCHZNMHfGXsmmvYTffZjYO"
            crossorigin="anonymous"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" />
        <style>
            .form-group {
                text-align: center;
                margin-bottom: 5px;
            }

                .form-group input[type="text"],
                .form-group input[type="password"] {
                    margin: 0 auto;
                    display: block;
                }
        </style>
        <section class="form-01-main">
            <div>
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="form-sub-main">
                                <div class="custom-SobreNosotros text-center">
                                    <h2 style="color: black;">Bienvenido</h2>
                                    <hr class="divider" />
                                    <!--<img src="img/logo.PNG" />-->
                                </div>
                                <div>
                                    <p class="text-center" style="color: black;">Ingrese los Datos</p>
                                </div>
                                <div class="form-group">
                                    <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control _ge_de_ol" placeholder="Ingrese su Correo" Required="true"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <asp:TextBox ID="txtContrasena" runat="server" TextMode="Password" CssClass="form-control" placeholder="Contraseña" Required="true"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <div class="text-center">
                                        <p style="color: black;">
                                            ¿No Tiene Cuenta? <a style="color: blue;" href="crearcuenta.aspx">Crear Una</a>
                                        </p>
                                    </div>
                                </div>
                                <div class="form-group text-center">
                                    <div class="btn_uy">
                                        <asp:Button ID="btnIngresar" runat="server" CssClass="btn btn-primary" Text="Ingresar" />
                                    </div>
                                </div>
                                <div class="form-group text-center">
                                    <asp:Label ID="lblRol" runat="server" AssociatedControlID="ddlRol" CssClass="form-label">Rol</asp:Label>
                                    <asp:DropDownList ID="ddlRol" runat="server" CssClass="form-select" aria-label="Default select example">
                                        <asp:ListItem Value="Anfitrión">Anfitrión</asp:ListItem>
                                        <asp:ListItem Value="Huésped">Huésped</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>








        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
            crossorigin="anonymous"></script>
    </main>

</asp:Content>
