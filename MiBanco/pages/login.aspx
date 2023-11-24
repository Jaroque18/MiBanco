<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="MiBanco.pages.login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link href="Content/loginstyle.css" rel="stylesheet" />
    <script
  src="https://code.jquery.com/jquery-3.7.1.js"
  integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4="
  crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
     <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
     integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
     crossorigin="anonymous"></script>

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
        .con {
            border: 2px dashed #ccc;
            padding: 20px;
            text-align: center;
            margin: 0 auto;
            width: 80%;
            border: 2px dotted #f58809; /* Color del borde */
        }


        .form-group {
            display: flex;
            flex-direction: column;
            align-items: center;
            margin: 10px 0;
        }

        .form-label {
            margin-bottom: 5px;
        }

        .form-control {
            width: 100%;
            padding: 8px;
            box-sizing: border-box;
        }

        .inputfile {
            display: none;
        }

        /* Estilos para el contenedor personalizado */
        .custom-file-upload {
            position: relative;
        }

            /* Estilos para el botón personalizado */
            .custom-file-upload label {
                background-color: #7AB730;
                color: #fff;
                padding: 10px 15px;
                border-radius: 5px;
                cursor: pointer;
            }

        /* Estilos para el texto del nombre del archivo seleccionado */
        #selectedFileName {
            margin-top: 5px;
            display: block;
            font-style: italic;
        }

        body {
            background-color: #f9f9f9;
        }
    </style>
    <div class="container">
        <div class="row col-lg-12 col-sm-12 text-center">
            <h1 style="color: #f58809;">&nbsp;&nbsp;Iniciar Sesión</h1>
        </div>
    </div>
    <div class="con">


        <div class="col-sm-12 col-lg-12 mt-2 form-group">

            <asp:Label ID="lblCorreo" runat="server" AssociatedControlID="txtcorreo" CssClass="form-label">Correo Electrónico</asp:Label>
            <asp:TextBox ID="txtCorreo" runat="server" CssClass="form-control" autocomplete="off"></asp:TextBox>
        </div>

        <div class="col-sm-12 col-lg-12 mt-2 form-group">

            <asp:Label ID="lblContrasena" runat="server" AssociatedControlID="txtcontrasena" CssClass="form-label">Contraseña</asp:Label>
            <asp:TextBox ID="txtcontrasena" runat="server" TextMode="Password" CssClass="form-control" autocomplete="off"></asp:TextBox>
        </div>


        <div class="col-sm-12 col-lg-12 mt-2 form-group">
            <asp:Button ID="btnIniciarSesion" runat="server" Text="Iniciar Sesión" CssClass="btn btn-primary btn-block"
                Style="height: 44px; margin-top: -2px; background: #f58809; border-color: #f58809;" OnClick="btnIniciarSesion_Click" />
        </div>

        <div class="col-sm-12 col-lg-12 mt-2 form-group">
            <a href="pages/registrarse.aspx" class="btn btn-primary btn-block"
                style="height: 44px; margin-top: -2px; background: #f58809; border-color: #f58809;">Crear Cuenta
            </a>
        </div>
    </div>








   
</asp:Content>
