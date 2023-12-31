﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="registrarse.aspx.cs" Inherits="MiBanco.pages.registrarse" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <script>
        function validarContrasena() {
            const contrasenaInput = document.getElementById('<%= txtcontrasenaCrear.ClientID %>');
            if (contrasenaInput) {
                const contrasena = contrasenaInput.value;
                const longitudValida = contrasena.length >= 10;
                const contieneMayuscula = /[A-Z]/.test(contrasena);
                const contieneNumero = /\d/.test(contrasena);
                const noConsecutivos = !/(.)\1{1,}/.test(contrasena);
                const mensajes = document.getElementsByClassName("mensaje");
                const mensaje = mensajes.length > 0 ? mensajes[0] : null;
                if (longitudValida && contieneMayuscula && contieneNumero && noConsecutivos) {
                    mensaje.innerHTML = "Contraseña válida";
                    mensaje.style.color = "green";
                } else {
                    mensaje.innerHTML = "La contraseña debe cumplir con los siguientes requisitos:<br>";
                    if (!longitudValida) {
                        mensaje.innerHTML += " - Debe tener al menos 10 caracteres<br>";
                    }
                    if (!contieneMayuscula) {
                        mensaje.innerHTML += " - Debe contener al menos una letra mayúscula<br>";
                    }
                    if (!contieneNumero) {
                        mensaje.innerHTML += " - Debe contener al menos un número<br>";
                    }
                    if (!noConsecutivos) {
                        mensaje.innerHTML += " - No debe tener caracteres consecutivos<br>";
                    }
                    mensaje.style.color = "red";
                }


                // Habilitar o deshabilitar el botón de envío
                const botonEnvio = document.getElementById('<%= btnCrearCuenta.ClientID %>');
                botonEnvio.disabled = !(longitudValida && contieneMayuscula && contieneNumero && noConsecutivos);
            }
        }
    </script>
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

 <%--   <link rel="stylesheet" href="../Content/loginstyle.css">--%>

    <style>
        .con {
            border: 2px dashed #ccc;
            padding: 20px;
            text-align: center;
            margin: 0 auto;
            width: 80%;
            border: 2px dotted  #f58809; /* Color del borde */
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
        <h1 style="color: #1a2954;">Crear Cuenta</h1>
    </div>
</div>

<div class="container con">
    <div class="row col-lg-12 col-sm-12 text-center">

        <div class="col-sm-12 col-lg-6 mt-2 form-group">
            <asp:Label ID="lblNombre" runat="server" AssociatedControlID="txtNombre" CssClass="form-label">Nombre</asp:Label>
            <asp:TextBox ID="txtNombre" runat="server" CssClass="form-control" AutoComplete="off" placeholder="Nombre"></asp:TextBox>
        </div>
        <div class="col-sm-12 col-lg-6 mt-2 form-group">
            <asp:Label ID="lblCorreoElectronico" runat="server" AssociatedControlID="txtCorreoElectronico" CssClass="form-label">Correo Electrónico</asp:Label>
            <asp:TextBox ID="txtCorreoElectronico" runat="server" CssClass="form-control" AutoComplete="off" placeholder="alguien@ejemplo.com"></asp:TextBox>
        </div>
        <div class="col-sm-6 col-lg-6 mt-2 form-group">
            <asp:Label ID="lblIdentificacion" runat="server" AssociatedControlID="txtIdentificacion" CssClass="form-label">Identificación</asp:Label>
            <asp:TextBox ID="txtIdentificacion" runat="server" CssClass="form-control" MaxLength="11" aria-describedby="idHelp"
                pattern="[0-9]{1}-[0-9]{4}-[0-9]{4}" placeholder="1-1111-1111" required="true"></asp:TextBox>
            <small id="idHelpIdentificacion" class="form-text text-muted">El formato debe ser #-####-####</small>
        </div>
        <div class="col-sm-6 col-lg-6 mt-2 form-group">
            <asp:Label ID="lblApellidos" runat="server" AssociatedControlID="txtApellidos" CssClass="form-label">Apellidos</asp:Label>
            <asp:TextBox ID="txtApellidos" runat="server" CssClass="form-control" AutoComplete="off" placeholder="Apellidos"></asp:TextBox>
        </div>
        <div class="col-sm-6 col-lg-6 mt-2 form-group">
            <asp:Label ID="lblContrasenaCrear" runat="server" AssociatedControlID="txtcontrasenaCrear" CssClass="form-label">Contraseña</asp:Label>
            <asp:TextBox ID="txtcontrasenaCrear" runat="server" TextMode="Password" CssClass="form-control" placeholder="Contraseña"
                MinLength="10" OnKeyUp="validarContrasena()" required="true"></asp:TextBox>
            <div>
                <span class="mensaje" style="color: red;"></span>
            </div>
        </div>
        

        <div class="col-sm-12 mt-12">
            <asp:Button disabled="true" ID="btnCrearCuenta" runat="server" Text="Crear Cuenta" CssClass="btn btn-primary btn-block"
                Style="height: 47px; margin-top: -2px; background: #1a2954; border-color: #1a2954;" OnClick="btnCrearCuenta_Click"  />
        </div>
    </div>
</div>

    


    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
        crossorigin="anonymous"></script>

</asp:Content>
